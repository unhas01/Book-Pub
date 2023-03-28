## 데이터베이스

프로젝트에서 사용했던 데이베이스와 관련 있는 내용을 기록한 곳

요구사항에 맞게 약 프로젝트 첫 주 5~6일 동안 테이블 설계, 수정을 팀원들과 회의를 통해 ERD를 설계 진행

![image](https://user-images.githubusercontent.com/87689191/225213809-640d962e-ff93-47c9-aa0a-79b8151fe574.png)

ERD 버전 관리를 통해 개발 단계에서 변경 내용을 저장해서 롤백이 가능하도록 기록  
초기 데이터를 관리해서 언제든지 DB를 밀어도 다시 데이터를 넣어야 하는 일을 줄임

<br/>

**최종 ERD**

![북펍-쇼핑몰 배포v](https://user-images.githubusercontent.com/87689191/225213097-0343fdc9-e1fb-4d68-87e7-9f9bf3641f55.png)


<br/>


**최종 스크립트**
- DDL : https://github.com/unhas01/Book-Pub/blob/main/DB/Book-Pub_DDL.sql
- 초기 데이터 : https://github.com/unhas01/Book-Pub/blob/main/DB/Book-Pub_init_data.sql

<br/>

### 📌 사용 Tool
- MySQL (8.0.25v)
- MySQL Workbench
- DataGrip
- ERD Cloud

---

### 📌 Datasource
- dbcp2 사용
- KeyManager를 사용해서 접속 정보를 암호화

```properties
# mysql 정보
mysql.url=32cfb4c49d9f4636aac27dfedf8479d9
mysql.userName=14d5e60c88194b5191e081e6f89825a6
mysql.password=475300e7ac794020a148751bd3e18497
mysql.initialSize=2
mysql.maxTotal=2
mysql.minIdle=0
mysql.maxIdle=2
mysql.maxWait=1000
```

```java
package com.nhnacademy.bookpubshop.config;

import java.util.Properties;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

@Slf4j
@Configuration
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "mysql")
public class DataSourceConfig {
    private final KeyConfig keyConfig;

    private String url;
    private String userName;
    private String password;
    private Integer initialSize;
    private Integer maxTotal;
    private Integer minIdle;
    private Integer maxIdle;
    private Integer maxWait;

    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();

        dataSource.setDriverClassName(com.mysql.cj.jdbc.Driver.class.getName());
        dataSource.setUrl(keyConfig.keyStore(url));
        dataSource.setUsername(keyConfig.keyStore(userName));
        dataSource.setPassword(keyConfig.keyStore(password));

        dataSource.setInitialSize(initialSize);
        dataSource.setMaxTotal(maxTotal);
        dataSource.setMinIdle(minIdle);
        dataSource.setMaxIdle(maxIdle);

        dataSource.setMaxWaitMillis(maxWait);

        dataSource.setTestOnBorrow(true);
        dataSource.setTestOnReturn(true);
        dataSource.setTestWhileIdle(true);

        return dataSource;

    }

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource) {
        LocalContainerEntityManagerFactoryBean emf = new LocalContainerEntityManagerFactoryBean();
        emf.setDataSource(dataSource);
        emf.setPackagesToScan("com.nhnacademy.bookpubshop");
        emf.setJpaVendorAdapter(jpaVendorAdapters());
        emf.setJpaProperties(jpaProperties());

        return emf;
    }

    private JpaVendorAdapter jpaVendorAdapters() {
        HibernateJpaVendorAdapter hibernateJpaVendorAdapter = new HibernateJpaVendorAdapter();
        hibernateJpaVendorAdapter.setDatabase(Database.MYSQL);
        return hibernateJpaVendorAdapter;
    }

    private Properties jpaProperties() {
        Properties jpaProperties = new Properties();
        jpaProperties.setProperty("hibernate.show_sql", "true");
        jpaProperties.setProperty("hibernate.highlight_sql", "true");
        jpaProperties.setProperty("hibernate.format_sql", "true");

        return jpaProperties;
    }

    @Bean
    public PlatformTransactionManager transactionManager(
            EntityManagerFactory entityManagerFactory) {
        JpaTransactionManager transactionManager = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(entityManagerFactory);

        return transactionManager;
    }


    public KeyConfig getKeyConfig() {
        return keyConfig;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getInitialSize() {
        return initialSize;
    }

    public void setInitialSize(Integer initialSize) {
        this.initialSize = initialSize;
    }

    public Integer getMaxTotal() {
        return maxTotal;
    }

    public void setMaxTotal(Integer maxTotal) {
        this.maxTotal = maxTotal;
    }

    public Integer getMinIdle() {
        return minIdle;
    }

    public void setMinIdle(Integer minIdle) {
        this.minIdle = minIdle;
    }

    public Integer getMaxIdle() {
        return maxIdle;
    }

    public void setMaxIdle(Integer maxIdle) {
        this.maxIdle = maxIdle;
    }

    public Integer getMaxWait() {
        return maxWait;
    }

    public void setMaxWait(Integer maxWait) {
        this.maxWait = maxWait;
    }
}
```
