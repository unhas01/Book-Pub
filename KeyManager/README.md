## Key Manager

### 📌 키 매니저? 
- 데이터베이스, Redis 등등 접속 정보를 `properties`에 저장해놓고 사용
    - 하지만 접속 정보가 노출이 될 가능성이 있음
- Secure Key Manager를 사용해서 기밀 데이터를 관리하면 안전!

<br/>


### 📌 Secure Key Manager 사용 코드
- NHN Cloud에서 제공하는 Secure Key Manager를 사용
- 클라이언트 인증서를 새로 생성(*.p12)
- 키를 등록 후 사용

<br/>

application.properties
```properties
# key manager 정보
keymanager.password=bookpub123!@#
keymanager.appkey=500rMJPT021TnyNl
keymanager.url=https://api-keymanager.nhncloudservice.com
keymanager.path=/keymanager/v1.0/appkey/{appkey}/secrets/{keyid}
```

KeyConfig
```java
@Getter
@Setter
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "keymanager")
public class KeyConfig {

    private String password;
    private String appKey;
    private String url;
    private String path;

    public String keyStore(String keyId) {
        try {
            KeyStore clientStore = KeyStore.getInstance("PKCS12");
            InputStream result = new ClassPathResource("book-pub.p12").getInputStream();
            clientStore.load(result, password.toCharArray());

            SSLContext sslContext = SSLContextBuilder.create()
                    .setProtocol("TLS")
                    .loadKeyMaterial(clientStore, password.toCharArray())
                    .loadTrustMaterial(new TrustSelfSignedStrategy())
                    .build();

            SSLConnectionSocketFactory sslConnectionSocketFactory =
                    new SSLConnectionSocketFactory(sslContext);
            CloseableHttpClient httpClient = HttpClients.custom()
                    .setSSLSocketFactory(sslConnectionSocketFactory)
                    .build();

            HttpComponentsClientHttpRequestFactory requestFactory =
                    new HttpComponentsClientHttpRequestFactory(httpClient);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.setAccept(List.of(MediaType.APPLICATION_JSON));

            RestTemplate restTemplate = new RestTemplate(requestFactory);

            URI uri = UriComponentsBuilder
                    .fromUriString(url)
                    .path(path)
                    .encode()
                    .build()
                    .expand(appKey, keyId)
                    .toUri();
            return Objects.requireNonNull(restTemplate.exchange(uri,
                                    HttpMethod.GET,
                                    new HttpEntity<>(headers),
                                    KeyResponseDto.class)
                            .getBody())
                    .getBody()
                    .getSecret();
        } catch (KeyStoreException | IOException | CertificateException
                 | NoSuchAlgorithmException
                 | UnrecoverableKeyException
                 | KeyManagementException e) {
            throw new KeyMangerException(e.getMessage());
        }
    }
}
```

<br/>

**예시**

Key Manager에 키 등록 예시 사진
<img width="852" alt="image" src="https://user-images.githubusercontent.com/87689191/225539092-b4ea6395-2d8d-49f3-ae6e-a3a5d3a17580.png">

application.properties
```properties
mysql.url=32cfb4c49d9f4636aac27dfedf8479d9
mysql.userName=14d5e60c88194b5191e081e6f89825a6
mysql.password=475300e7ac794020a148751bd3e18497
```

DataSourceConfig 중 일부
```java
dataSource.setUrl(keyConfig.keyStore(url));
dataSource.setUsername(keyConfig.keyStore(userName));
dataSource.setPassword(keyConfig.keyStore(password));
```

---

### 📌 Key Manager 적용 Flow 정리

1. *.p12 (인증서)를 생성
2. 기밀화가 필요한 정보들을 키로 등록
3. Secure Key Manager에 정보 조회
    1. `application.properties`에 암호화 된 값을 저장
    2. `KeyConfig`의 `keyStore()`함수를 통해 NHN Cloud API 호출
    3. 암호화 된 값으로 기존의 값을 획득


----

### 📌 결과

**Key Manager 적용 전**
```properties
mysql.url=jdbc:mysql://133.186.151.141:3306/final_exam7
mysql.userName=final_exam7
mysql.password=0t@Wy_9C7IZQTLpP
mysql.initialSize=2
mysql.maxTotal=2
mysql.minIdle=0
mysql.maxIdle=2
mysql.maxWait=1000
```

**Key Manager 적용 후**
```properties
mysql.url=32cfb4c49d9f4636aac27dfedf8479d9
mysql.userName=14d5e60c88194b5191e081e6f89825a6
mysql.password=475300e7ac794020a148751bd3e18497
mysql.initialSize=2
mysql.maxTotal=2
mysql.minIdle=0
mysql.maxIdle=2
mysql.maxWait=1000
```
