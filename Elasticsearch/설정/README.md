## ELK 환경 설정

- Elasticsearch, Logstash, Kibana 환경 설정 정리

---

### 📌 환경
- Ubuntu Server 20.04 LTS 
    - m2.c4m8 (4Core, 8GB)
- Docker 
- Elasticsearch 7.17.8v
- Logstash 7.17.8v
- Kibana 7.17.8v

---

### 📌 공통 환경 설정

1. ELK 이미지 pull
```
$ docker pull docker.elastic.co/elasticsearch/elasticsearch:7.17.8
$ docker pull docker.elastic.co/kibana/kibana:7.17.8
$ docker pull docker.elastic.co/logstash/logstash:7.17.8
```

2. docker-compose.yml
```yml
version: '2.2'
services:
  es01:
    image: docker.elastic.co/elasticsearch/elasticsearch:7.17.8
    container_name: es01
    environment:
      - node.name=es01
      - cluster.name=es-docker-cluster
      - discovery.seed_hosts=es02,es03
      - cluster.initial_master_nodes=es01,es02,es03
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
    ulimits:
      memlock:
        soft: -1
        hard: -1
    volumes:
      - data01:/usr/share/elasticsearch/data
    ports:
      - 9200:9200
    networks:
      - elastic
  es02:
    image: docker.elastic.co/elasticsearch/elasticsearch:7.17.8
    container_name: es02
    environment:
      - node.name=es02
      - cluster.name=es-docker-cluster
      - discovery.seed_hosts=es01,es03
      - cluster.initial_master_nodes=es01,es02,es03
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
    ulimits:
      memlock:
        soft: -1
        hard: -1
    volumes:
      - data02:/usr/share/elasticsearch/data
    networks:
      - elastic
  es03:
    image: docker.elastic.co/elasticsearch/elasticsearch:7.17.8
    container_name: es03
    environment:
      - node.name=es03
      - cluster.name=es-docker-cluster
      - discovery.seed_hosts=es01,es02
      - cluster.initial_master_nodes=es01,es02,es03
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
    ulimits:
      memlock:
        soft: -1
        hard: -1
    volumes:
      - data03:/usr/share/elasticsearch/data
    networks:
      - elastic

  logstash:
    image: docker.elastic.co/logstash/logstash:7.17.8
    container_name: logstash
    ports:
      - 5044:5044
      - 50000:50000/tcp
      - 50000:50000/udp
      - 9600:9600
    environment:
      LS_JAVA_OPTS: "-Xmx256m -Xms256m"
    networks:
      - elastic
    depends_on:
      - es01

  kibana:
    image: docker.elastic.co/kibana/kibana:7.17.8
    container_name: kibana
    environment:
      SERVER_NAME: kibana.example.org
      ELASTICSEARCH_HOSTS: '["http://es01:9200","http://es02:9200","http://es03:9200"]'
    ports:
      - 5601:5601
    networks:
      - elastic

volumes:
  data01:
    driver: local
  data02:
    driver: local
  data03:
    driver: local

networks:
  elastic:
    driver: bridge
```

3. docker-compose.yml 실행 
```
$ docker-compose up -d  // 실행
$ docker-compose down   // 종료
```

4. docker 명령어
```
$ docker ps -a                                   // docker list
$ docker exec -u 0 -it {image 이름} bash          // image에 관리자 권환으로 접근
$ docker exec -it {image 이름} bash               // image에 접근   
```

5. 관리자 권한에서 명령어 다운로드
```
// es01, es02, es03, kibana, logstash 내부에서 실행
$ apt-get update && apt-get install vim && apt-get install wget
```

----


### 📌 Elasticsearch 설정
- docker-compose.yml에서 지정한 3개의 Elasticsearch node에 모두 설정

1. Nori 분석기 설치
```
$ ./bin/elasticsearch-plugin install analysis-nori
```

2. Jaso 플러그인 설치
- Nori와 다르게 오픈소스 플러그인 사용
```
$ wget https://github.com/netcrazy/elasticsearch-jaso-analyzer/releases/download/v7.16.2/jaso-analyzer-plugin-7.16.2-plugin.zip
$ unzip jaso-analyzer-plugin-7.16.2-plugin.zip
$ vi plugin-descriptor.properties       // 버전 변경 (7.17.8로 변경)
$ zip jaso.zip elasticsearch-jaso-analyzer-7.16.2.jar log4j2.xml plugin-descriptor.properties
$ bin/elasticsearch-plugin install file:///usr/share/elasticsearch/jaso.zip     // 플러그인 설치
$ rm jaso-analyzer-plugin-7.16.2-plugin.zip
$ rm jaso.zip
$ rm elasticsearch-jaso-analyzer-7.16.2.jar
$ rm log4j2.xml
$ rm plugin-descriptor.properties
```

3. Linux 한국어 세팅
```
$ vim /etc/vim/vimrc

// 아래 내용을 파일 아래쪽에 입력 후 저장
set encoding=utf-8
set fileencodings=utf-8,cp949
```


4. 동의어 사전 세팅
```
$ cd config
$ mkdir analysis
$ vi book_pub_synonym.txt

// *.txt에 아래 내용과 같이 저장
java, 자바
spring, 스프링
정처기, 정보처리기사
```

---

### 📌 Logstash 설정

1. mysql-connector 다운
```
$ wget 'https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.18.tar.gz'
$ tar -xvf ./mysql-connector-java-8.0.18.tar.gz
$ rm -rf ./mysql-connector-java-8.0.18.tar.gz 
$ cp mysql-connector-java-8.0.18/mysql-connector-java-8.0.18.jar /usr/share/logstash/bin/{원하는경파일명}
$ mv ./mysql-connector-java-8.0.18/mysql-connector-java-8.0.18.jar ./lib/mysql-connector-java-8.0.18.jar 
$ rm -rf mysql-connector-java-8.0.18
```

--- 

### 📌 인덱스, logstash 설정

- 상품 인덱스
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

- 고객서비스 인덱스
```
PUT /book_pub_cs_dev
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
            "tokenizer": "jaso_search_tokenizer"
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
      "csid": {
        "type": "integer"
      },
      "cscodename": {
        "type": "keyword"
      },
      "cstitle": {
        "type": "keyword"
      },
      "cstitlejaso": {
        "type": "text",
        "analyzer": "suggest_index_analyzer"
      },
      "cstitlenori": {
        "type": "text",
        "analyzer": "nori_discard"
      },
      "cscontentjaso": {
        "type": "text",
        "analyzer": "suggest_index_analyzer"
      },
      "cscontentnori": {
        "type": "text",
        "analyzer": "nori_discard"
      },
      "cscategory": {
        "type": "keyword"
      },
      "csdate": {
        "type": "date"
      }
    }
  }
}
```

- 상품 Logstash
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

- 고객 서비스 Logstash
```
input {
  jdbc {
        jdbc_driver_library => "/usr/share/logstash/bin/book-pub/mysql-connector-java-8.0.18.jar"
        jdbc_driver_class => "com.mysql.cj.jdbc.Driver"
        jdbc_connection_string => "jdbc:mysql://133.186.151.141:3306/bookpub_shop_prod?serverTimezone=UTC"
        jdbc_user => "bookpub"
        jdbc_password => "3wX.DPUpjpdSn@d."
        use_column_value => true
        tracking_column => "cs.customer_service_number"
        last_run_metadata_path => "/usr/share/logstash/index_metadata/book_pub_cs_prod.dat"
        statement => "SELECT      cs.customer_service_number AS csid,
                                  csc.customer_service_state_code_info AS cscodename,
                                  cs.customer_service_title as cstitle,
                                  cs.customer_service_title as cstitlejaso,
                                  cs.customer_service_title as cstitlenori,
                                  cs.customer_service_content as cscontentjaso,
                                  cs.customer_service_content as cscontentnori,
                                  cs.customer_service_category as cscategory,
                                  cs.created_at as csdate
                        FROM customer_service AS cs
                        LEFT JOIN customer_service_state_code AS csc ON csc.customer_service_state_code_number = cs.customer_service_code_number
                      WHERE cs.customer_service_number >= :sql_last_value ORDER BY cs.customer_service_number ASC"
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
    index => "book_pub_cs_prod"
    document_id => "%{[@metadata][_id]}"
    doc_as_upsert => true
    action => update
  }
 stdout {
    codec => rubydebug
 }
}
```

