## JPA Auditing

Entity 매핑에 중복이 되는 칼럼 생성시간, 수정시간 등등을 공통으로 관리하기 위한 기술

---

### 📌 사용

1. 생성시간을 가지고 있는 데이터베이스 테이블 준비

![Frame 8](https://user-images.githubusercontent.com/87689191/229695879-b29ff29b-77f8-47e6-a327-bb5eea4cd191.png)

2. BaseCreateTimeEntity **추상 클래스** 작성

```java
@Getter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseCreateTimeEntity {

    @CreatedDate
    @Column(updatable = false, name = "created_at")
    private LocalDateTime createdAt;
}
```
- `@MappedSuperclass`
    - Entity 클래스를 상속을 받기 위한 어노테이션
- `@EntityListeners`
    - JPA Entity를 DB에 적용하기 전, **콜백 메서드** 제공
    - Auditing을 수행하기 위해 AuditingEntityListener 지정
- `@CreatedDate`
    - Entity가 생성된 시간을 사용
- `updatable = false`  
    - 생성시간은 절대 변하면 안되기 때문에 혹시 모를 상황을 대비해 false로 설정
- `name = "created_at"`
    - 데이터베이스의 칼럼의 모든 이름은 created_at으로 설정을 해줘야함

생성시간을 제외하고도 지원해주는 어노테이션은 많음
- `@CreatedBy` : 생성시 누가 생성한지 기록
- `@LastModifiedDate` : 수정될 경우 수정 시간 기록
- `@LastModifiedBy` : 수정될 경우 누가 수정한지 기록


3. Entity 매핑
- 위에서 정의한 추상 클래스를 확장만 시켜주면 끝

```java
@Getter
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "payment")
public class Payment extends BaseCreateTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_number")
    private Long paymentNo;

    @NotNull
    @OneToOne
    @JoinColumn(name = "order_number")
    private BookpubOrder order;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "payment_state_code_number")
    private PaymentStateCode paymentStateCode;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "payment_type_state_code_number")
    private PaymentTypeStateCode paymentTypeStateCode;

    @Column(name = "approved_at")
    private LocalDateTime approvedAt;

    @Column(name = "payment_cancel_reason")
    private String paymentCancelReason;

    @Column(name = "payment_key")
    private String paymentKey;

    @Column(name = "receipt")
    private String receipt;

    ...
}
```

4.  **Main**에 `@EnableJpaAuditing` 어노테이션 부착
```java
@EnableJpaAuditing
@SpringBootApplication
public class BookpubShopApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookpubShopApplication.class, args);
    }

}
```

---

### 📌 번외
Controller 계층 테스트코드를 작성하는 과정에서 Auditing적용 으로 생긴 오류
- 테스트 클래스에 `@MockBean(JpaMetamodelMappingContext.class)`을 지정해주면 해결 가능
