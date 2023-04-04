## Elasticsearch

프로젝트에서 검색 기능을 구현하는 과정을 기록
- 환경설정 참고 : [환경설정](https://github.com/unhas01/Book-Pub/tree/main/Elasticsearch/%EC%84%A4%EC%A0%95)
- 개념 설명 참고 : [이론](https://github.com/unhas01/Book-Pub/tree/main/Elasticsearch/%EC%9D%B4%EB%A1%A0)


----

### 📌 인덱스 생성

**인덱스 생성**
- 명령어는 `Kibana` console창에서 실행
- curl 명령어 혹은 PostMan 같은 툴 활용도 가능
```
PUT /book_pub_product_dev
{
  "settings": {
    "index": {
      "number_of_shards": 3,
      "number_of_replicas": 1,
      "analysis": {
        "filter": {
          "suggest_filter": {
            "type": "edge_ngram",
            "min_gram": 1,
            "max_gram": 50
          },
          "synonym_filter": {
            "type": "synonym",
            "synonyms_path": "analysis/book_pub_synonym.txt",
            "updateable": true
          }
        },
        "tokenizer": {
          "jaso_search_tokenizer": {
            "type": "jaso_tokenizer",
            "mistype": true,
            "chosung": false
          },
          "jaso_index_tokenizer": {
            "type": "jaso_tokenizer",
            "mistype": true,
            "chosung": true
          },
          "nori_t_discard": {
            "type": "nori_tokenizer",
            "decompound_mode": "discard"
          }
        },
        "analyzer": {
          "suggest_search_analyzer": {
            "type": "custom",
            "tokenizer": "jaso_search_tokenizer",
            "filter": [
              "synonym_filter"
            ]
          },
          "suggest_index_analyzer": {
            "type": "custom",
            "tokenizer": "jaso_index_tokenizer",
            "filter": [
              "suggest_filter",
              "remove_duplicates"
            ]
          },
          "nori_discard": {
            "tokenizer": "nori_t_discard",
            "filter": [
              "suggest_filter",
              "remove_duplicates"
            ]
          }
        }
      }
    }
  },
  "mappings": {
    "properties": {
      "id": {
        "type": "long"
      },
      "title": {
        "type": "keyword"
      },
      "titlenori": {
        "type": "text", 
        "analyzer": "nori_discard"
      },
      "titlejaso": {
        "type": "text", 
        "analyzer": "suggest_index_analyzer"
      },
      "salesprice": {
        "type": "long"
      },
      "salesrate": {
        "type": "integer"
      },
      "filepath": {
        "type": "keyword"
      }
    }
  }
}
```

---

### 📌 색인 Flow
- 색인(데이터가 들어온 후 처리되는 과정)에는 하나의 Flow가 존재

![image](https://user-images.githubusercontent.com/87689191/227094583-d0ac2d76-2e65-4139-8819-0709e2e4b98c.png)

1. 캐릭터 필터
    - HTML 문자 혹은 패턴을 줘서 처리하는 필터이지만 실질적으로 사용하지 않음
1. 토크나이저
    - 문자열을 토큰화 시켜주는 역할
1. 토큰 필터
    - 토큰화된 문자들을 한번더 처리해주는 역할

<br/>

**nori 토크나이저**
- 우선 default 토크타이저는 오직 공백을 기준으로 토큰화를 시켜줌

```
아버지가 방에 들어갑니다.
-> ['아버지가', '방에', '들어갑니다.']
```
이와 같이 3단어로 토큰화가 진행이 됨. 그렇기에 '아버지'라는 키워드 검색은 되지 않고 최소한 '아버지가'라는 키워드로 검색을 진행해야만 검색 결과가 나옴

Elasticsearch에서 지원해주는 `nori`플러그인을 사용해서 한글에 대해 형태소를 분석하면 해결이 가능

```
// nori 토크나이저 적용 후
['아버지', '가', '방', '에', '들어가', 'ㅂ니다.']
```

이렇게 한글에 형태소를 분석을 해줘서 색인을 시켜주기 때문에 이제는 '아버지'라는 키워드도 검색이 가능

**`decompound_mode`**
- `nori` 플러그인에 옵션 중 하나로써 복합 명사를 처리하는 방법
- Ex) `잠실역`은 `잠실` + `역`으로 이루어진 단어
- 3가지 값
    - `none` : 복합명사로 분리하지 않고 원본 단어를 색인
    - `discard` : 복합명사로 분리 후 원본 단어는 지움
    - `mixed` : 복합명사 분리 + 원본 단어 모두 색인

<br/>

**jaso 토크나이저**
- jaso 플러그인은 nori와 다르게 오픈소스 코드를 설치해서 사용해야 함
    - 설정.md에 기록
- jaso 플러그인은 오타 혹은 초성 검색을 가능하게 해주는 플러그인
    - 사용자의 실수로 인한 잘못된 검색어도 처리를 해줌
```
아이폰
['ㅇ', 'ㅇㅏ', 'ㅇㅏㅇ', 'ㅇㅏㅇㅣ', 'ㅇㅏㅇㅣㅍ', 'ㅇㅏㅇㅣㅍㅗ', 'ㅇㅏㅇㅣㅍㅗㄴ', 'd', 'dk', 'dkd', 'dkdl', 'dkdlv', 'dkdlvh', 'dkdlvhs', 'ㅇ', 'ㅇㅇ', 'ㅇㅇㅍ']
```

**옵션**
- `"mistype": true` : 오타 색인 설정 
- `"chosung": true` : 초성 색인 설정

<br/>

**토큰 필터**
- 토크나이저를 거친 단어들을 가지고 단어를 가공하는 필터
    1. ngram
    1. 동의어 사전

<br/>

**ngram**
- ngram은 말로 설명하는 것 보단 그림으로 보는게 이해가 더 쉬움

![image](https://user-images.githubusercontent.com/87689191/227098817-36142c5b-7539-4c5b-a7d0-54268ac5c67d.png)

<br/>

**동의어 사전**
- Java와 자바는 동일한 의미의 키워드를 가지고 있음
- 이를 처리해주기 위해 엘라스틱서치에서 동의어 사전을 제공
    - 동의어 사전 설정은 설정.md에 기록
- **검색 시점**에서 동의어 사전을 적용시켜서 같은 의미 단어를 가진 결과도 출력되도록 구현

---

### 📌 분석기
```
"analyzer": {
  "suggest_search_analyzer": {
    "type": "custom",
    "tokenizer": "jaso_search_tokenizer",
    "filter": [
      "synonym_filter"
    ]
  },
  "suggest_index_analyzer": {
    "type": "custom",
    "tokenizer": "jaso_index_tokenizer",
    "filter": [
      "suggest_filter",
      "remove_duplicates"
    ]
  },
  "nori_discard": {
    "tokenizer": "nori_t_discard",
    "filter": [
      "suggest_filter",
      "remove_duplicates"
    ]
  }
}
```

- 색인 시점에서는 `suggest_index_analyzer`, `nori_discard`을 정의
    - ngram과 중복제거 필터를 적용
- 검색 시점에서는 `suggest_search_analyzer`을 정의
    - 동의어 사전을 적용

---

### 📌 mappings

- mappings은 쉽게 생각하면 데이터베이스의 칼럼
- mapping 타입 종류
    - keyword
    - text
    - Integer
    - long
    - date
    - ...

<br/>

**`keyword` vs `text`**
- 문자열 타입에 2가지 종류가 있음
- `keyword`
    - 분석기를 거치지 않는 특징
    - 원문 데이터 그대로 색인
- `text`
    - 분석기를 정의하지 않으면 기본 분석기를 거침
    - 기본 분석기
        - 공백을 기준 토크나이저
        - lowercase

---

### 📌 검색

- 검색 방법인 총 2가지가 존재
    - URI 검색
        - `GET movie_search/_search?q=prdtYear:2018`
    - RequestBody 검색
        - ```
            POST movie_search/_search
            {
                "query": {
                    "query_string": {
                        "default_field": "movieNmEn",
                        "query": "Family"
                    }
                }
            }
          ```
- 당연히 Request Body를 사용 *(URI 검색은 조건이 붙으면 가독성이 떨어짐)*

<Br/>

**검색 쿼리**
```
POST /book_pub_product_dev/_search
{
  "query": {
    "multi_match": {
      "analyzer": "suggest_search_analyzer", 
      "query": "??",    // 검색어
      "fields": [
        "title",
        "titlenori",
        "titlejaso"
      ]
    }
  }
}
```

- `multi_match`를 사용해 하나의 검색어로 여러 필드를 검색
- 하나의 제목을 3개로 색인 시켜 3개 모두 검색

---

### 📌 검색 결과 구조

```
{
    "took": ,               // 쿼리를 실행한 시간
    
    "timed_out": ,          // 쿼리 시간이 초과할 경우을 표시
    
    "_shards": {
        "total": ,          // 쿼리를 요청한 전체 샤드의 개수
        "succeful": ,       // 검색 요청에 성공적으로 응답한 샤드의 개수
        "failed":           // 검색 요청에 실패한 샤드 개수
    },
    
    "hits": {
        "total": ,          // 검색어에 매칭된 문서의 전체 개수
        "max_score": ,      // 일치하는 문서의 스코어 값 중 가장 높은 값
        "hits": []          // 각 문서 정보와 스코어 값
    }
}
```


---

### 📌 정확도 계산
- 검색어를 가지고 검색 결과를 보여줄 때 순서도 중요
- 가장 근접한 결과를 가진 데이터를 상위에 노출시켜줘야 사용자 입장에서 편한데 Elasticsearch에서는 어떻게 순서를 정할까?

우선 검색 결과를 보면
```
{
  "took" : 4,
  "timed_out" : false,
  "_shards" : {
    "total" : 3,
    "successful" : 3,
    "skipped" : 0,
    "failed" : 0
  },
  "hits" : {
    "total" : {
      "value" : 1,
      "relation" : "eq"
    },
    "max_score" : 10.506616,
    "hits" : [
      {
        "_index" : "book_pub_product_dev",
        "_type" : "_doc",
        "_id" : "14",
        "_score" : 10.506616,
        "_source" : {
          "filepath" : "https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/adca866c-ad8e-443c-8f2c-8b201dbfdf34.png",
          "salesprice" : 26820,
          "salesrate" : 10,
          "title" : "AI 2041",
          "titlenori" : "AI 2041",
          "titlejaso" : "AI 2041",
          "id" : 14
        }
      }
    ]
  }
}
```
`_score`를 보면 10.506615를 볼 수 있는데 이 값을 가지고 순서를 매김

`BM25`알고리즘과 `TF/IDF` 알고리즘이 있는데 현재는 `BM25`알고리즘이 Default

<br/>

**TF/IDF**

![image](https://user-images.githubusercontent.com/87689191/227103112-4b96e35f-1540-46c3-940a-db241027f64b.png)

![image](https://user-images.githubusercontent.com/87689191/227103133-92fb0435-5ab5-43a4-9d47-dc99652fed0c.png)

- TF : Term Frequency로써 Term이 문서에 등장하는 횟수, 빈도수가 높을 수록 점수가 높아짐. 즉, 문서내에 같은 단어가 여러번 등장하면 그 단어에 가중치를 부여
- IDF : Inverse Document Frequency로써 DF의 반비례이다. 전체 문서에서 등장하는 텀의 빈도수가 작을수록 점수가 높아짐. 즉 여러 문서에 등장할 수록 낮은 가중치를 부여. (희귀한 Term에 더 높은 가중치를 줘야 함)
    - DF는 특정단어가 등장하는 문서의 수

<br/>

**BM25**

![image](https://user-images.githubusercontent.com/87689191/227103392-d5961c27-3b30-49a6-90b6-753d0bafbab5.png)

- Best Matching의 약자
- TF/IDF에서 문서 길이를 고려한 알고리즘
- TF/IDF는 문서길이가 길어지면 값이 계속 커지지만 BM25는 값이 점점 수렴해지기 때문에 좀 더 계산이 정확
- TF, IDF, Field Lengh를 가지고 계산

---

### 📌 Spring boot에서 검색 구현 코드

- 모든 코드는 Team Project 코드에 있음
    - [Book-Pub](https://github.com/NHN-BookPub)
- Spring Boot에 Elasticsearch 라이브러리가 있는것을 알지만 사용방법을 몰라서 REST API 방식으로 구현함


<Br/>

**Adaptor**

- RestTemplate을 사용해서 Elasticsearch 서버로 API 호출
- kibana console창에서 명령어 문자열을 그대로 사용

```java
@Override
public String requestSearchProduct(String keyword) {
    String url = UriComponentsBuilder.fromHttpUrl(
                    elasticConfig.getUrl() + "/" + elasticConfig.getProductIndexName() + "/_search")
            .encode()
            .toUriString();

    String body = "{\n" +
            "    \"query\": {\n" +
            "        \"multi_match\": {\n" +
            "            \"analyzer\": \"suggest_search_analyzer\",\n" +
            "            \"query\": \"" + keyword + "\",\n" +
            "            \"fields\": [\n" +
            "                \"title\",\n" +
            "                \"titlenori\",\n" +
            "                \"titlejaso\"\n" +
            "            ]\n" +
            "        }\n" +
            "    }\n" +
            "}";

    HttpHeaders headers = new HttpHeaders();
    headers.setContentType(MediaType.APPLICATION_JSON);
    headers.setAccept(List.of(MediaType.APPLICATION_JSON));

    return restTemplate.exchange(
            url,
            HttpMethod.POST,
            new HttpEntity<>(body, headers),
            String.class
    ).getBody();
}
```


**Service**

```java
@Override
public List<ProductSearchResultDto> searchProduct(String keyword) {
    objectMapper = new ObjectMapper();
    objectMapper.enable(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
    objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

    ProductResponseHit productHit;
    String result = elasticAdaptor.requestSearchProduct(keyword);

    try {
        productHit = objectMapper.readValue(result, ProductResponseHit.class);
    } catch (JsonProcessingException e) {
        throw new ServerErrorException();
    }

    List<ProductSearchResultDto> searchResult = new ArrayList<>();

    for (int i = 0; i < productHit.getHits().getHits().size(); i++) {
        searchResult.add(new ProductSearchResultDto(
                productHit.getHits().getHits().get(i).get_source().get(0).getId(),
                productHit.getHits().getHits().get(i).get_source().get(0).getTitle(),
                productHit.getHits().getHits().get(i).get_source().get(0).getSalesprice(),
                productHit.getHits().getHits().get(i).get_source().get(0).getSalesrate(),
                productHit.getHits().getHits().get(i).get_source().get(0).getFilepath()
        ));
    }

    return searchResult;
}

// dto Class
@Getter
@Setter
public class ProductHit {
    private List<Hits> hits;

    @Getter
    @Setter
    public static class Hits {
        private List<ProductInfo> _source = new ArrayList<>();
    }

    @Getter
    @Setter
    public static class ProductInfo {
        private Long id;
        private String title;
        private Long salesprice;
        private Integer salesrate;
        private String filepath;
    }
}
```

- Service 코드와 DTO 클래스가 깔금한 코드는 아닌 것을 볼 수 있음
- 위의 정확도 계산에서 보여줬던 결과를 보면 저 결과 값을 parsing 하는 과정을 직접 구현하느라 코드가 깨끗하진 않음
    - getHits()에 getHits()에 get()에 get_source() ....

---

### 📌 Logstash

- Elasticsearch에 데이터를 어떻게 넣어줘야 하나?
    - 하나씩 손수
    - Bulk insert
- 위 방법은 비효율적일 것
- logstash가 이를 해결

```
입력(Inputs)  ➡️  필터(Filters)  ➡️  출력(Outputs)
```

MySQL connector를 활용해 DB에서 데이터를 가져오면 됩니다.

```
input {
  jdbc {
        jdbc_driver_library => "/usr/share/logstash/bin/book-pub/mysql-connector-java-8.0.18.jar"
        jdbc_driver_class => "com.mysql.cj.jdbc.Driver"
        jdbc_connection_string => "jdbc:mysql://133.186.151.141:3306/bookpub_shop_dev?serverTimezone=UTC"
        jdbc_user => "bookpub"
        jdbc_password => "3wX.DPUpjpdSn@d."
        use_column_value => true
        tracking_column => "p.product_number"
        last_run_metadata_path => "/usr/share/logstash/index_metadata/book_pub_product_dev.dat"
        statement => "SELECT      p.product_number AS id,
                                  p.product_title AS title,
                                  p.product_title AS titlejaso,
                                  p.product_title AS titlenori,
                                  p.product_sales_price AS salesprice,
                                  p.product_sales_rate AS salesrate,
                                  f.file_path AS filepath
                      FROM product AS p
                      LEFT JOIN file AS f on f.product_number = p.product_number
                      WHERE p.product_number >= :sql_last_value AND f.file_category = 'thumbnail' OR f.file_category is null ORDER BY p.product_number ASC"
        schedule => "* * * * *"
 }
}

filter {
  mutate {
    copy => { "id" => "[@metadata][_id]"}
    remove_field => ["@version", "@timestamp"] }
}

output {
  elasticsearch {
    hosts => ["133.186.210.108:9200"]
    index => "book_pub_product_dev"
    document_id => "%{[@metadata][_id]}"
    doc_as_upsert => true
    action => update
  }
 stdout {
    codec => rubydebug
 }
}
```

프로젝트에서 적용한 logstash입니다. input부터 하나씩 보겠습니다.

<br>
<br>

**input**

```
input {
  jdbc {
        jdbc_driver_library => "/usr/share/logstash/bin/book-pub/mysql-connector-java-8.0.18.jar"
        jdbc_driver_class => "com.mysql.cj.jdbc.Driver"
        jdbc_connection_string => "jdbc:mysql://133.186.151.141:3306/bookpub_shop_dev?serverTimezone=UTC"
        jdbc_user => "bookpub"
        jdbc_password => "3wX.DPUpjpdSn@d."
        use_column_value => true
        tracking_column => "p.product_number"
        last_run_metadata_path => "/usr/share/logstash/index_metadata/book_pub_product_dev.dat"
        statement => "SELECT      p.product_number AS id,
                                  p.product_title AS title,
                                  p.product_title AS titlejaso,
                                  p.product_title AS titlenori,
                                  p.product_sales_price AS salesprice,
                                  p.product_sales_rate AS salesrate,
                                  f.file_path AS filepath
                      FROM product AS p
                      LEFT JOIN file AS f on f.product_number = p.product_number
                      WHERE p.product_number >= :sql_last_value AND f.file_category = 'thumbnail' OR f.file_category is null ORDER BY p.product_number ASC"
        schedule => "* * * * *"
 }
}
```

* 위 5개 `mysql-connector-java` 세팅
* `use_column_value` : `:sql_last_value` 사용 가능
* `tracking_column` : 어디까지 조회했는지에 추적할 카럼 (보통 기본키)
* `last_run_metadata_path` : 어디까지 조회했는지에 정보를 저장할 경로
* `statement` : 실행할 sql문 (생성한 인덱스에 맞게 칼럼들을 가져오면 됨)

**`filter`**

```
filter {
  mutate {
    copy => { "id" => "[@metadata][_id]"}
    remove_field => ["@version", "@timestamp"] }
}
```

* `copy` : id값을 복사
* `remove_field` : 불필요한 필드 제거

**`output`**

```
output {
  elasticsearch {
    hosts => ["133.186.210.108:9200"]
    index => "book_pub_product_dev"
    document_id => "%{[@metadata][_id]}"
    doc_as_upsert => true
    action => update
  }
 stdout {
    codec => rubydebug
 }
}
```

* `hosts` : ElasticSearch 주소
* `index` : 정보를 저장할 인덱스 명
* `document_id` : 문서 아이디
* `doc_as_upsert` : 문서가 새로운 경우 새로 생성
* `action` : update

<br/>

**설정**
1. mysql-connector 설치
```
wget 'https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.18.tar.gz'
tar -xvf ./mysql-connector-java-8.0.18.tar.gz
rm -rf ./mysql-connector-java-8.0.18.tar.gz 
cp mysql-connector-java-8.0.18/mysql-connector-java-8.0.18.jar /usr/share/logstash/bin/”원하는경파일명”

mv ./mysql-connector-java-8.0.18/mysql-connector-java-8.0.18.jar ./lib/mysql-connector-java-8.0.18.jar 

rm -rf mysql-connector-java-8.0.18
```
2. dat 파일 생성
```
$ mkdir index_metadata
$ cd index_metadata
$ vi book-pub-product.dat

--- 1   // 입력 후 저장

$ chmod 777 book-pub-product.dat
```
3. 임시 파일 생성
```
$ mkdir book-pub-tmp
```
4. conf파일 실행
```
$ ./bin/logstash --path.data ./book-pub-tmp -f ./config/book-pub.conf
```

<Br/>

`./config/pipeline.yml` 파일에 등록시켜 여러 `*.conf`을 실행시키는게 정석이라고 봤지만 무슨 이유에서인지 잘 안되서 하나의 `conf`를 바로 실행시키는것으로 구현




