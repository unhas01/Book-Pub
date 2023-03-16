## 장바구니

### 📌 Flow

1. 홈페이지 방문시 Cookie 생성
    - `CART` 이름, value는 UUID 문자열

```java
if (Objects.isNull(cookie)) {
    CookieUtil.makeCookie(response, CART_COOKIE, UUID.randomUUID().toString());
}

Cookie cookie = new Cookie(key, value);
cookie.setMaxAge(-1);
cookie.setPath("/");
response.addCookie(cookie);
```

<img width="200" alt="image" src="https://user-images.githubusercontent.com/87689191/225546057-f38c0c3a-073e-46a4-887a-6df2f137fe32.png">

2. 상품 조회 페이지에서 장바구니 담기를 클릭 시 정보가 저장
    1. 품절 상품인지 체크
    2. 품절이 아닌 경우 모달창을 띄워 확인 여부를 체크
    3. ajax를 사용해 상품 번호를 Redis에 저장
    4. Redis의 `Set()` 자료구조를 사용해서 중복 방지
    5. 1번 과정에서 생성한 쿠키의 value가 Redis 키가 되고 Redis엔 `상품 번호`가 저장

```javascript
else if (productSaleState === '품절') {
    Swal.fire({
        icon: 'info',
        title: '품절된 상품입니다.',
        text: '위시리스트 등록후 알림 신청을 해보세요'
    })
} else {
    Swal.fire({
        title: '카트에 담으시겠습니까?',
        icon: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '확인',
        cancelButtonText: '취소'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                timer: 10000,
                icon: 'success',
                title: '상품이 카트에 담겼습니다.',
                text: '즐거운 쇼핑 되세요~',
                showConfirmButton: false
            })

            $.ajax({
                type: "post",
                async: false,
                url: "/cart",
                data: {"productNo": productNo},
                dataType: "json"
            })
        }

        location.reload();
    })
}
```

```java
@PostMapping
public @ResponseBody Object addProductToCart(@CookieValue(name = CART_COOKIE) Cookie cookie,
                                                Long productNo) {
    redisTemplate.opsForSet().add(cookie.getValue(), productNo);

    return productNo;
}
```

<br/>

**장바구니 담기 버튼 클릭**


<img width="1237" alt="Screenshot 2023-03-16 at 4 51 44 PM" src="https://user-images.githubusercontent.com/87689191/225551199-494c78c5-fdfc-4622-b045-5402d4627059.png">

**Redis 결과**

![Screenshot 2023-03-16 at 4 56 14 PM](https://user-images.githubusercontent.com/87689191/225551250-59d141d5-9cc3-4f2e-b70d-e3891e35e0f1.png)


3. 장바구니 화면
    1. 2번 과정에서 Redis에 저장한 상품번호를 전부 가져옴 (Redis Key는 `CART`쿠키의 value)
    2. 상품 번호를 가지고 Shop-API 서버에 API 호출

```java

@GetMapping
public String cartView(@CookieValue(name = CART_COOKIE, required = false) Cookie cookie,
                        Model model) {
    if (Objects.nonNull(cookie)) {
        Set<Object> objects = redisTemplate.opsForSet().members(cookie.getValue());

        List<Long> productNos = new ArrayList<>();

        if (Objects.nonNull(objects)) {
            for (Object object : objects) {
                productNos.add(Long.valueOf(object.toString()));
            }
        }

        cartUtils.getCountInCart(cookie.getValue(), model);

        List<GetProductDetailResponseDto> products =
                productService.findProductInCart(productNos);
        model.addAttribute("products", products);
    }

    return "cart/shoppingCart";
}
```

**장바구니 View**

![image](https://user-images.githubusercontent.com/87689191/225552798-56de5f44-c48a-48ef-af81-e45a953cbdb0.png)

4. 현재 담긴 장바구니 count 
    1. 메인페이지를 비롯한 모든 Header(HTML)에 현재 담긴 장바구니 개수를 표시
    2. `size()` 함수를 사용해서 개수를 가져옴

```java
public void getCountInCart(String redisKey, Model model) {
    Long count;
    if (Objects.isNull(redisTemplate.opsForSet().size(redisKey))) {
        count = 0L;
    } else {
        count = redisTemplate.opsForSet().size(redisKey);
    }

    model.addAttribute("cartCount", count);
}
```

5. 장바구니 상품 삭제
    1. `remove()` 함수로 해당 상품 번호의 상품을 Redis에서 삭제

```java
@PostMapping("/{productNo}")
public String deleteProductInCart(@PathVariable("productNo") Long productNo,
                                    @CookieValue(name = CART_COOKIE) String cartRedisKey) {
    cartUtils.deleteProductInCart(cartRedisKey, productNo);

    return "redirect:/cart";
}

public void deleteProductInCart(String redisKey, Long productNo) {
    if (Objects.nonNull(redisTemplate.opsForSet().size(redisKey))) {
        redisTemplate.opsForSet().remove(redisKey, productNo);
    }
}
```




