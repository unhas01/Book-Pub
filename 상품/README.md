## 상품

상품 등록, 수정, 삭제(Soft Delete), 조회 API 및 Front 작업 (팀원과 공동작업)
Front 서버와 Back(API) 서버 코드를 구분 짓기 위해 아이콘 설정
- ❤️ : Front 코드
- 💙 : Back(API) 코드

### 📌 상품 등록 (관리자)

- 상품 ERD : [최종 ERD](https://github.com/unhas01/Book-Pub/tree/main/DB)
- 상품 등록을 위해 연결된 테이블
    - 상품저자(연관관계) - 저자
    - 상품카테고리(연관관계) - 카테고리
    - 상품태그(연관관계) - 태그
    - 상품 포인트 정책
    - 상품 판매 코드
    - 상품 유형 코드

<br/>

**상품 등록 모달 창 화면**

<img width="822" alt="Screenshot 2023-03-16 at 6 36 26 PM" src="https://user-images.githubusercontent.com/87689191/225576062-5eccca01-0fb7-43c6-9c76-9504f07415ca.png">
<img width="832" alt="Screenshot 2023-03-16 at 6 36 36 PM" src="https://user-images.githubusercontent.com/87689191/225576076-a6f5c7ed-6f35-4fcd-89c4-62057551e9ea.png">

- 상품 유형, 상품 판매 유형, 포인트 정책, 카테고리, 태그는 팀원들이 만든 API를 사용
- 태그 : `Javascript`를 사용해서 `@RequestParam`으로 값을 받음 그 외는 `@ModelAttribute`으로 처리
- 저자 : 저자를 DB에서 관리를 했지만 많은 저자들을 현 모달창에서 페이징 처리를 해가면서 구현하기 어려워 저자 번호를 `1,3`를 입력 후 파싱
- 설명 : Toast Editor 사용 (팀원이 구현)
- 파일 : 썸네일, 상세 이미지, E-Book 파일은 NHN Cloud의 Object Storage 사용 (팀원이 구현)

❤️ AdminProductController
```java
@Auth
@PostMapping("/add")
public String addProduct(@ModelAttribute InputProductFormRequestDto inputProduct,
                            @RequestParam(value = "tagList", required = false) List<Integer> tagList,
                            @RequestPart(required = false) MultipartFile thumbnail,
                            @RequestPart(required = false) MultipartFile detail,
                            @RequestPart(required = false) MultipartFile ebook) {
    Map<String, MultipartFile> fileMap = new HashMap<>();
    if (thumbnail != null) {
        fileMap.put("thumbnail", thumbnail);
    }
    if (detail != null) {
        fileMap.put("detail", detail);
    }
    if (ebook != null) {
        fileMap.put("ebook", ebook);
    }

    productService.createProduct(inputProduct, tagList, fileMap);

    return REDIRECT;
}
```

❤️ ProductServiceImpl
```java
@Override
public void createProduct(InputProductFormRequestDto dto, List<Integer> tagList,
                            Map<String, MultipartFile> fileMap) {
    dto.setSalePrice(dto.getProductPrice(), dto.getSaleRate());

    final boolean subscribed = dto.getSubscribed().equals("구독가능");

    String[] authorTmp = dto.getAuthors().split(",");
    List<Integer> authors = new ArrayList<>();
    for (String tmp : authorTmp) {
        authors.add(Integer.parseInt(tmp));
    }

    List<Integer> categories = new ArrayList<>();
    categories.add(Integer.parseInt(dto.getCategoryOne()));

    if (!dto.getCategoryTwo().equals("")) {
        categories.add(Integer.parseInt(dto.getCategoryTwo()));
    }

    if (!dto.getCategoryThree().equals("")) {
        categories.add(Integer.parseInt(dto.getCategoryThree()));
    }

    CreateProductRequestDto request = new CreateProductRequestDto(
            dto.getProductIsbn(),
            dto.getTitle(),
            dto.getProductPublisher(),
            dto.getPageCount(),
            dto.getProductDescription(),
            dto.getSalePrice(),
            dto.getProductPrice(),
            dto.getSaleRate(),
            dto.getPriority(),
            0,
            dto.getPublishedAt(),
            subscribed,
            dto.getPolicyNo(),
            dto.getSaleStateNo(),
            dto.getTypeStateNo(),
            authors,
            categories,
            tagList
    );

    productAdaptor.requestCreateProduct(request, fileMap);
}
```

- service 계층에서 입력 받은 dto class를 변형시켜 Back 서버로 넘김

💙 ProductController
```java
@PostMapping("/token/products")
@AdminAuth
public ResponseEntity<Void> productAdd(
        @Valid @RequestPart CreateProductRequestDto requestDto,
        @RequestPart(required = false) MultipartFile thumbnail,
        @RequestPart(required = false) MultipartFile detail,
        @RequestPart(required = false) MultipartFile ebook)
        throws IOException {

    Map<String, MultipartFile> files = new HashMap<>();
    if (thumbnail != null) {
        files.put("thumbnail", thumbnail);
    }
    if (detail != null) {
        files.put("detail", detail);
    }
    if (ebook != null) {
        files.put("ebook", ebook);
    }

    productService.createProduct(requestDto, files);

    return ResponseEntity.status(HttpStatus.CREATED)
            .build();
}
```
💙 ProductServiceImpl
```java
@Override
@Transactional
public void createProduct(CreateProductRequestDto request, Map<String, MultipartFile> fileMap)
        throws IOException {
    ProductPolicy productPolicy = productPolicyRepository
            .findById(request.getProductPolicyNo())
            .orElseThrow(NotFoundProductPolicyException::new);

    ProductTypeStateCode typeStateCode = typeStateCodeRepository
            .findById(request.getTypeCodeNo())
            .orElseThrow(NotFoundStateCodeException::new);

    ProductSaleStateCode saleStateCode = saleStateCodeRepository
            .findById(request.getSaleCodeNo())
            .orElseThrow(NotFoundStateCodeException::new);

    Product product = productRepository.save(
            new Product(
                    null,
                    productPolicy,
                    typeStateCode,
                    saleStateCode,
                    null,
                    request.getProductIsbn(),
                    request.getTitle(),
                    request.getProductPublisher(),
                    request.getPageCount(),
                    request.getProductDescription(),
                    request.getSalePrice(),
                    request.getProductPrice(),
                    request.getSalesRate(),
                    0L,
                    request.getProductPriority(),
                    false,
                    request.getProductStock(),
                    request.getPublishedAt(),
                    request.isSubscribed()));

    List<Integer> authorsNo = request.getAuthorsNo();
    for (Integer authorNo : authorsNo) {
        Author author = authorRepository.findById(authorNo)
                .orElseThrow(NotFoundAuthorException::new);

        product.getProductAuthors().add(new ProductAuthor(
                new ProductAuthor.Pk(
                        author.getAuthorNo(),
                        product.getProductNo()),
                author,
                product));
    }

    List<Integer> categoriesNo = request.getCategoriesNo();
    for (Integer categoryNo : categoriesNo) {
        Category category = categoryRepository.findById(categoryNo)
                .orElseThrow(CategoryNotFoundException::new);

        product.getProductCategories().add(new ProductCategory(
                new ProductCategory.Pk(category.getCategoryNo(),
                        product.getProductNo()),
                category, product));
    }

    if (Objects.nonNull(request.getTagsNo())) {
        List<Integer> tagsNo = request.getTagsNo();
        for (Integer tagNo : tagsNo) {
            Tag tag = tagRepository.findById(tagNo)
                    .orElseThrow(() -> new TagNotFoundException(tagNo));

            product.getProductTags().add(new ProductTag(
                    new ProductTag.Pk(tag.getTagNo(), product.getProductNo()), tag, product));
        }
    }

    List<File> images = product.getFiles();

    for (FileCategory category : FileCategory.values()) {
        if (fileMap.get(category.getCategory()) != null) {
            images.add(fileManagement.saveFile(
                    null,
                    null,
                    product,
                    null,
                    null,
                    null,
                    fileMap.get(category.getCategory()),
                    category.getCategory(),
                    category.getPath()));
        }
    }
}
```
💙 Product 엔티티 중 일부
```java
@OneToMany(mappedBy = "product", fetch = FetchType.LAZY,
        cascade = {CascadeType.PERSIST, CascadeType.MERGE},
        orphanRemoval = true)
private final Set<ProductCategory> productCategories = new HashSet<>();

@OneToMany(mappedBy = "product", fetch = FetchType.LAZY,
        cascade = {CascadeType.PERSIST, CascadeType.MERGE},
        orphanRemoval = true)
private final Set<ProductAuthor> productAuthors = new HashSet<>();

@OneToMany(mappedBy = "product", fetch = FetchType.LAZY,
        cascade = {CascadeType.PERSIST, CascadeType.MERGE},
        orphanRemoval = true)
private final Set<ProductTag> productTags = new HashSet<>();
```
- 상품 DB에 저장
- 상품카테고리, 상품저자, 상품태그 같은 연관관계 테이블은 양방향 관계를 맺어 상품쪽에서 모두 관리

---

### 📌 상품 전체 리스트 조회 (관리자)
- 페이징 처리를 통해 1페이지에 10개씩 조회

**관리자 페이지 상품 조회 화면**
<img width="1241" alt="image" src="https://user-images.githubusercontent.com/87689191/225588263-784508d3-984a-42ea-8aef-d4bf57851b2b.png">

❤️ AdminProductController
```java
@Auth
@GetMapping
public String products(@PageableDefault Pageable pageable, Model model) {
    ...
    PageResponse<GetProductListResponseDto> products = productService.findAllProducts(pageable);

    ... 
    model.addAttribute("products", products.getContent());
    model.addAttribute("totalPages", products.getTotalPages());
    model.addAttribute("currentPage", products.getNumber());
    model.addAttribute("isNext", products.isNext());
    model.addAttribute("isPrevious", products.isPrevious());
    model.addAttribute("pageButtonNum", 5);

    return "admin/product/productIndex";
}
```

--- 

### 📌 상품 조회 (사용자)
- 상품 썸네일 이미지, 상세 이미지, 설명 등등을 비롯한 정보들 View
- 리뷰, 공개 문의, 비공개 문의들은 팀원이 구현

![screencapture-book-pub-shop-products-23-2023-03-16-19_30_30 (1)](https://user-images.githubusercontent.com/87689191/225590435-df8422db-a382-40b8-8d82-b43c781d1a6c.png)


---

### 📌 상품 수정 (관리자)
- 상품 정보 수정
    - ISBN
    - 정가
    - 할인율
    - 출판사
    - 출판일
    - 페이지
    - 우선순위
- 저자 수정
- 카테고리 수정
- 태그 수정
- 상품 유형 수정
- 상품 판매 유형 수정
- 상품 설명 수정
- 연관 상품 등록 및 삭제
- 썸네일 이미지 수정
- 상세 이미지 수정
- 상품 삭제 수정 (soft delete)

**상품 정보 수정**
- 기존 정보를 입력 폼에 저장
- 수정할 정보들을 새로 입력
- 상품 유형, 판매 유형, 설명 수정과 동일한 방식

<img width="604" alt="image" src="https://user-images.githubusercontent.com/87689191/225592959-79c55c6e-d1f7-462c-9570-2d34f6375b66.png">

💙 ProductServiceImpl
```java
@Override
@Transactional
public void modifyProductInfo(Long productNo, ModifyProductInfoRequestDto request) {
    Product product = productRepository.findById(productNo)
            .orElseThrow(ProductNotFoundException::new);
    product.modifyProductInfo(request);
}
```

💙 Product 엔티티
```java
public void modifyProductInfo(ModifyProductInfoRequestDto request) {
    this.productIsbn = request.getProductIsbn();
    this.productPrice = request.getProductPrice();
    this.salesRate = request.getSalesRate();
    this.productPublisher = request.getProductPublisher();
    this.publishDate = request.getPublishedAt();
    this.pageCount = request.getPageCount();
    this.salesPrice = request.getSalesPrice();
    this.productPriority = request.getPriority();
}
```

**(저자, 카테고리, 태그) 연관관계 수정**

<img width="529" alt="image" src="https://user-images.githubusercontent.com/87689191/225594630-124744f5-7a3f-402c-bb82-94bd54a3343b.png">

- 카테고리 수정만 기록 (나머지도 비슷한 방법)
- 변경할 번호(저자, 카테고리, 태그)들을 dto에 담아서 API 호출

💙 ProductServiceImpl
```java
@Override
@Transactional
public void modifyProductCategory(Long productNo, ModifyProductCategoryRequestDto request) {
    Product product = productRepository.findById(productNo)
            .orElseThrow(ProductNotFoundException::new);

    product.initCategory();

    for (Integer categoryNo : request.getCategoriesNo()) {
        Category category = categoryRepository.findById(categoryNo)
                .orElseThrow(CategoryNotFoundException::new);
        product.getProductCategories()
                .add(new ProductCategory(
                        new ProductCategory.Pk(categoryNo, productNo),
                        category, product));
    }
}
```
💙 Product 엔티티
```java
@OneToMany(mappedBy = "product", fetch = FetchType.LAZY,
            cascade = {CascadeType.PERSIST, CascadeType.MERGE},
            orphanRemoval = true)
private final Set<ProductCategory> productCategories = new HashSet<>();


...

public void initCategory() {
    this.productCategories.clear();
}
```
- ERD 구조 : 상품 <-> 상품카테고리 <-> 카테고리 
- `initCategory()`을 통해 관계 테이블에 값을 모두 초기화
- `orphanRemoval = true` 옵션으로 Null 처리 된 데이터는 `DELETE`가 됨
- 새로운 데이터 저장

**orphanRemoval = true vs false**

1. false

![Frame 1](https://user-images.githubusercontent.com/87689191/225601357-65398d45-4395-4f8a-a1ff-9778b6b17c9b.png)
- Java Set에서는 데이터를 초기화 시켰지만 데이터베이스까지 초기화가 되진 않음


2. true

![Frame 1 (2)](https://user-images.githubusercontent.com/87689191/225601937-f62b4e45-7ab4-4122-a16b-0438d6fee9cf.png)

- 상품이 실제도 삭제가 되지 않기 때문에 `CasacadeType.REMOVE`로는 데이터가 삭제되지 않음


**연관 관계 상품**
- 등록
    - ERD 설계 실패로 하나의 책은 하나의 연관 상품(부모)만 가질 수 있었던 상황 (ERD를 수정하기엔 시간이 부족했었던 상황)
    - 상품에 부모 상품을 등록으로 구현
- 삭제
    - 상품에 자식 상품을 null 처리

**이미지(파일) 수정**
- 파일은 Object Storage에 저장해서 사용
- Object Storage에서 해당 파일을 지우고 새로 파일 등록하는 식으로 구현
    - Object Storage 용량 관리를 위함

💙 ProductServiceImpl
```java
@Override
@Transactional
public void modifyProductImage(Long productNo, MultipartFile image) {
    Product product = productRepository.findById(productNo)
            .orElseThrow(ProductNotFoundException::new);

    try {
        Optional<File> thumbnailImage = product.getFiles().stream()
                .filter(x -> x.getFileCategory()
                        .equals(FileCategory.PRODUCT_THUMBNAIL.getCategory()))
                .findFirst();
        if (thumbnailImage.isEmpty()) {
            return;
        }
        fileManagement.deleteFile(thumbnailImage.get().getFilePath());
    } catch (IOException e) {
        throw new FileNotFoundException();
    }

    try {
        File file = fileManagement.saveFile(null, null, product, null, null, null,
                image, FileCategory.PRODUCT_THUMBNAIL.getCategory(),
                FileCategory.PRODUCT_THUMBNAIL.getPath());
        product.modifyThumbnail(file);
    } catch (IOException e) {
        throw new FileNotFoundException();
    }
}
```


