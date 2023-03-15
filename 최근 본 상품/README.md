## 최근 본 상품

최근 본 상품 구현 과정

----

### 과정

1. 홈페이지 방문 시 Cookie 생성
    - `RECENT-VIEW`이름의 쿠키를 생성, value는 UUID 문자열
    - 쿠키 시간은 하루(24시간)으로 설정

```java
if (Objects.isNull(recentViewCookie)) {
    CookieUtil.makeRecentViewCookie(response, RECENT_VIEW_COOKIE, UUID.randomUUID().toString());
}

public static void makeRecentViewCookie(HttpServletResponse response,
                                        String key, String value) {
    Cookie cookie = new Cookie(key, value);
    cookie.setMaxAge(86400);
    cookie.setPath("/");
    response.addCookie(cookie);
}
```

![Screenshot 2023-03-15 at 2 59 33 PM](https://user-images.githubusercontent.com/87689191/225220306-769b315c-9377-4c43-9969-b11fa8ccaee8.png)


2. 하나의 상품을 조회(view)시 상품을 저장
    - 1번에서 생성한 쿠키의 value에 해당하는 값은 Redis의 Key로 사용
    - Redis의 `ZSet` 자료구조 사용
    - 상품번호, 제목, 파일이미지 경로를 `"======"`을 기준으로 저장
    - 상품을 조회한 시간을 `score`로 부여

```java
private void addRecentView(Long productNo, Cookie recentViewCookie, GetProductDetailResponseDto product) {
    if (Objects.nonNull(recentViewCookie)) {
        redisTemplate.opsForZSet().add(recentViewCookie.getValue(),
                productNo + DIVIDE_LINE + product.getTitle() + DIVIDE_LINE + product.getThumbnail(),
                Double.parseDouble(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"))));
    }
}
```

<br/>

43번에 해당되는 책을 보고나서 Redis를 확인해 보면 43에 해당하는 상품 정보들이 value로 들어가 있음

![Screenshot 2023-03-15 at 3 10 16 PM](https://user-images.githubusercontent.com/87689191/225222288-c6ddf117-e986-4a63-bc18-f069dda645df.png)
![Screenshot 2023-03-15 at 3 10 30 PM](https://user-images.githubusercontent.com/87689191/225222198-910c957c-a959-4ca8-a887-55db1d45862c.png)

3. 메인페이지 노출
    - `reverseRange()`를 활용해서 점수기준 역순(가장 최근 본 상품)으로 최대 5개를 가져옴
    - 2번 과정에서 사용한 구분선을 기준으로 Dto를 만들어 저장

```java
if (Objects.nonNull(recentViewCookie)) {
    List<RecentViewProductDto> recentViews = getRecentViews(recentViewCookie);
    model.addAttribute("recentViews", recentViews);
}

private List<RecentViewProductDto> getRecentViews(Cookie recentViewCookie) {
    Set<Object> redisObjects = redisTemplate
            .opsForZSet().reverseRange(recentViewCookie.getValue(), 0, 4);

    List<RecentViewProductDto> recentViews = new ArrayList<>();
    if (Objects.nonNull(redisObjects)) {
        for (Object object : redisObjects) {
            String[] tmp = object.toString().split(DIVIDE_LINE);
            recentViews.add(new RecentViewProductDto(
                    Long.valueOf(tmp[0]), tmp[1], tmp[2]));
        }
    }
    return recentViews;
}
```

메인페이지에서 최근 본 상품을 확인 가능
![Screenshot 2023-03-15 at 3 10 43 PM](https://user-images.githubusercontent.com/87689191/225223095-9eb90aa0-dc0d-413f-a865-07201470d9c4.png)