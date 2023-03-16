## 위시리스트(좋아요)

위시리스트 구현 과정

---

### 📌 Flow

- 로그인을 한 회원만이 사용가능한 기능

**상품 상세 페이지 화면에서 위시리스트**

<img width="1201" alt="image" src="https://user-images.githubusercontent.com/87689191/225631523-0358779f-ac5d-4666-b3ef-c099094709b5.png">

**마이페이지 - 위시리스트**
- 위시리스트 등록한 상품들 View
- 화면을 좀 꾸미기 위해 1페이지에 8개만 조회

![image](https://user-images.githubusercontent.com/87689191/225634147-f68f9daa-b22b-4234-a89c-6b06b71cbf44.png)

```java
@Auth
@GetMapping("/members/wishlist")
public String memberWishList(@PageableDefault(size = 8) Pageable pageable,
                                Model model) {
    Long memberNo = memberUtils.getMemberNo();
    PageResponse<GetWishlistResponseDto> wishlist =
            wishlistService.getWishlistByMember(memberNo, pageable);

    memberUtils.modelRequestMemberNo(model);
    model.addAttribute("wishlists", wishlist.getContent());
    model.addAttribute("totalPages", wishlist.getTotalPages());
    model.addAttribute("currentPage", wishlist.getNumber());
    model.addAttribute("isNext", wishlist.isNext());
    model.addAttribute("isPrevious", wishlist.isPrevious());
    model.addAttribute("pageButtonNum", 5);

    return "mypage/myWishlist";
}
```

**재입고알림 신청**
- 상품이 품절인 경우에만 알림 신청 가능
- 관리자가 상품 매입을 통해 재고가 증가하고 상품이 품절이 아닌 경우 해당 상품에 위시리스트 알림신청이 된 사용자에게 알림을 날려줌
- 알림은 Dooray Massenger를 사용 (메일, SMS 문자 대안)
- 알림을 날린 후 DB값은 `false`로 재 설정

![image](https://user-images.githubusercontent.com/87689191/225635522-b774d6f1-38bc-4cd2-8cbc-83226f1a42d4.png)

```java
@Override
public List<GetAppliedMemberResponseDto> findWishlistAppliedMembers(Long productNo) {
    return from(wishlist)
            .innerJoin(wishlist.member, member)
            .innerJoin(wishlist.product, product)
            .select(Projections.constructor(GetAppliedMemberResponseDto.class,
                    member.memberNo,
                    member.memberNickname,
                    member.memberPhone,
                    product.productNo,
                    product.title))
            .where(wishlist.member.memberBlocked.isFalse()
                    .and(wishlist.product.productSaleStateCode.codeCategory.eq(
                            ProductSaleState.SOLD_OUT.getName()))
                    .and(wishlist.wishlistApplied.isTrue())
                    .and(wishlist.product.productNo.eq(productNo)))
            .fetch();
}
```
