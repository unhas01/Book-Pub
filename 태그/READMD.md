## 태그

상품별 태그들을 적용시키기 위한 CRUD 과정

----

### 📌 태그 등록

- 관리자만이 태그를 등록 가능
    - 관리자 인증은 **인증/인가**에서 처리

<img width="455" alt="image" src="https://user-images.githubusercontent.com/87689191/227702672-ffc10a99-10d5-4f98-944c-05b1c19d6523.png">

ERD를 보면 `태그이름`, `태그색상코드`만을 칼럼으로 가지는 간단한 설계

<br/>

<img width="519" alt="image" src="https://user-images.githubusercontent.com/87689191/227702751-250e399f-61ad-495e-8c75-0dce1495faa2.png">

- 모달 창을 띄워서 등록에 필요한 정보들을 입력 받음

```html
<input type="text" class="form-control" id="addColorCode" placeholder="#FFFFFF" name="addColorCode" pattern="#([a-fA-F0-9]{6})" required>
```

```java
@Pattern(regexp = "#([a-fA-F0-9]{6})", message = "지원하지 않는 색상 코드입니다.")
private String addColorCode;
```
- Front와 Back API 서버에서 모두 정규식 표현을 사용해서 Validation 처리

---

### 📌 태그 수정

- 관리자만이 태그 수정 가능

<img width="534" alt="image" src="https://user-images.githubusercontent.com/87689191/227703259-23ef5a6f-8b2a-49eb-9d06-5f9a45fa9e76.png">

- 모달창을 띄워서 수정에 필요한 정보를 입력받고 수정
- 등록과 비슷한 방식으로 처리

---

### 📌 태그 조회

<img width="1195" alt="image" src="https://user-images.githubusercontent.com/87689191/227703624-b92c07e4-5c12-40d2-bf3e-d06d0d13a20c.png">

```html
<div th:style="|background-color: ${tag.colorCode}|">
    <span th:text="${tag.tagName}"/>
</div>
```

- thymeleaf 문법을 활용해서 등록에 사용했던 컬러코드값을 활용해서 색 표시
    - Main 페이지(상품 조회) 화면에서 태그 컬러는 표현하지 못함

