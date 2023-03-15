-- 상태코드 insert문 --

insert into `product_sale_state_code`(`product_sale_state_code_category`, `product_sale_state_code_info`) values('판매중', '현재 판매 중인 상품입니다.');
insert into `product_sale_state_code`(`product_sale_state_code_category`, `product_sale_state_code_info`) values('중단', '현재 판매 되지 않는 상품입니다.');
insert into `product_sale_state_code`(`product_sale_state_code_category`, `product_sale_state_code_info`) values('품절', '품절된 상품입니다.');

insert into `product_type_state_code`(`product_type_state_code_name`, `product_type_state_code_info`) values('베스트셀러', '베스트셀러 상품');
insert into `product_type_state_code`(`product_type_state_code_name`, `product_type_state_code_info`) values('신간', '신간 상품');
insert into `product_type_state_code`(`product_type_state_code_name`, `product_type_state_code_info`) values('추천', '추천 상품');
insert into `product_type_state_code`(`product_type_state_code_name`, `product_type_state_code_info`) values('인기', '인기 상품');
insert into `product_type_state_code`(`product_type_state_code_name`, `product_type_state_code_info`) values('할인', '할인 상품');
insert into `product_type_state_code`(`product_type_state_code_name`, `product_type_state_code_info`) values('기본', '기본 상품');

insert into `coupon_state_code`(`coupon_state_code_target`, `coupon_state_code_info`) values('전체', '전체 상품에 적용되는 쿠폰입니다.');
insert into `coupon_state_code`(`coupon_state_code_target`, `coupon_state_code_info`) values('카테고리', '카테고리 단위로 적용되는 쿠폰입니다.');
insert into `coupon_state_code`(`coupon_state_code_target`, `coupon_state_code_info`) values('개별상품', '개별 상품에 적용되는 쿠폰입니다.');

INSERT INTO customer_service_state_code (customer_service_state_code_name,
                                                           customer_service_state_code_used,
                                                           customer_service_state_code_info) VALUES ('faq', 1, 'FAQ');

INSERT INTO customer_service_state_code (customer_service_state_code_name,
                                                           customer_service_state_code_used,
                                                           customer_service_state_code_info) VALUES ('notice', 1, '공지사항');

insert into `inquiry_state_code`(`inquiry_state_code_name`, `inquiry_state_code_info`) values('불량', '불량 상품 신고');
insert into `inquiry_state_code`(`inquiry_state_code_name`, `inquiry_state_code_info`) values('교환', '상품 교환 문의');
insert into `inquiry_state_code`(`inquiry_state_code_name`, `inquiry_state_code_info`) values('환불', '상품 환불 문의');
insert into `inquiry_state_code`(`inquiry_state_code_name`, `inquiry_state_code_info`) values('일반', '일반 문의');
insert into `inquiry_state_code`(`inquiry_state_code_name`, `inquiry_state_code_info`) values('답변', '문의 답변');

insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('구매확정대기', '구매확정대기 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('구매확정', '구매확정 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('환불', '환불 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('배송중', '배송 중인 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('교환완료', '교환완료 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('교환대기', '교환대기 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('결제대기', '결제대기 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('결제완료', '결제완료 상태');
insert into `order_product_state_code`(`order_product_state_code_name`, `order_product_state_code_info`) values('배송준비', '배송준비 상태');


insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('결제대기', '결제 대기 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('결제완료', '결제 완료 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('배송준비', '배송 준비 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('배송중', '배송 중인 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('배송완료', '배송 완료 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('배송취소', '배송 취소 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('결제취소', '결제 취소 상태');
insert into `order_state_code`(`order_state_code_name`, `order_state_code_info`) values('구매확정', '구매 확정 상태');
INSERT INTO order_state_code (order_state_code_name, order_state_code_info) VALUES ('주문취소', '주문 취소 상태');



insert into `order_subscribe_state_code`(`order_subscribe_state_code_name`, `order_subscribe_state_code_info`) values('구독중', '구독 중인 상태');
insert into `order_subscribe_state_code`(`order_subscribe_state_code_name`, `order_subscribe_state_code_info`) values('구독취소', '구독 취소');
insert into `order_subscribe_state_code`(`order_subscribe_state_code_name`, `order_subscribe_state_code_info`) values('구독만료', '구독 만료 상태');

insert into `coupon_type`(`coupon_type_name`) values('일반');
insert into `coupon_type`(`coupon_type_name`) values('중복');
insert into `coupon_type`(`coupon_type_name`) values('포인트');


insert into `payment_state_code`(`payment_state_code_name`, `payment_state_code_info`) values('결제승인', '결제 승인 상태');
insert into `payment_state_code`(`payment_state_code_name`, `payment_state_code_info`) values('결제거절', '결제 거절 상태');
insert into `payment_state_code`(`payment_state_code_name`, `payment_state_code_info`) values('결제대기', '결제 대기 상태');
insert into `payment_state_code`(`payment_state_code_name`, `payment_state_code_info`) values('결제취소', '결제 취소 상태');

insert into `payment_type_state_code`(`payment_type_state_code_name`, `payment_type_state_code_info`) values('카드결제', '');











-- 정책 관련 insert문 --

INSERT INTO product_policy (product_policy_method, product_policy_saved, product_policy_save_rate) VALUES ('실구매가', 1, 5);
INSERT INTO product_policy (product_policy_method, product_policy_saved, product_policy_save_rate) VALUES ('판매가', 1, 7);
INSERT INTO product_policy (product_policy_method, product_policy_saved, product_policy_save_rate) VALUES ('판매가', 1, 10);

INSERT INTO coupon_policy (coupon_policy_fixed, coupon_policy_price, coupon_policy_minimum, coupon_policy_max_discount) VALUES (1, 5000, 20000, null);
insert into coupon_policy values (1, '1', '10000', 0, 10000);
INSERT INTO coupon_policy (coupon_policy_fixed, coupon_policy_price, coupon_policy_minimum, coupon_policy_max_discount) VALUES (0, 10, 10000, 10000);
INSERT INTO coupon_policy (coupon_policy_fixed, coupon_policy_price, coupon_policy_minimum, coupon_policy_max_discount) VALUES (1, 5000, 0, null);
INSERT INTO coupon_policy (coupon_policy_fixed, coupon_policy_price, coupon_policy_minimum, coupon_policy_max_discount) VALUES (0, 5, 5000, 10000);

INSERT INTO product_review_policy (product_review_policy_send_point, product_review_policy_used) VALUES (500, 1);

insert into `price_policy`(`price_policy_name`, `price_policy_fee`, `created_at`) values('배송비', 3000, now());
insert into `price_policy`(`price_policy_name`, `price_policy_fee`, `created_at`) values('포장비', 1000, now());












-- 일반 insert문 --

INSERT INTO tier (tier_name, tier_value, tier_price, tier_point) VALUES ('BASIC', 0, 0, 0);
INSERT INTO tier (tier_name, tier_value, tier_price, tier_point) VALUES ('WHITE', 1, 100000, 10000);
INSERT INTO tier (tier_name, tier_value, tier_price, tier_point) VALUES ('SILVER', 2, 200000, 20000);
INSERT INTO tier (tier_name, tier_value, tier_price, tier_point) VALUES ('GOLD', 3, 300000, 50000);
INSERT INTO tier (tier_name, tier_value, tier_price, tier_point) VALUES ('PLATINUM', 4, 500000, 100000);

INSERT INTO authority (authority_name) VALUES ('ROLE_ADMIN');
INSERT INTO authority (authority_name) VALUES ('ROLE_MEMBER');

INSERT INTO member (member_number, tier_number, member_id, member_nickname, member_name,
                                      member_gender, member_birth_year, member_birth_month, member_pwd, member_phone,
                                      member_email, member_deleted, member_blocked, member_blocked_at, member_point,
                                      member_social_joined, created_at)
VALUES (1, 1, 'tagkdj1', 'taewon', '임태원', '남성', 98, 1008,
        '$2a$10$hFa1smbt.CZ2Bs86cy7EXOWOvX4N32WiUh3vim9qlPGbAmKhD8pZO', '01043580106', 'tagkdj1@naver.com', 0, 0, null,
        698842, 0, '2023-02-13 18:12:25');

INSERT INTO member (member_number, tier_number, member_id, member_nickname, member_name,
                                      member_gender, member_birth_year, member_birth_month, member_pwd, member_phone,
                                      member_email, member_deleted, member_blocked, member_blocked_at, member_point,
                                      member_social_joined, created_at)
VALUES (2, 1, 'abc123', 'hoFe-U', '유호철', '남성', 97, 819, '$2a$10$jI9K3G7YpK5p9bZsvbKLWucymihW3EDVUQnXWE9BP1WiaeLFddrCG',
        '01012341234', 'exchange@email.com', 0, 0, null, 0, 0, '2023-02-13 18:13:08');

INSERT INTO member (member_number, tier_number, member_id, member_nickname, member_name,
                                      member_gender, member_birth_year, member_birth_month, member_pwd, member_phone,
                                      member_email, member_deleted, member_blocked, member_blocked_at, member_point,
                                      member_social_joined, created_at)
VALUES (3, 1, 'tagkdj1@kakao.com', 'kakao', '카카오', '남성', 98, 1008,
        '$2a$10$O0VSEkiIOjK6ssgC32JhNuOaD8eUDka5PeFAMC6vdaq6kv.jsFzL2', '01043580106', 'tagkdj1@naver.com', 0, 0, null,
        0, 1, '2023-02-13 18:18:58');

INSERT INTO member (member_number, tier_number, member_id, member_nickname, member_name,
                                      member_gender, member_birth_year, member_birth_month, member_pwd, member_phone,
                                      member_email, member_deleted, member_blocked, member_blocked_at, member_point,
                                      member_social_joined, created_at)
VALUES (4, 1, 'jammin', 'JamminTV', '잼민이', '남성', 15, 413,
        '$2a$10$nGX.NrzVvrCn0ZUcVN1t5u9MqpjX/FWGD9aOh9hu.WexIku36e7Nq', '01000000000', 'jammin@jammin.com', 0, 0, null,
        200000, 0, '2023-02-13 18:24:53');

INSERT INTO member (member_number, tier_number, member_id, member_nickname, member_name,
                                      member_gender, member_birth_year, member_birth_month, member_pwd, member_phone,
                                      member_email, member_deleted, member_blocked, member_blocked_at, member_point,
                                      member_social_joined, created_at)
VALUES (5, 1, 'asdfa123', 'yjyj1010', '이름이', '여성', 99, 1011,
        '$2a$10$afv64HUJcrWVNlUwj5Gj/undFn5Zl1u1ZhIUz7CacO/qNlrBoFzHi', '01012345252', 'sdfsfd@naver.com', 0, 0, null,
        0, 0, '2023-02-13 18:35:44');

INSERT INTO member (member_number, tier_number, member_id, member_nickname, member_name,
                                      member_gender, member_birth_year, member_birth_month, member_pwd, member_phone,
                                      member_email, member_deleted, member_blocked, member_blocked_at, member_point,
                                      member_social_joined, created_at)
VALUES (6, 1, 'qqq111', 'unhas', '경서', '남성', 98, 1008, '$2a$10$SDSiP7zo7lqJG1Nogy2L1uT6h10NQTDcNZ/L2wzSTWuPaWjq0M.Qa',
        '01066294869', 'qkrrudtj2965@naver.com', 0, 0, null, 0, 0, '2023-02-13 23:29:54');


INSERT INTO member_and_authority (member_number, authority_number) VALUES (1, 1);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (2, 1);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (4, 1);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (1, 2);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (2, 2);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (3, 2);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (4, 2);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (5, 2);
INSERT INTO member_and_authority (member_number, authority_number) VALUES (6, 2);


 INSERT INTO  address (address_number, member_number, address_member_based, road_address,
                                       address_detail)
VALUES (1, 1, 1, '광주 서구 상무버들로40번길 14', '109동 102호');

INSERT INTO   address (address_number, member_number, address_member_based, road_address,
                                       address_detail)
VALUES (2, 2, 1, '광주 서구 마산길 1', '상세주소');

INSERT INTO   address (address_number, member_number, address_member_based, road_address,
                                       address_detail)
VALUES (3, 3, 1, '광주 서구 상무버들로40번길 14', '109동 102호');

INSERT INTO   address (address_number, member_number, address_member_based, road_address,
                                       address_detail)
VALUES (4, 4, 1, '전남 순천시 황전면 잼마당길 10', '잼민잼민티비');

INSERT INTO   address (address_number, member_number, address_member_based, road_address,
                                       address_detail)
VALUES (5, 5, 1, '서울 종로구 돈화문로5길 28-3', '101동 101호');

INSERT INTO   address (address_number, member_number, address_member_based, road_address,
                                       address_detail)
VALUES (7, 6, 1, '광주 동구 조선대5길 65', 'PC-3실');


INSERT INTO tag (tag_name, tag_color_code) VALUES ('북펍추천', '#f8aab8');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('봄바람', '#fde576');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('가을분위기', '#c37108');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('겨울분위기', '#52bde9');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('전공자추천', '#c292e1');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('이달의책', '#f1895e');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('여름분위기', '#65c7ef');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('E-Book', '#a18bc9');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('언어', '#88e574');
INSERT INTO tag (tag_name, tag_color_code) VALUES ('시간순삭', '#2859f3');


INSERT INTO author (author_name, author_main_book)
VALUES ('J.K.Rowling', '해리포터');

INSERT INTO author (author_name, author_main_book)
VALUES ('이노우에 타케히코', '슬램덩크');

INSERT INTO author (author_name, author_main_book)
VALUES ('베르나르베르베르', '개미');

INSERT INTO author (author_name, author_main_book)
VALUES ('김진명', '고구려');

INSERT INTO author (author_name, author_main_book)
VALUES ('김상훈', '쇼핑몰 예제로 배우는 .NET Programming');

INSERT INTO author (author_name, author_main_book)
VALUES ('박진환', '행복을 바라는 꽃집');

INSERT INTO author (author_name, author_main_book)
VALUES ('장-루이-데샬', '말의 자연사');

INSERT INTO author (author_name, author_main_book)
VALUES ('히가시노 게이고', '나미야 잡화점의 기적');

INSERT INTO author (author_name, author_main_book)
VALUES ('곽아람', '쓰는 직업');

INSERT INTO author (author_name, author_main_book)
VALUES ('존 피콕', '서양 코스튬 연대기');

INSERT INTO author (author_name, author_main_book)
VALUES ('배수아', '작별들 순간들');

INSERT INTO author (author_name, author_main_book)
VALUES ('남궁성', 'Java의 정석');

INSERT INTO author (author_name, author_main_book)
VALUES ('하영원', '결정하는 뇌');

INSERT INTO author (author_name, author_main_book)
VALUES ('마이클 모스', '음식 중독');

INSERT INTO author (author_name, author_main_book)
VALUES ('연아람', '음식 중독');

INSERT INTO author (author_name, author_main_book)
VALUES ('뿅글이', '돈은 좋지만 재테크는 겁나는 너에게');

INSERT INTO author (author_name, author_main_book)
VALUES ('세이노', '세이노의 가르침');

INSERT INTO author (author_name, author_main_book)
VALUES ('김병부', '스프링 부트로 개발하는 MSA 컴포넌트');

INSERT INTO author (author_name, author_main_book)
VALUES ('이유리', '내게 남은 사랑을 드릴게요');

INSERT INTO author (author_name, author_main_book)
VALUES ('Andres Oppenheimer', 'The Robots Are Coming!: The Future of Jobs in the Age of Automation');

INSERT INTO author (author_name, author_main_book)
VALUES ('구병모', '로렘 입숨의 책');

INSERT INTO author (author_name, author_main_book)
VALUES ('리처드 파이만', '파이만씨 농담도 잘하시네 1');

INSERT INTO author (author_name, author_main_book)
VALUES ('Ian Goodfellow', 'Deep Learning');

INSERT INTO author (author_name, author_main_book)
VALUES ('Yoshua Bengio ', 'Deep Learning');

INSERT INTO author (author_name, author_main_book)
VALUES ('Vetri', 'Mastering Pizza');

INSERT INTO author (author_name, author_main_book)
VALUES ('앙투안 드 생텍쥐페리', '어린왕자');

INSERT INTO author (author_name, author_main_book)
VALUES ('이광연', '피타고라스 생각 수업');

INSERT INTO author (author_name, author_main_book)
VALUES ('Bjorn Natthiko Lindeblad', 'I May Be Wrong');

INSERT INTO author (author_name, author_main_book)
VALUES ('리카이푸', 'AI 2041');

INSERT INTO author (author_name, author_main_book)
VALUES ('천치우판', 'AI 2041');

INSERT INTO author (author_name, author_main_book)
VALUES ('Oxford University Press ', 'Contemporary Security Studies');

INSERT INTO author (author_name, author_main_book)
VALUES ('반병현', '챗GPT');

INSERT INTO author (author_name, author_main_book)
VALUES ('Breen', 'The New Koreans');

INSERT INTO author (author_name, author_main_book)
VALUES ('노경실', '동화책을 먹은 바둑이');

INSERT INTO author (author_name, author_main_book)
VALUES ('이치조 미사키', '오늘 밤, 세계에서 이 사랑이 사라진다 해도');

INSERT INTO author (author_name, author_main_book)
VALUES ('チャ-ルズ.A.ビ-アド／[著] 開米潤', 'ル-ズベルトの責任 日米戰爭はなぜ始まったか 下');

INSERT INTO author (author_name, author_main_book)
VALUES ('뤽 베송', '아더와 미니모이');

INSERT INTO author (author_name, author_main_book)
VALUES ('빅토리아 로젠탈', '폴아웃 공식 요리책');

INSERT INTO author (author_name, author_main_book)
VALUES ('윤혜정', '인생, 예술');

INSERT INTO author (author_name, author_main_book)
VALUES ('Michael Mauboussin', '마이클 모부신 운과 실력의 성공 방정식');

INSERT INTO author (author_name, author_main_book)
VALUES ('엘윈 브룩스 화이트 저자', '샬롯의 거미줄');

INSERT INTO author (author_name, author_main_book)
VALUES ('최승호', '눈사람 자살 사건');

INSERT INTO author (author_name, author_main_book)
VALUES ('Jeff Kinney', 'Diary of a Wimpy Kid #1');

INSERT INTO author (author_name, author_main_book)
VALUES ('프랑수아즈 라스투앵-포주롱', '왜 운동을 해야 할까');

INSERT INTO author (author_name, author_main_book)
VALUES ('손호철', '한국과 한국정치');

INSERT INTO author (author_name, author_main_book)
VALUES ('요리잡지 수퍼레시피', '진짜 기본 요리책');

INSERT INTO author (author_name, author_main_book)
VALUES ('김현근', '가난하다고 꿈조차 가난할 수 없다');

INSERT INTO author (author_name, author_main_book)
VALUES ('시니', '죽음에관하여');

INSERT INTO author (author_name, author_main_book)
VALUES ('길벗알앤디', '2023 시나공 기출문제집 정보처리기사 필기');

INSERT INTO author (author_name, author_main_book)
VALUES ('존 크럼볼츠', '빠르게 실패하기');

INSERT INTO author (author_name, author_main_book)
VALUES ('오민영', '처음 읽는 베트남사');

INSERT INTO author (author_name, author_main_book)
VALUES ('좋은생각편집부', '좋은생각');

INSERT INTO author (author_name, author_main_book)
VALUES ('크리스티나 순토르밧', 'Candlewick Press');

INSERT INTO author (author_name, author_main_book)
VALUES ('ふし野道流', 'ちびすけmeetsおおきい猫さんたち ');

INSERT INTO author (author_name, author_main_book)
VALUES ('Kousuke Oono', '극주부도');

INSERT INTO author (author_name, author_main_book)
VALUES ('김재원', '세상에서 가장 짧은 한국사');

INSERT INTO author (author_name, author_main_book)
VALUES ('이광연', '피타고라스 생각 수업');

INSERT INTO author (author_name, author_main_book)
VALUES ('조승우', '건강과 다이어트를 동시에 잡는 7대 3의 법칙 채소·과일식');

INSERT INTO author (author_name, author_main_book)
VALUES ('서지혜', '숨지말고 나와 봐');

INSERT INTO author (author_name, author_main_book)
VALUES ('수잔 와이즈 바우어', 'History for the Classical Child: Ancient Times');

INSERT INTO author (author_name, author_main_book)
VALUES ('김정률', '다크메이지');

INSERT INTO author (author_name, author_main_book)
VALUES ('張書岩', '');

INSERT INTO author (author_name, author_main_book)
VALUES ('편집부', '과학잡지 에피');

INSERT INTO author (author_name, author_main_book)
VALUES ('マガジンハウス', '');

INSERT INTO author (author_name, author_main_book)
VALUES ('윤재수', '주식투자 무작정 따라하기');

INSERT INTO author (author_name, author_main_book)
VALUES ('넥서스콘텐츠개발팀', 'ENJOY 여행영어');

INSERT INTO author (author_name, author_main_book)
VALUES ('린다 수 박', 'A Long Walk to Water');

INSERT INTO author (author_name, author_main_book)
VALUES ('엔도 타츠야', '스파이 패밀리');

INSERT INTO author (author_name, author_main_book)
VALUES ('김정민', '샤먼 바이블');

INSERT INTO author (author_name, author_main_book)
VALUES ('김영한', '자바 ORM 표준 JPA 프로그래밍');

INSERT INTO author (author_name, author_main_book)
VALUES ('황성민', '리얼 오사카');

INSERT INTO author (author_name, author_main_book)
VALUES ('정현미', '리얼 오사카');
INSERT INTO author (author_number, author_name, author_main_book) VALUES (73, '로비 톰슨', '스파이더맨');




insert into category (category_name, category_priority) VALUES ('국내도서', 0);
insert into category (category_name, category_priority) VALUES ('외국도서', 1);
insert into category (category_name, category_priority) VALUES ('eBook', 2);
insert into category (category_parent_number, category_name) VALUES (1, '건강,취미');
insert into category (category_parent_number, category_name) VALUES (1, '경제경영');
insert into category (category_parent_number, category_name) VALUES (1, '과학');
insert into category (category_parent_number, category_name) VALUES (1, '대학교재');
insert into category (category_parent_number, category_name) VALUES (1, '만화');
insert into category (category_parent_number, category_name) VALUES (1, '사회과학');
insert into category (category_parent_number, category_name) VALUES (1, '소설,시');
insert into category (category_parent_number, category_name) VALUES (1, '수험서,자격증');
insert into category (category_parent_number, category_name) VALUES (1, '어린이');
insert into category (category_parent_number, category_name) VALUES (1, '여행');
insert into category (category_parent_number, category_name) VALUES (1, '역사');
insert into category (category_parent_number, category_name) VALUES (1, '예술');
insert into category (category_parent_number, category_name) VALUES (1, '외국어');
insert into category (category_parent_number, category_name) VALUES (1, '요리,살림');
insert into category (category_parent_number, category_name) VALUES (1, '유아');
insert into category (category_parent_number, category_name) VALUES (1, '인문학');
insert into category (category_parent_number, category_name) VALUES (1, '자기계발');
insert into category (category_parent_number, category_name) VALUES (1, '소설');
insert into category (category_parent_number, category_name) VALUES (1, '종교');
insert into category (category_parent_number, category_name) VALUES (1, '컴퓨터,모바일');
insert into category (category_parent_number, category_name) VALUES (1, '잡지');
insert into category (category_parent_number, category_name) VALUES (2, '영미도서');
insert into category (category_parent_number, category_name) VALUES (2, '어학,사전');
insert into category (category_parent_number, category_name) VALUES (2, '건강,스포츠');
insert into category (category_parent_number, category_name) VALUES (2, '경제경영');
insert into category (category_parent_number, category_name) VALUES (2, '만화');
insert into category (category_parent_number, category_name) VALUES (2, '소설,시');
insert into category (category_parent_number, category_name) VALUES (2, '여행');
insert into category (category_parent_number, category_name) VALUES (2, '역사');
insert into category (category_parent_number, category_name) VALUES (2, '요리');
insert into category (category_parent_number, category_name) VALUES (2, '인문,사회');
insert into category (category_parent_number, category_name) VALUES (2, '종교');
insert into category (category_parent_number, category_name) VALUES (2, '청소년');
insert into category (category_parent_number, category_name) VALUES (2, '해외잡지');
insert into category (category_parent_number, category_name) VALUES (2, '일본도서');
insert into category (category_parent_number, category_name) VALUES (2, '문학');
insert into category (category_parent_number, category_name) VALUES (2, '어린이');
insert into category (category_parent_number, category_name) VALUES (2, '중국도서');
insert into category (category_parent_number, category_name) VALUES (3, '경제경영');
insert into category (category_parent_number, category_name) VALUES (3, '로맨스');
insert into category (category_parent_number, category_name) VALUES (3, '만화');
insert into category (category_parent_number, category_name) VALUES (3, '사회과확');
insert into category (category_parent_number, category_name) VALUES (3, '어린이');
insert into category (category_parent_number, category_name) VALUES (3, '소설,시');
insert into category (category_parent_number, category_name) VALUES (3, '역사');
insert into category (category_parent_number, category_name) VALUES (3, '예술');
insert into category (category_parent_number, category_name) VALUES (3, '자기계발');
insert into category (category_parent_number, category_name) VALUES (3, '인문학');
insert into category (category_parent_number, category_name) VALUES (3, '종교');
insert into category (category_parent_number, category_name) VALUES (3, '청소년');
insert into category (category_parent_number, category_name) VALUES (3, '판타지,무협');



INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (1, 1, 6, 1, null, '9788956054421', '해리포터와 마법사의 돌(Harry Potter and the Sorcerer''s Stone)', 'NHN 출판사', 256, '## 목차
원서 읽는 단어장 소개
이 책의 구성
전문가가 알려주는 원서 읽기 TIP

### 1. The Boy Who Lived

The Trace of Harry Potter (Comprehension Quiz)
The Sorcerer''s Vocabulary (Word List)

### 2. The Vanishing Galss

The Trace of Harry Potter
The Sorcerer''s Vocabulary
....

#### Chapter 17

The Trace of Harry Potter
The Sorcerer''s Vocabulary

Answers
Index', 5400, 6000, 10, 0, 50, 0, 100, '2023-02-14 20:34:00', '2023-02-13 20:35:41', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (2, 1, 1, 1, null, '9780262035613', 'Deep Learning', 'MIT Press', 800, '**책소개**
An introduction to a broad range of topics in deep learning, covering mathematical and conceptual background, deep learning techniques used in industry, and research perspectives.

"Written by three experts in the field, Deep Learning is the only comprehensive book on the subject."
--Elon Musk, cochair of OpenAI; cofounder and CEO of Tesla and SpaceX

Deep learning is a form of machine learning that enables computers to learn from experience and understand the world in terms of a hierarchy of concepts. Because the computer gathers knowledge from experience, there is no need for a human computer operator to formally specify all the knowledge that the computer needs. The hierarchy of concepts allows the computer to learn complicated concepts by building them out of simpler ones; a graph of these hierarchies would be many layers deep. This book introduces a broad range of topics in deep learning.

The text offers mathematical and conceptual background, covering relevant concepts in linear algebra, probability theory and information theory, numerical computation, and machine learning. It describes deep learning techniques used by practitioners in industry, including deep feedforward networks, regularization, optimization algorithms, convolutional networks, sequence modeling, and practical methodology; and it surveys such applications as natural language processing, speech recognition, computer vision, online recommendation systems, bioinformatics, and videogames. Finally, the book offers research perspectives, covering such theoretical topics as linear factor models, autoencoders, representation learning, structured probabilistic models, Monte Carlo methods, the partition function, approximate inference, and deep generative models.

Deep Learning can be used by undergraduate or graduate students planning careers in either industry or research, and by software engineers who want to begin using deep learning in their products or platforms. A website offers supplementary material for both readers and instructors.

---

', 79000, 79000, 0, 0, 20, 0, 98, '2016-12-12 20:36:00', '2023-02-13 20:36:40', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (3, 1, 2, 1, null, '9791166637056', '행복을 바라는 꽃집', '북팟', 311, '## 책소개
버려진 세상 속에서 살아남기 위해 인간성을 포기하다.

조국이라는 이름으로 무고한 개인을 파멸시킨 쇼와.
국가주의의 잔혹성을 신랄하게 비판한 작품!

이 작품은 평범하지만 시대 탓에 몸과 마음이 망가지고 평범하게 살 수 없었던 청년을 통해 1930, 40년대의 일본의 사회상은 물론 ''조국''과 ''천황''이라는 이름에 사랑과 사람 모두를 잃는 소년의 비참함을 보여준다.
오직 먹고 살기 위해, 사랑하는 사람을 돕기 위해 군인이 되는 주인공, 하지만 눈앞에 마주하는 난징 대학살과 위안부 이야기, 그 속에서 주인공은 천황제 파시즘에 자신도 모르게 홀리고 무엇이 옳은 것인지 사리 분별도 못하게 되는데...,

## 목차
공장 17
Black Thursday 33
또 한 번 길거리 42
부자 거리 47
배급소 55
신문집 62
문력거 거리 68
길거리 74
경찰서 81
헤이카 공원 91
훈련소 110
교토 118
꽃 집 126
생활관 134
돈카츠 집 152
만주로 169
고향 180
꽃 집 189
동물원 195
창춘시 205
상하이 212
난징 219
군대에서의 만남 235
변두리의 코야 248
공군 260
오장 271
패전 282
행복을 바라는 꽃집 304

', 14760, 16400, 10, 0, 50, 0, 99, '2022-12-10 20:37:00', '2023-02-13 20:37:37', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (4, 1, 2, 1, null, '9780399579226', 'Mastering Pizza', 'Ten Speed Press', 272, '**출판사 서평**
“Marc Vetri has an artist and a scientist and a genius all rolled into his beautiful, gnocchi-shaped head. I would need all the curse words in the English and Italian languages to fully express the brilliance that lies within these pages. If you are serious about making pizza, buy every copy in the store.”
-JIMMY KIMMEL

“Thorough, diverse, transparent, and beautiful, a template for this world and this amazing portrait of pizza, Brother Vetri goes deep into the many roads of all things flat and fired, and they all lead to delicious perfection! I love this book so much.”
-CHRIS BIANCO, chef and author of Bianco

“This book is genius in its detail. Marc sought out the most acclaimed masters of pizza to give you expert knowledge of the art, craft, and science behind what makes great pizza. What I love about this book is its passion, outstanding research, and easy, step-by-step instructions. In no time, you will be creating what pizzaioli spend a lifetime practicing to perfect. Mastering Pizza is an essential must-have for any pizza lover.”
-JIM LAHEY, author of My Pizza

“If you want to learn how to make great pizza, there is no better teacher than Marc Vetri. He has gone to great lengths to understand what it takes to make unforgettable pizza, and his unwavering passion for Italian food has made him a master of his craft. Mastering Pizza is filled with beautiful recipes and fundamental knowledge that Marc has accumulated throughout his career. This is the kind of cookbook that will inspire you to learn, cook, and invite people over for a great meal.”
-NATHAN MYHRVOLD, lead author of Modernist Cuisine

“There are very few people on the planet who could write a book entitled Mastering Pizza that I would want to read. One of them is Marc Vetri. Through his frequent travels in Italy, and a lifetime in the pizzerias of Philly, Marc has graduated from being a student of pizza to an esteemed professor of this beloved food. Marc’s stunningly comprehensive book (there are twelve dough recipes alone) will enlighten the path of your own journey to becoming the pizza master of your dreams.”
-NANCY SILVERTON, co-owner of Mozza Restaurant Group

“ An excellent one-stop pizza guide.”
- PUBLISHERS WEEKLY


**작가정보**
```
Trained in Bergamo, Italy, by some of the region''s most noted chefs, MARC VETRI is the chef/owner of Pizzeria Vetri, Vetri Ristorante, Osteria, Amis, and Alla Spina, all located in Philadelphia. He has also opened a series of restaurants in partnership with Terrain, with locations in California and Texas. Vetri was named one of Food & Wine''s Ten Best New Chefs; he also won the James Beard Award for Best Chef Mid-Atlantic. Vetri has been profiled in Gourmet, Bon App?tit, and the New York Times, and is the author of Mastering Pasta, Il Viaggio di Vetri, and Rustic Italian Food. DAVID JOACHIM is the author of the New York Times best seller A Man A Can A Plan and a co-writer on numerous cookbooks.


```', 32385, 43180, 25, 0, 50, 0, 96, '2018-08-23 20:39:00', '2023-02-13 20:39:31', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (5, 2, 2, 1, null, '9780156012195', 'The Little Prince ''어린 왕자'' 영문판 ', 'Harvest Books', 96, '### 책소개
```
MD 한마디
읽을 때마다 새로운 울림을 주는 동화 ''어린 왕자''의 영문판. 사막에 고립된 비행기 조종사는 소행성 B-612을 떠나와 지구에 불시착한 어린 왕자를 만나 그에게 양을 그려준다. 익숙한 ''어린 왕자'' 이야기를 통해 부담없이 영어 공부를 시작할 수 있는 책. -외국도서MD 정송
```

---


전 세계가 사랑하는 가장 아름다운 이야기, 생텍쥐페리의 『어린 왕자』.
다른 별에서 온 어린 왕자의 순수한 시선으로 모순된 어른들의 세계를 비추는 이 소설은, 꾸밈없는 진솔한 문체와 동화처럼 단순해 보이는 이야기 속에 삶을 돌아보는 깊은 성찰을 아름다운 은유로 녹여 낸 작품이다. [어린 왕자]를 다시 읽을 때마다 우리는 삶에서 가장 중요한 것들, 그러나 잊히거나 상실된 것들, [눈에 보이지 않는] 것들을 돌아보는 자리로 돌아오게 된다. 어린 시절 읽었던 이 작품을 보다 새롭고 완성도 높은 번역으로 다시 한 번 음미하며 읽어 볼 때다.

Few stories are as widely read and as universally cherished by children and adults alike as "The Little Prince. "Richard Howard''s translation of the beloved classic beautifully reflects Saint-Exupery''s unique and gifted style. Howard, an acclaimed poet and one of the preeminent translators of our time, has excelled in bringing the English text as close as possible to the French, in language, style, and most important, spirit. The artwork in this edition has been restored to match in detail and in color Saint-Exupery''s original artwork. Combining Richard Howard''s translation with restored original art, this definitive English-language edition of" The Little Prince" will capture the hearts of readers of all ages.

An aviator whose plane is forced down in the Sahara Desert encounters a little prince from a small planet who relates his adventures in seeking the secret of what is important in life. Howard''s new translation of this beloved classic beautifully reflects Saint-Exupery''s unique, gifted style. Color and b&w illustrations.', 7192, 11600, 38, 0, 30, 0, 104, '2000-02-25 20:40:00', '2023-02-13 20:41:03', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (6, 1, 3, 1, null, '9791197063213', '고구려 1: 떠돌이 을불', '출판사', 329, '# 책 소개
이 책이 속한 분야

+ 국내도서 > 소설 > 한국소설 > 역사/대하소설
+ 국내도서 > 소설 > 장르소설 > 역사소설
+ 수상내역/미디어추천

+ 미디어 추천도서 > 주요일간지소개도서 > 문화일보 > 2022년 9월 3주 선정
+ 미디어 추천도서 > 주요일간지소개도서 > 조선일보 > 2021년 6월 3주 선정

```고대사부터 고조선, 고구려까지
몽땅 중국의 역사로 쓸어 담는 동북공정!
그 허구를 깨는 웅혼한 고구려의 역사가 되살아난다.
대한민국 역사소설의 새로운 장을 여는 작품! 이례적인 베스트셀러 작가 김진명 필생의 역작 『고구려』의 개정판과 신작이 동시에 묶여 출간된다. 기존 출시되어있는 여섯 권(1~6권)의 개정판에, 소수림왕 후기를 다룬 신간 7권이 더해져 고구려 최전성기를 관통하는 왕들의 살아 숨 쉬는 일대기를 한 번에 만나볼 수 있다.
``` 

-----
1993년 『무궁화꽃이 피었습니다』로 데뷔한 이래, 작가 김진명의 가슴 깊숙한 곳에는 언젠가는 반드시 써내고 말아야 할 한 작품이 도사렸다. 
영원의 바람으로 새겨 온 그 필생작은 바로 ‘고구려’였다. 
17년의 각고 끝에 첫 선을 보인 소설 『고구려』는 현대와 같이 급변하는 당시 동북아 정세 속에서 가장 뜨거운 시간을 마주했던 다섯 왕(미천왕-고국원왕-소수림왕-고국양왕-광개토대왕)을 다룬다.

고구려는 우리 역사상 가장 강력했던 국가였음에도 불구하고 그간 제대로 다룬 문학이 없었다.
 널리 알려야 할 가장 자랑스러운 역사를 우리 스스로 감추고 살아온 꼴이다. 
요하 문명을 자국의 역사로 집어삼키고 있는 중국을 번연히 지켜보고 있으면서도 삼국지 칭송에 정신이 없는 이 시기, 이 사회에 『고구려』가 태어난 일은 참으로 다행스럽고 귀하기만 하다. 
역사의 책임을 통감하며 신중하게 써 내린 김진명의 『고구려』는 동북공정의 무자비한 도끼날로부터 역사를 지켜야 할 운명을 마주한 이 시대 한국인들이 꼭 읽어야 할 책이 아닐 수 없다.

『고구려』는 자칫 고루할 수 있는 역사소설의 틀을 벗어나 속도감 있는 문체, 
치밀한 구성, 짜임새 있는 줄거리, 저마다의 개성이 분명한 매력적인 등장인물과 영화처럼 스펙터클하게 묘사되는 전투 장면을 갖춘 중독성 강한 작품이다. 여타의 역사소설과는 달리 『고구려』의 독자 중 여성이 반을 넘는다는 사실은 이 책이 언제 어디서나 펼쳐볼 수 있는 흥미진진한 이야기로 가득 차 있다는 사실을 웅변한다
', 14220, 15800, 10, 0, 50, 0, 103, '2023-02-03 20:41:00', '2023-02-13 20:41:57', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (7, 1, 1, 1, null, '9791192247960', '말의 자연사', '교유서가', 560, '## 책 소개
인류가 가진 언어라는 재능은
말하기 위해서인가, 생각하기 위해서인가?

왜 인간은 자신의 노력을 들여서 명백한 이득도 없이
다른 사람들에게 그들의 안위를 위한 정보를 제공하는 데 기여하는가?

언어학을 토대로 진화생물학, 동물행동학, 심리학, 철학을 아우르며
인간 언어의 발달과정을 통찰한 명저

“논쟁을 자극하기 위해 쓴 도발적이고 박식하며 읽기에 즐거운 책”
_〈타임스 하이어 에듀케이션〉

INU 번역 총서 이어(異語)
번역 총서 이어는 서로 다른 언어들을 이어주고 연결해주는 인천대 인문학연구소의 새로운 번역 프로젝트이다. 본 프로젝트를 통해 여러 언어로 된 텍스트들이 학인들 사이를 경계 없이 유동하면서 자유와 해방의 기획으로 거듭나기를 기대해본다.

“선뜻 완독을 다짐하지 못했던 것은 이 책이 넘나드는 영역의 방대함과 도대체 서로 엮일 것 같지 않은 이질적인 이론들의 융합, 그리고 이를 풀어가는 논리 관계의 생경함 때문이었다. 하지만, 역설적으로 번역을 결심하게 된 계기도 동일한 이유 때문이다. 방대한 지적 성찰 곳곳에 숨겨져 있는 창의적인 의외성과 체계적인 통합 과정을 따라가면서, 이를 통해 언어학적 상상력에 기분 좋은 자극을 받을 수 있었다.” _「역자 후기」에서

## 작가정보
Jean-Louis Dessalles
파리 전기 통신 그랑제콜(Télécom Paris) 교수. 인공지능과 같은 공학적 도구로 언어 및 추론과 관련된 인간 지성을 연구하며, 인지과학, 의사소통 및 언어 진화에 대한 다수의 논문과 저서를 영어와 프랑스어로 발표했다. 대표 저서로는 『매우 인공적인 지능Des intelligences TRES artificielles』(2019), 『언어의 기원들Les origines du langage』(공저, 2010), 『관여성과 그 인지적 기원La pertinence et ses origines cognitives』(2008), 『유전학적 컴퓨터L’ordinateur génétique』(1996) 등이 있다.

## 목차
들어가며

1부_ 인간 종의 역사에서 언어가 차지하는 위치
1장 동물의 의사소통과 인간의 의사소통
2장 문화, 개별 언어, 인간 언어
3장 언어 능력의 생물학적 정착
4장 언어 기원에 대한 잘못된 증거들
5장 언어, 진화된 호기심
6장 언어의 국소적 최적성

2부 말의 기능적 해부학
7장 소리의 조합
8장 원시 언어
9장 통사 기제론
10장 의미 구성에서의 통사의 역할
11장 의미의 구조
12장 의미의 탄생

3부 언어의 동물 행동학
13장 대화 행동
14장 정보로 사용되는 언어
14.1 대화적 관련성의 제약
14.2 정보적 방식에 존재하는 관련성
14.3 정보에 민감한 존재들
14.4 정보적 방식의 생물학적 정착
14.5 정보의 본능적 공유

15장 논증의 탄생
16장 언어, 진화에의 역설
17장 인간 언어의 정치적 기원
18장 에필로그', 36100, 38000, 5, 0, 50, 0, 100, '2022-12-28 20:43:00', '2023-02-13 20:43:48', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (8, 3, 3, 1, null, '9788994492032', 'Java의 정석', '도우출판', 1022, '### 책소개
최근 7년동안 자바 분야의 베스트 셀러 1위를 지켜온 ''자바의 정석''의 최신판. 저자가 카페에서 12년간 직접 독자들에게 답변을 해오면서 초보자가 어려워하는 부분을 잘 파악하고 쓴 책. 뿐만 아니라 기존의 경력자들을 위해 자바의 최신기능(람다와 스트림)을 자세하면서도 깊이있게 설명하고 있다. 저자가 2002년부터 꾸준히 집필해온 책으로 깊이와 세밀함 그리고 저자의 정성과 노력이 돋보이는 책이다. 12년간 저자가 카페에서 손수 답변해줬다는 사실은 이 책에 대한 신뢰를 갖게 한다.', 27000, 30000, 10, 0, 30, 0, 100, '2016-02-01 20:43:00', '2023-02-13 20:44:26', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (9, 1, 4, 1, null, '9788932903507', '개미 1', 'NHN 출판사', 461, '# 책 소개
이 책이 속한 분야

미디어 추천도서 > 주요일간지소개도서 > 경향신문 > 2013년 11월 3주 선정
미디어 추천도서 > 주요일간지소개도서 > 동아일보 > 2013년 11월 3주 선정
미디어 추천도서 > 주요일간지소개도서 > 매일경제
미디어 추천도서 > 주요일간지소개도서 > 매일경제 > 2013년 11월 3주 선정
미디어 추천도서 > 주요일간지소개도서 > 서울신문 > 2013년 11월 3주 선정
미디어 추천도서 > 주요일간지소개도서 > 세계일보 > 2013년 11월 3주 선정
미디어 추천도서 > 주요일간지소개도서 > 조선일보 > 2011년 11월 4주 선정
미디어 추천도서 > 주요일간지소개도서 > 조선일보 > 2013년 10월 4주 선정
미디어 추천도서 > 주요일간지소개도서 > 조선일보 > 2013년 11월 3주 선정
미디어 추천도서 > 주요일간지소개도서 > 중앙일보 > 2010년 선정
미디어 추천도서 > 주요일간지소개도서 > 한국일보 > 2013년 11월 3주 선정
교보문고 추천도서 > 역대 교보문고 베스트셀러 > 1990년대 > 1994년 선정

```
베르나르 베르베르의 장편소설 『개미』 제1권 《제1부 개미》편. 기상천외한 개미의 세계를 개미의 시각으로 흥미 있게 풀어나가면서 사랑과 반역, 생존을 위한 투쟁을 고스란히 담아냈다. 추리적 기법을 가미해 개미의 생태를 세밀하고 흥미진진하게 묘사하고 있다.
```', 14220, 15800, 10, 0, 50, 0, 7, '2023-02-02 20:45:00', '2023-02-13 20:45:26', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (10, 2, 6, 1, null, '9781526644848', 'I May Be Wrong', 'Bloomsbury Publishing PLC', 256, '<h3>원서번역서 내용 엿보기</h3>

2022년 모두가 잊지 못할 삶과 지혜,
『내가 틀릴 수도 있습니다』한정판 화이트 에디션 출간
“당신은 어떤 사람이며, 어떤 삶을 살고 있습니까?”

2022년 1월, 한 사람이 세상을 떠났다. ‘망설임도, 두려움도 없이 떠납니다’라는 한마디를 남기고. 거대한 애도의 물결이 스웨덴을 휩쓸었다. 비욘 나티코 린데블라드. 수많은 스웨덴인들을 불안에서 끌어내어 평화와 고요로 이끌었던 그는 2018년 루게릭병에 진단받은 후에도 유쾌하고 따뜻한 지혜를 전했다. 20대에 눈부신 사회적 성공을 거뒀지만 모든 것을 버리고 숲속으로 17년간 수행을 떠났던 저자의 여정과 깨달음, 그리고 마지막을 담은 책 『내가 틀릴 수도 있습니다』는 스웨덴에 이어 한국에서도 세대를 불문하고 독자들에게 사랑받으며 출간 이래 베스트셀러의 자리를 지켰다.

올 겨울, 『내가 틀릴 수도 있습니다』의 감동과 깨달음을 더욱 직관적으로 전달하는 토마스 산체스의 새로운 그림을 표지로 입고 각양장 화이트 에디션이 출간되었다. 화이트 에디션에는 나티코의 지혜를 온전히 내 것으로 만들 수 있도록 필사 노트가 함께 제공된다. 한 해를 맺고 시작하는 이 시간을 두려움과 불안 대신 설렘과 용기로 마주하게 해줄 지혜가 여기 있다.

<h3>출판사 서평</h3>

```
[An] extraordinary life . . . A book that, improbably, mixes elements of profundity and sweetness in equal measure. I read it, turning down the corners of pages I wished to refer back to, and marking certain passages with a pencil. By the end, almost every page was folded and marked ― Telegraph

How magnificently disconcerting of this Swedish former forest monk to admit to doubts, even profound ones. His book is a multiple prize-winner across Europe, and you can quickly see why . . . Contains more wisdom and will do people more good than the complete works of Paul McKenna . . . This is a book of some brilliance ― Daily Mail

I loved every single page . . . It''s not only just laced with the most incredible wisdom, but it''s also gentle and beautiful and eloquent. There''s so much storytelling . . . I literally could not put this book down -- Fearne Cotton

Genuinely stays with you . . . Written with humility, charm and wit . . . There is not only gentle wisdom in these pages, but it''s a great read, too . . . Each chapter describes scenes from Lindeblad''s life and valuable lessons he has learned, that will encourage you to let go of the small stuff, accept the things you cannot control and open your heart and mind to a more happy and peaceful life ― Woman & Home

With our potential to maintain a peaceful state of mind, it is possible to remain optimistic in the face of difficulties. Björn Natthiko Lindeblad, a former forest monk in Thailand, relates his experience of training to properly direct his thoughts which can benefit all

-- His Holiness the Dalai Lama

Contains so many wisdoms that tie in with the big issues that the world wrestles with today . . . Heart-rending, yet at the same time so beautiful ― Nyhetsmorgon (Sweden)
```', 12800, 20000, 36, 0, 50, 0, 5, '2023-01-05 20:45:00', '2023-02-13 20:45:43', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (11, 2, 1, 1, null, '9791192483146', '희망의 끈(希望の絲)', '재인', 468, '## 책소개
두 가족의 불행한 과거사
은폐된 과거의 사건과 얽힌 두 가족의 운명
지유가오카에 있는 카페에서 여주인 하나즈카 야요이가 등에 칼이 꽂힌 채 사체로 발견된다. 경찰은 현장 상황 등으로 미루어 원한 등에 의한 면식범의 소행이라고 보고 수사에 들어간다. 그러나 야요이의 주변 사람들은 하나같이 그녀가 남에게 원한을 살 만한 사람이 아니라고 증언한다.

그런 가운데 두 남성이 수사 선상에 떠오르는데, 한 사람은 야요이의 전 남편 와타누키 테츠 히코, 다른 한 사람은 카페 단골손님이었던 시오미 유키노부. 와타누키 테츠히코는 사건이 발생하기 얼마 전, 이혼 후 오랜만에 야요이와 만난 것이 드러나지만, 그는 서로의 근황에 관해 얘기를 나누었을 뿐이라고 진술한다.

한편 시노미 유키노부는 피해자와 최근에 연인 관계가 아니었을까 의심되는 인물. 두 남성 모두 알리바이가 성립하는 데다 이렇다 할 살해 동기도 발견되지 않았으나, 마쓰미야 형사는 두 사람이 야요이와 관련해 뭔가 숨기고 있다는 느낌을 받는다. 그런 와중에 뜻밖의 인물이 자수해 오고 경찰은 사건을 종결지으려 하지만, 마쓰미야는 범인 이 뭔가 숨기고 있다는 느낌을 지우지 못하는데…….

“끈을 놓지 않겠다는 말도 한 것 같구나.” “끈이라니요?”
“만날 수는 없다 해도, 자신에게 소중한 사람과 보이지 않는 끈으로 이어져 있다고 생각하면 그것만으로도 충분히 행복하다고 말했어. 그리고 그 끈이 아무리 길어도 희망을 품을 수 있으 니 죽을 때까지 그 끈을 놓지 않겠다고 하더구나.”
- 본문 중에서

## 작가소개
##### 히가시노 게이고(東野圭吾)
오늘의 일본을 대표하는 작가. 1958년 오사카에서 태어났다.
오사카 부립대학 전기 공학과를 졸업한 후 엔지니어로 일하면서 틈틈이 소설을 쓰기 시작해 마침내 전업 작가의 길로 들어섰다.
1985년 『방과후』로 에도가와 란포상을 수상하며 이름을 알리기 시작해 1999년 『비밀』로 일본 추리 작가 협회상을, 2006년에는 탐정 갈릴레오 시리즈 제3탄 『용의자 X의 헌신』으로 제134 회 나오키상과 본격 미스터리 대상을 수상했다.
2012년 『나미야 잡화점의 기적』으로 중앙공론 문예상을, 2013년 『몽환화』로 시바타 렌자부로 상을 수상했으며, 2014년에는 『기도의 막이 내릴 때』로 요시카와 에이지 문학상을 수상했다. 그 밖의 작품으로 『가면 산장 살인 사건』『백야행』『인어가 잠든 집』『분신』『환야』『살인의 문』
『기린의 날개』『한여름의 방정식』『신참자』『탐정 갈릴레오』『예지몽』『다잉 아이』『뻐꾸기 알은 누구의 것인가』『학생가의 살인』『오사카 소년 탐정단』『방황하는 칼날』『천공의 벌』『붉은 손가 락』 등이 있다.', 16920, 18800, 10, 0, 50, 0, 100, '2022-11-16 20:46:00', '2023-02-13 20:46:12', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (12, 1, 1, 1, null, '1191104575', '피타고라스 생각 수업', '유노라이프', 344, '## 책소개
> MD 한마디
[수학자처럼 생각하기] 세상의 모든 일에는 규칙이 숨어있다. 이 규칙을 설명하거나 이해하기 위해선 수학이 필요하다. 명확한 선택과 기발한 상상 역시 수학에 답이 있다. 이 책은 피타고라스부터 허준이까지 수학자들의 생각을 살펴보며, 수학자의 사고로 세상을 발견하고 분석하고 활용하는 법을 소개한다. - 안현재 자연과학 PD
“빠른 두뇌 회전, 명확한 선택, 기발한 상상은
어떻게 하는 것일까?”
수학자들은 답을 알고 있다!
수학자처럼 세상을 발견하고, 분석하고, 활용하는 법!

우리는 일상에서 수학을 셀 수 없이 마주한다. 물건을 살 때, 게임 점수를 계산할 때, 화분에 물을 줄 때, 요리할 때, 자동차 연비를 계산할 때, 여행지에 가기 위해 집에서 출발 시간을 계산할 때 등 수없이 많다. 그렇기에 수학은 우리가 세상을 이해하고, 상황을 인식하고 결정하는 데 많은 영향을 미친다. 수학을 알면 알수록 두뇌가 빠르게 돌아가고, 결정도 빨라지며 선택이 명확해진다. 이러한 수학적 생각은 어떻게 하는 것일까?

이 책에서는 피타고라스, 유클리드, 페르미, 가우스, 힐베르트, 허준이 등 고대 수학자부터 현대 수학자까지 그들의 수학적 생각을 33가지로 다양하게 다뤘다. 그 가운데 일대일대응, 분수, 함수, 기하학, 피보나치수열, 페르미 추정, 프랙털, 리만 가설 등 초등 수학부터 고등 수학까지 개념과 이론을 두루 접할 수 있다.

피타고라스는 고대 수학자이자 위대한 철학자였다. 그는 철학을 하기 위해 수학을 사용했으며, 인생을 이해하는 데 수학을 반드시 배워야 한다고 많은 제자들에게 가르쳤다. 그가 말하는 수는 ‘나와 세상을 연결하고, 몰랐던 세상을 발견할 수 있는 지식’의 정점이었다. 그의 사상은 플라톤, 유클리드 등 후세의 많은 수학자들에게 영향을 끼쳤다. 문제를 명료하게 만드는 수학자이자 사상가로서 그는 절제하는 삶을 살았다. 그의 제자들은 그의 사상을 이어받아 수학으로 세상을 보고, 생각하고자 했던 그의 가르침을 따랐다.

이 책을 쓴 저자 역시 오랫동안 수학의 재미와 중요성을 강연과 책으로 설파해 온 수학자이다. 어릴 때부터 수학에 빠져 오랜 세월 수학자로 살면서 문제를 발견하고 생각을 확장하고, 논리적으로 풀어나가며, 상상하고 활용하는 데 탁월한 전문가이다. 피타고라스, 여러 수학자뿐만 아니라 저자의 수학적 생각도 이 책에 고스란히 녹아져 있다.

수학은 어렵지만 수학책은 읽고 싶은 사람, 어려운 수학 개념을 쉽고 재미있게 배우고 싶은 학생, 사회 속에서 겪는 갈등이나 문제를 논리적으로 해결하고 싶은 직장인, 일상의 복잡한 생각을 확장하고 명료하게 만들고 싶은 어른이라면 이 책을 꼭 읽기를 바란다. 《피타고라스 생각 수업》이 독자들의 인생을 수월하게 살도록 도움을 줄 것이다.

## 목차
들어가며 _ 피타고라스는 왜 세상을 ‘수’라고 했을까

1장_ 문제에 대한 생각, 보이지 않는 것을 발견하기

01. 세상을 문제로 보는 시선 - 외판원 문제
02. 때로는 추측이 문제를 해결한다 - 페르미 추정
03. 옛것을 알아야 새것을 안다 - 온고이지신
04. 80억 개의 생각을 1로 만드는 능력 - 축소
05. 점, 선, 면을 넘어 n차원으로 - 확장
· 피타고라스의 생각 - 보이지 않는 세계를 잇는 다리

2장_ 논리에 대한 생각, 일상을 분석하기

06. 일상을 문제별로 분류하는 법 - 기호와 분류
07. 방탄소년단도 이용한 메타버스 - 비트맵과 웨이브
08. 천재 수학자 허준이의 생각 - 연결과 구조
09. 가우스처럼 논리적으로 생각하는 법 - 생각의 끈
· 피타고라스의 생각 - 깨우치는 사람에게 필요한 것

3장_ 창의에 대한 생각, 상상하고 질문하기

10. 자동차 번호판을 보고 하는 상상 - 배수
11. 별은 얼마나 밝게 빛날까 - 역제곱의 법칙
12. 병뚜껑에 숨어 있는 각도 - 약수
13. 바이오리듬은 진짜일까? - 최소공배수
14. 60갑자의 비밀 - 진법
15. 문제 속 숨은 공통점 찾기 - 배열
16. 반복이 무한하면 무엇이 될까? - 프랙털
· 피타고라스의 생각 - 수로 세상을 알아가는 법

4장_ 발명에 대한 생각, 발상을 전환하기

17. 짝을 이루는 생각의 발견 - 일대일대응
18. 위대한 숫자 0, ''없음''의 발명 - 수
19. 곱하기를 나타내는 기발한 방법 - 곱셈
20. 공평함을 위한 수학적 생각 - 분수
21. 유클리드는 옳았고, 옳지 않았다 - 기하학
22. 오차 범위를 줄이는 법 - 작도
23. 아인슈타인의 사랑 방정식 - 위상수학
· 피타고라스의 생각 - 인생을 바꾸는 격언의 발견

5장_ 공부에 대한 생각, 기초에서 확장하기

24. 기초가 튼튼해야 완성된다 - 수리력
25. 개념만 알아도 반이다 - 계산능력
26. 수학은 어렵지 않다는 생각 - 추상화
27. 수학을 잘하는 의외의 방법 - 이해력
28. 하나를 알았다면 열이 보인다 - 규칙성
· 피타고라스의 생각 수학으로 철학을 했던 사람

6장_ 활용에 대한 생각, 수학자처럼 생각하기

29. 죄수의 딜레마와 치킨 게임 - 응용 수학
30. 이세돌이 알파고에게 진 이유 - 몬테카를로 탐색
31. 인구수를 예측하는 손쉬운 방법 - 지수함수
32. 평면을 완벽하게 채울 수 있을까? - 힐베르트 문제
33. 풀리지 않는 수학계 미제 사건 - 리만 가설
· 피타고라스의 생각 - 통합하고 적용하는 삶

나가며 _ 수로 세상을 읽을 때 꼭 필요한 생각', 16650, 18500, 10, 0, 50, 0, 100, '2023-01-17 20:46:00', '2023-02-13 20:47:22', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (13, 1, 3, 1, null, '9788932903514', '개미 2', 'NHN 출판사', 360, '# 책 내용

```
베르나르 베르베르의 장편소설 『개미』 제2권 《제2부 개미의 날》편. 기상천외한 개미의 세계를 개미의 시각으로 흥미 있게 풀어나가면서 사랑과 반역, 생존을 위한 투쟁을 고스란히 담아냈다. 추리적 기법을 가미해 개미의 생태를 세밀하고 흥미진진하게 묘사하고 있다.
```', 14220, 15800, 10, 0, 50, 0, 100, '2023-01-19 20:48:00', '2023-02-13 20:48:08', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (14, 2, 4, 1, null, '9791157846405', 'AI 2041', '한빛비즈', 528, '### 책소개
뇌공학자 정재승, IT 현자 박태웅,
투자 귀재 레이 달리오…
각 분야 리더들의 강력 추천!
“인공지능은 이미 예정된 미래다”

알파고가 이세돌 기사에게 승리를 거둔 직후, 대중은 인공지능이 인류를 지배하는 시대가 왔다며 충격에 휩싸였다. 카이스트 김대식 교수는 “당황하는 이세돌 9단의 얼굴에서 20년 후 우리의 모습을 봤다”며 지금 직업의 절반이 사라질 20년 후를 대비해야 한다고 경고했다. 반면 고(故) 이어령 선생은 “데이터베이스, 즉 1,000명의 프로 기사가 훈수를 두는 상대와 싸워서 졌을 뿐”이라며 지나친 AI포비아를 경계하기도 했다.

그리고 지금, 인공지능은 우리의 오늘과 미래를 과연 얼마나 바꿔놓았을까? 인공지능이 계속 발전하고 지금보다 더 많은 곳에 적용되면 어떤 미래가 펼쳐질까? 신선한 접근 방식과 대담한 분석으로 출간 전부터 전 세계 리더들과 독자들이 주목한 『AI 2041』의 두 저자는 이 책을 통해 미래에 대한 우리의 호기심과 두려움을 모두 해결하며 인공지능에 대한 비전을 정밀하게 보여준다.

***** 아마존 NO.1 논픽션
***** 미국, 독일, 영국, 일본 베스트셀러
***** 월스트리트저널, 워싱턴포스트, 파이낸셜타임스 선정 올해의 책

----


### 목차
서문
인공지능에 관한 진짜 이야기_리카이푸
상상력이 현실의 세상을 만든다_천치우판

1장 황금 코끼리
기술분석 딥러닝의 부정적 외부효과와 해법

2장 가면 뒤의 신
기술분석 악의적 딥페이크에 맞서는 또 다른 기술

3장 쌍둥이 참새
기술분석 자연어 기반 인공지능의 현재와 미래

4장 접촉 없는 사랑
기술분석 보건의료 분야에서의 인공지능

5장 유령이 된 아이돌 스타
기술분석 확장현실의 윤리적·사회적 문제

6장 거룩한 드라이버
기술분석 완전 자율주행차의 시대는 도래할까?

7장 양자 대학살
기술분석 양자컴퓨팅과 자율무기의 위험한 미래

8장 구원자 이야기
기술분석 인공지능에 의한 일자리 퇴출의 해법

9장 행복의 섬
기술분석 인공지능이 던지는 행복에 대한 질문들

10장 풍요를 꿈꾸다
기술분석 새로운 경제 모델과 풍요로움의 미래

감사의 말', 26820, 29800, 10, 0, 25, 0, 100, '2023-01-09 20:48:00', '2023-02-13 20:48:14', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (15, 3, 1, 1, null, '9788960907850', '쓰는 직업', '마음산책', 220, '## 책소개
“일이 힘들수록 나는 더 많이 썼다.
쓰는 것만이 나를 견딜 수 있게 해주었기 때문에”

주중엔 신문기자, 주말엔 에세이스트
나를 지우고 살려낸 글쓰기에 대하여
『공부의 위로』 『매 순간 흔들려도 매일 우아하게』 등을 통해 일하는 여성의 삶과 불안을 솔직하게 써온 곽아람의 신작 산문 『쓰는 직업』이 출간되었다. 마음산책 직업 이야기 여덟 번째 책이기도 한 『쓰는 직업』은 저자가 사회부 수습기자 시절 경찰서에서 먹고 자며 사건을 취재하던 경험부터 신문사 첫 여성 출판팀장이 되어 노벨문학상 특집을 위해 밤새도록 독서한 경험까지 다양하고 현실감 넘치는 직장 생활 이야기를 담고 있다. 오르한 파묵, 키라 나이틀리, 크리스토 자바체프 등 유명 예술가를 인터뷰한 후일담뿐 아니라 여성으로서, 나이가 어리고 직급이 낮은 사회인으로서 겪었던 모멸의 순간들까지 면밀하게 보여준다.
회사에서 부침을 겪을 때마다 저자는 온전한 ‘나’의 글쓰기로 자아를 회복했다. 규격에 맞춘 기사를 작성해야 하는 신문기자의 정체성에서 벗어나 주말엔 에세이스트로서 자유롭게 글을 쓰며 일에 대한 거리감을 확보했다. 그러한 노력 끝에 삶의 균형을 되찾을 수 있었고 진심으로 자신의 직업을 사랑하게 되었다. 그러므로 이 책은 저자가 사회생활에 힘겨워 방황하면서도 어떻게 한 회사에서 20년을 버틸 수 있었는지를 진솔한 어조로 전한다. 한때 일에 치여 ‘나’를 잃을 뻔했던 모든 이에게 자신을 지켜나갈 수 있는 용기를 북돋워준다.

이 책은 일이 싫어 울고, 힘들어서 비명 지르고, 버거워 도망가면서도 순간순간 찾아오는 보람과 성장의 기쁨에 중독돼 20년을 버틴 나의 이야기다. 보고, 듣고, 읽고, 느끼고, 결국은 쓰는 일로 귀결되는 나의 일. 기자記者, 즉 ‘쓰는 사람’이란 뜻을 가진 이 직업과 눈물과 웃음을 섞어가며 지지고 볶은 이야기. 그러므로 결국, 이 이야기는 러브 스토리다. _「책머리에」에서

## 작가정보
언제나 쓰는 사람. 주중에는 기사를, 주말엔 책을 쓴다. 2003년 신문사에 들어와 어쩌다 보니 20년을 채웠다. 〈조선일보〉 문화부 기자로 책 읽고 소개하는 일을 하고 있다. 책 못지않게 그림 보는 일도 좋아한다. 서울대학교 인문대학 고고미술사학과를 졸업하고 같은 과에서 미술사 석사학위를 받았다. 서울대학교 미술대학 미술경영협동과정 박사과정을 수료한 후 뉴욕대학교 IFA(The Institute of Fine Arts) 방문연구원으로 있으면서 크리스티 에듀케이션 뉴욕의 아트비즈니스 서티피컷 과정을 마쳤다. 지은 책으로 『그림이 그녀에게』 『모든 기다림의 순간, 나는 책을 읽는다』 『어릴 적 그 책』 『미술 출장』 『바람과 함께, 스칼렛』 『결국 뉴요커는 되지 못했지만』 『매 순간 흔들려도 매일 우아하게』 『공부의 위로』가 있다.', 13050, 14500, 10, 0, 50, 0, 100, '2022-12-14 20:48:00', '2023-02-13 20:48:45', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (16, 1, 6, 1, null, '9780198862192', 'Contemporary Security Studies', 'Paperback', 584, '<h3>목차</h3>

Brief Contents

Notes on Contributors
List of Figures
List of Tables
List of Boxes
How to use this book
Online Resources

PATT 1 Approaches to Security
PATT 2 Deepening and Broadenning Security
PATT 3 Traditonal and Non-Traditonal Security

Detailed Contents
Notes on Contributors
List of Figures
List of Tables
List of Boxes
How to use this book
Online Resources

PATT 1 Approaches to Security
PATT 2 Deepening and Broadenning Security
PATT 3 Traditonal and Non-Traditonal Security

Glossary
References
lndex
', 63000, 63000, 0, 0, 50, 0, 100, '2022-04-13 20:49:00', '2023-02-13 20:49:34', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (17, 1, 1, 1, null, '979115925749', '서양 코스튬 연대기', '들녘', 224, '## 책소개
『서양 코스튬 연대기』는 1,000여 개의 풀컬러 일러스트를 통해 고대 이집트에서 고대 그리스, 바빌론과 아시리아, 고대 로마, 비잔티움 제국, 중세 서유럽, 절대 왕정 시대, 빅토리아 시대, 20세기 후반 서유럽과 미국에 이르는 서양 패션의 기나긴 역사를 담아낸 방대한 자료집이다.
각 시대의 사람들이 어떤 의상을 입었는지 꼼꼼하게 그려져 있으며, 인물들이 저마다 속한 계급에 따라 각기 어떤 의상을 입었는지, 그 의상의 소재는 무엇인지, 어떻게 재단되었는지, 어떤 패턴을 사용했는지까지 직관적이고도 세세하게 설명하고 있다.
감히 서양 역사 속 패션에 대한 타의 추종을 불허하는 자료집이라고 할 수 있는 것이다.

## 작가 정보
피콕은 수년간 BBC 텔레비전의 수석 의상 디자이너로 활동한 의상 전문가로, 패션의 역사에 대한 수많은 책을 집필했다. 대표저서로는 『코스튬: 1066년에서 지금까지(Costume: 1066 to the Present)』 『20세기 패션 (Twentieth-Century Fashion)』 『완전한 20세기 악세서리 자료집(Fashion Accessories: The Complete 20th Century Sourcebook)』 『20세기의 보석들(Twentieth-Century Jewelry)』이 있다.

', 28800, 32000, 10, 0, 50, 0, 100, '2023-02-01 20:50:00', '2023-02-13 20:50:49', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (18, 2, 2, 1, null, '9791192932057', '챗GPT', '생능북스', 168, '### 책소개
2023 전 세계를 뒤흔든 빅이슈의 탄생

출시된 지 얼마 되지도 않아 세상을 뒤흔든 챗GPT는 지금까지 나온 모든 인공지능 기술보다 훨씬 더 전 세계에 충격을 주었다. 챗GPT가 무엇이고, 어떻게 활용하며, 우리 사회에 어떤 영향을 줄지 인공지능 개발자인 저자의 시선을 통해 분석하였다. 특히 일반인도 인공지능에 질문하고 답을 들을 수 있게 되면서 인공지능으로부터 원하는 답변을 얻기 위해 질문을 잘하는 것도 능력인 시대가 되었다. 이를 통해 챗GPT를 일상에서/창작 활동을 위해/공부하기 위해/전문가처럼 자문을 받기 위해 활용하는 법과 그 한계를 자세히 설명하고 있다

---

### 목차

01 AI는 이미 당신보다 똑똑하다

02 너무 똑똑한 AI의 출현, 위기인가 기회인가?

고도의 지적 활동은 인간의 전유물이라는 슬픈 착각
인간이 만들었지만 인간보다 똑똑한 AI
ChatGPT와 튜링 테스트

03 ChatGPT로 내 일상을 조금 더 편하게

요리 레시피 찾기
일상의 호기심 해결하기
자산 관리와 투자 전략 물어보기

04 ChatGPT를 활용한 창작활동

인공지능과 함께하는 콘텐츠 제작
작문
사람을 설득하는 논리 설계
그림 그리기

05 ChatGPT로 공부하기

ChatGPT와 국어 공부를 하기에는 아직 어려워요
ChatGPT와 영어 공부는 해 볼 만 합니다
ChatGPT는 쉬운 수학 문제는 정말 잘 풉니다
ChatGPT는 코딩 공부에 아주 유용합니다
ChatGPT와 코딩 테스트

06 전문가 대신 ChatGPT에게 자문을

의사 대신 인공지능
변호사 대신 인공지능
세무사 대신 인공지능
노무사 대신 인공지능
인간 전문가가 필요 없는 미래

07 초대형 AI 경쟁, 누가 가장 이득을 볼까?

OpenAI의 설립 과정
마이크로소프트는 웃고 있다
ChatGPT를 만드는 데에는 돈이 얼마나 필요한가?
초대형 AI 시대, 1천억 원의 벽

08 내일의 일상은 어떤 모습일까?

ChatGPT 이후의 미래, 우리는 살아남을 수 있을까?
이미 예고된 기술 발전의 방향
음성 인식 시스템의 한계 극복
자동 응답 시스템의 한계 극복
외로움의 극복, 상냥한 작별

부록 ChatGPT를 사용하는 방법', 11700, 13000, 10, 0, 15, 0, 99, '2023-02-15 20:52:00', '2023-02-13 20:52:14', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (19, 3, 5, 1, null, '9791169794930', '슬램덩크 리소스(THE FIRST SLAM DUNK re:SOURCE)', 'NHN 출판사', 179, '### 책 소개

미디어 추천도서 > 주요일간지소개도서 > 서울신문 > 2023년 1월 4주 선정
미디어 추천도서 > 주요일간지소개도서 > 서울신문 > 2023년 2월 1주 선정

```
영화를 만들어낸 ''토대''가 이 한 권에 담겼다!
단행본 미수록 단편만화 〈피어스〉 첫 수록!!
이노우에 다케히코가 영화를 제작하는 과정에서 그린 「글」과 「그림」을 풍성하게 수록 & 분석!!
영화 제작 결정 후 영화가 개봉될 때까지 공개된 포스터와 티저 비주얼 게재!!
장장 14페이지, 작가와의 롱 인터뷰를 통해
영화 제작에 처음으로 도전한 동기, 〈SLAM DUNK〉 팬에 대한 마음,
완성 뒤 기분 등 영화에 대한 이야기를 들어본다!!
```', 18000, 20000, 10, 0, 60, 0, 100, '2023-02-02 20:53:00', '2023-02-13 20:53:15', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (20, 1, 5, 1, null, '9781846045202', 'The New Koreans', ' Paperback', 480, 'In the course of a couple of generations, South Koreans took themselves out of the paddy fields and into Silicon Valley, establishing themselves as a democracy alongside the advanced countries of the world. Yet for all their ambition and achievement, the new Koreans are a curiously self-deprecating people. Theirs is a land with a rich and complex past, certain aspects of which they would prefer to forget as they focus on the future.

Having lived and worked in South Korea for many years, Michael Breen considers what drives the nation today, and where it is heading. Through insightful anecdotes and observations, he provides a compelling portrait of Asia''s most contradictory and polarized country. South Koreans are motivated by defiance, Breen argues: defiance of their antagonistic neighbour, North Korea, of their own history and of international opinion. Here is an overlooked nation with, great drive, determined to succeed on its own terms.

<h3>작가정보</h3>

```
저자(글) Breen, Michael
Michael Breen is a writer and consultant who first went to Korea as a correspondent in 1982. He covered North and South Korea for several newspapers, including the Guardian, The Times and the Washington Times. He lives in Seoul.~~~~
```', 12375, 16500, 25, 0, 50, 0, 100, '2023-02-10 20:53:00', '2023-02-13 20:53:39', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (21, 1, 1, 1, null, '978895469056', '작별들 순간들', '문학동네', 256, '## 책소개
“그러므로 한 사람이 두 번 다시 같은 빛 속에 있지 못하리라.”
한국문학의 가장 낯선 존재, 배수아 신작
독일의 시골 정원에서 쓰인 ‘읽기-쓰기’의 생활 산문
한국문학에서 ‘배수아’라는 이름은 낯설고 이국적인, 매혹과 비밀스러움이 그득한 영토의 푯말로 쓰인다. 신작 『작별들 순간들』은 읽기와 쓰기, 작가로 존재하기에 대해 쓴 산문으로 그 영토를 여행하는 데 가장 적합한 안내서가 될 것이다. 작가의 문장을 따라 조금씩 그 땅을 디디다보면 어느 순간 빽빽한 투야나무 울타리로 둘러싸인 오두막을 만나게 될 것이다. 외부와 단절된 그곳에는 정원의 삶과 읽고 쓰는 삶만이 있다. 목가적인 것과는 다르다. ‘벗어난 것’에 가깝다. 익숙한 고통과 근심에서, 언어에서, 나 자신에서 벗어났을 때 새로이 느낄 수 있는 순간들, 그것이 만들어내는 환상적인 화음들.

배수아 작가는 베를린 인근 한 시골 마을의 정원 딸린 오두막을 15년 가까이 오갔다. 처음에는 시차를 두고, 그러나 점점 더 오래 그곳에 머물게 되었고 마침내 살게 되었다. 자신에게 중요해지리라 짐작하지 못한 채 중요해지는 장소가 있다. 특히 배수아 작가는 한국에 체류할 때는 번역을, 독일 오두막에 머물 때는 본인의 작품을 쓰는 식으로 작업해왔기 때문에 이곳은 더욱 특별해진다. 작가는 자신이 ‘정원에 속한 사람’이 되어갔으며 그것은 자신의 글쓰기의 성분과 정신, 철학을 모두 포함한 글쓰기의 양태가 오두막으로 옮겨졌다는 것을 뜻한다고 전했다. 더불어 이 산문집은 특정 ‘장소’에 관한 글이라기보다 ‘내가 어떤 장소에 있었음으로 인해 쓸 수밖에 없는 글’이라고도.

소설가의 산문을 엮어 책으로 내는 방식에는 크게 두 가지가 있다. 여러 매체에 실은 시의적 산문들을 정리한 책과, 처음부터 끝까지 하나의 콘셉트 아래 써내려간 산문집. 이 책은 후자에 속한다. 읽기와 쓰기, 작가로서 존재하기에 대한 배수아 작가 특유의 세계가 베를린과 인근 시골마을의 오두막 정원을 배경으로 펼쳐지는 긴 호흡의 산문으로, 2022년 5월부터 10월까지 문학동네 웹진 『주간 문학동네』에 밀도 높게 연재된 원고를 바탕으로 한다. 연재 당시 제목은 ‘순간들 기록 없이’였다.

우리가 평화롭게 정원의 흙 위로 몸을 기울인 동안, 당신의 몸 위로 빛과 그늘이 어지럽게 얼룩지는 그 순간에도. 작별은 바로 지금, 우리의 내부-숲안쪽-에서 일어나고 있는 가장 궁극의 사건이었다. 배추흰나비의 애벌레가 몸을 구부리면서 당신의 목덜미 위를 느리게 기어간다. 나는 손가락 끝으로 그것을 집어올린다. 평화와 고요. 오직 빛과 호흡만이 있는 순간. 지금 당신이 불타고 있다는 증거인가? 글쓰기는 작별이 저절로 발화되는 현장이다.(83쪽)

가을에서 겨울이 지나갈 때까지 나는 두 권의 책을 번역하기로 되어 있었다. (“모든 언어는 외국이다.”) 글쓰기는 언어를 만들어가는 일이었다. (“나는 무성영화와 같은 글을 쓰고 싶어.”) 나는 스스로 만든 언어 안에 거주하기를 원했다. 존재는 거주이다. 내 거주는 글쓰기 안에 있었다. (“내 언어는 무너지는 집이다.”) 어린 시절 이후 나는 어디에서 살아왔던가? 항상 나는 내 최초의 집을 생각한다. 내게 최초로 말과 글을 가르쳐준 이는 누구였을까? 글을 쓸 때, 나는 종종 눈앞에서 허물어지는 화가의 아틀리에를 상상한다. (232~233쪽)

## 작가정보
소설가이자 번역가. 1965년 서울에서 태어나 이화여대 화학과를 졸업했다. 1993년 『소설과사상』에 「1988년의 어두운 방」을 발표하며 작품활동을 시작했다. 2003년 장편소설 『일요일 스키야키 식당』으로 한국일보문학상을, 2004년 장편소설 『독학자』로 동서문학상을, 2018년 소설집 『뱀과 물』로 오늘의 작가상을 수상했다.
소설집 『푸른 사과가 있는 국도』 『훌』 『올빼미의 없음』, 장편소설 『부주의한 사랑』 『나는 이제 니가 지겨워』 『에세이스트의 책상』 『북쪽 거실』 『알려지지 않은 밤과 하루』 『멀리 있다 우루는 늦을 것이다』, 산문집 『처음 보는 유목민 여인』 등이 있고, 옮긴 책으로 페르난두 페소아의 『불안의 서』, 프란츠 카프카의 『꿈』, W. G. 제발트의 『현기증. 감정들』 『자연을 따라. 기초시』, 로베르트 발저의 『산책자』, 클라리시 리스펙토르의 『달걀과 닭』 『G.H.에 따른 수난』, 아글라야 페터라니의 『아이는 왜 폴렌타 속에서 끓는가』 등이 있다.', 13680, 14400, 5, 0, 50, 0, 100, '2023-02-10 20:53:00', '2023-02-13 20:53:49', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (22, 2, 5, 1, null, '8958287977', '동화책을 먹은 바둑이', '사계절', 104, '## 책소개
노경실 동화작가의 저학년 첫 창작동화집

사계절 저학년문고 첫 번째 책 『동화책을 먹은 바둑이』는 1997년 노경실 작가가 처음으로 쓴 저학년 동화입니다. 작가는 그동안 어둡고 소외된 이웃들의 삶을 특유의 따뜻하고 해학적인 문체에 담아 우리 어린이들에게 진한 감동을 주고, 이웃과 더불어 생각할 수 있는 동화들을 많이 써 왔습니다. 또한 중산층 가정 아이들의 발랄하고 생기 있는 생활 모습과 감정들을 톡톡 튀는 감성으로 그리기도 했습니다.
『동화책을 먹은 바둑이』는 우리 어린이들이 생활하면서 겪은 일들이 다양하고 재미있게 담겨 있고, 어느 한쪽에 치우친 모습이 아닌, 다양한 생활환경과 각기 다른 개성을 지닌 요즘 어린이들의 세계를 생생하게 그린 작품입니다. 모든 걸 내일로 미루기만 하는 어린이, 말썽꾸러기지만 밝고 건강한 어린이, 집안이 가난한 어린이, 혼혈아를 바라보는 아이들의 시선, 맞벌이 부모님의 늦은 귀가로 가족의 따뜻함을 느끼지 못하고 외로워하는 어린이 등등 어린이들의 세계를 다양하게 보여 줍니다. 이 글들은 우리 어린이들이 자신과 이웃들의 삶을 되돌아보고, 어린이다운 천진함과 밝은 심성을 가꾸는 데 도움을 줄 것입니다.

## 목차
새가 된 내일이
동화책을 먹은 바둑이
썩은 사과
김알렉스라는 아이
호박잎
마지막 운동회
저녁 여덟 시 우리 집 풍경', 9000, 10000, 10, 0, 50, 0, 100, '2015-09-25 20:55:00', '2023-02-13 20:55:31', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (23, 3, 3, 1, null, '9791191043297', '오늘 밤, 세계에서 이 사랑이 사라진다 해도', '모모', 376, '### 책소개
```
MD 한마디
자고 일어나면 전날의 일을 모두 잊는 ‘선행성 기억상실증’을 앓는 소녀와, 웃음이라고는 없는 무미건조한 인생을 살아온 소년의 풋풋하고 애틋한 사랑 이야기. 소년의 거짓 고백과, ‘날 정말로 좋아하지 말라’는 소녀의 조건부 승낙으로 시작된 이 특별한 연애는 또 다른 내일로 이어질 수 있을까. -소설MD 박형욱
```

---
### 목차
모르는 남자애의, 모르는 여자애
걸음을 뗀 두 사람
이 여름은 언제나 한 번
하얀 공백
모르는 여자애의, 모르는 남자애
마음은 너를 그리니까
매일 기억을 잃는 너와
두 번 다시 돌아갈 수 없는 사랑을 했다
제26회 전격소설대상 ‘미디어워크스문고상’ 수상작

밤에 자고 일어나면 기억이 리셋되는 ‘선행성 기억상실증’을 앓는 소녀 히노 마오리와 무미건조한 인생을 살고 있는 평범한 고등학생 가미야 도루의 풋풋하고 애틋한 사랑 이야기. 선행성 기억상실증이라는 익숙한 소재를 매우 수준 높은 청춘 소설로 탄생시켰다는 극찬을 받으며 제26회 전격소설대상 ‘미디어워크스문고상’을 수상한 이 작품은 간질간질한 청춘의 로맨스를 전혀 예측할 수 없는 국면으로 끌고 가, 깐깐하고 엄격한 심사위원 모두를 눈물 흘리게 만들었다는 흥미로운 뒷이야기를 남긴 소설이기도 하다.

“날 모르겠지만, 사귀어줄래…?” 어쩔 수 없이 건넨 도루의 거짓 고백을 “날 정말로 좋아하지 말 것. 지킬 수 있어?”라는 조건을 걸고 허락한 히노. 조건부 연애였던 두 사람의 관계는, 연인이지만 연인이 아닌 이 특수한 관계는 ‘매일 기억이 사라지는’ 잔혹한 현실을 극복해나갈 수 있을까? 이들 사랑의 끝에 어떤 결과가 기다리고 있을까?', 12600, 14000, 10, 0, 7, 0, 98, '2021-06-21 20:56:00', '2023-02-13 20:56:33', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (24, 2, 2, 1, null, '9788950921651', '결정하는 뇌', '21세기북스', 360, '## 책소개
서강대학교 경영학과 하영원 교수의 행동적 의사결정 이론에서 이룬 연구 성과 중 핵심적인 내용을 골라 소개하는 책이다. 하 교수는 2012년 이 분야를 체계적으로 정리한 『의사결정의 심리학』을 저술하여 연구자와 일반인의 심리학 이해의 지평을 넓히는 데 큰 도움을 주었다. 특히 인간의 비의식 과정, 시간이 개입된 의사결정, 의사결정에서의 목표의 역할, 의사결정과 행복의 관계 등 최근 연구 주제들과 관련된 심리학 실험들과 연구들을 살펴봄으로써 인간의 직관적 판단과 의사결정의 심리에 관한 심층적 고찰을 제공하였다. 이후 10여 년의 세월이 흐르며 국내외 학계의 최신 연구 성과를 반영하고 기존 도서를 더욱 알기 쉽게 보완할 필요를 절감하고 『결정하는 뇌』라는 제목으로 개정증보판을 발행하게 되었다.

『의사결정의 심리학』 발행 후 10여 년간 행동의사결정 분야의 가장 결정적인 사건은 시카고대학교 리처드 세일러(Richard Thaler) 교수가 노벨경제학상을 받은 일이다. 그는 개인 의사결정에 대한 경제학적 분석과 심리학적 분석을 정교하게 연결함으로써 행동경제학이라는 분야가 만들어지는 데 결정적 역할을 한 인물이다. 기존 『의사결정의 심리학』에서도 그의 이론을 다루었지만, 『결정하는 뇌』에서는 ‘선택 아키텍쳐와 프레이밍 효과’라는 별도의 절을 추가하여 세일러 교수의 ‘넛지(nudge)’이론을 상세히 소개했다.

이 밖에도 인간의 비의식 과정이 사소한 의사결정 수준을 넘어 중대한 의사결정에도 작용한다는 점을 강조하였다. 그리고 ‘확인의 편향’이 개인 차원에서 집단 차원으로 확장하는 데 주목하여 이를 ‘집단사고(groupthink)’와 ‘메이리방 효과(the echochamber effect)’라는 개념으로 풀어낸다. 또한, 시간 지각이 의사결정에 미치는 영향에 대해서도 상세한 설명을 덧붙였다.

제한된 합리성과 직관적 판단의 대표 이론인 휴리스틱을 알아보며 인간의 인지적 편향에 대한 개괄적인 내용을 소개하고, 판단의 오류와 진실에 대해 비의식 과정의 영향, 과거의 경험에 관한 판단, 감성 예측의 오류와 편향, 확인의 편향으로 나눠 설명하는 이 책은 ‘행동적 의사결정 이론’을 체계적으로 분류하고 분석하여 옳은 선택과 현명한 선택을 위한 기준을 제시함으로써 현명한 선택을 할 수 있도록 도와줄 것이다.', 20900, 22000, 5, 0, 40, 0, 99, '2023-01-18 20:56:00', '2023-02-13 20:56:38', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (25, 1, 6, 2, null, '9784894348370', 'ル-ズベルトの責任 日米戰爭はなぜ始まったか 下', 'NHN 출판사', 859, '**ル-ズベルト ノ セキニン 2 ニチベイ センソウ ワ ナゼ ハジマツタカ**', 48239, 51870, 7, 0, 50, 0, 100, '2022-08-09 20:56:00', '2023-02-13 20:56:42', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (26, 2, 2, 1, null, '9788937469268', '음식 중독', '민음사', 392, '## 책소개
담배나 약물처럼 음식에도 중독될 수 있을까? 이 책은 충분히 그럴 수 있다고 답한다. 가공식품과 패스트푸드, 간편식, 인공감미료, 인공 향료가 장악한 현대의 식단이 우리의 미각과 신진대사를 교란하고 있다. 무엇보다 음식을 더욱 중독성 있게 만들고 있다.

햄버거 오염 보도로 2010년 퓰리처상을 수상한 베테랑 저널리스트 마이클 모스의 『음식 중독』이 민음사에서 출간되었다. 모스는 가공식품 업계가 이윤 극대화를 위해 오랜 세월 진화해 온 인간의 본능, 음식에 관한 기억과 정서, 법률과 정책상의 허점, 그리고 우리의 무관심을 어떻게 악용하는지 그 실상을 폭로한다. 기업 회의실부터 식품 공장, 법정, 의회, 실험실을 넘나들며 음식 중독의 생물학적, 사회적 원인을 밝히는 이 책은 독자들이 식습관의 주체성을 되찾고 건강한 미래로 나아가도록 돕는다.', 17100, 18000, 5, 0, 50, 0, 100, '2023-01-20 20:58:00', '2023-02-13 20:58:47', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (27, 1, 6, 1, null, '9788901061184', '아더와 미니모이 2', '웅진주니어', 271, '천재 감독 ''뤽 베송''이 쓴 판타지!

개미보다도, 아니 눈곱보다도 더 작은 녀석들의 세계가 있다고?
쉿! 뭔가 있다! 그 짜릿한 모험의 세계로 Go! Go!
『아더와 미니모이』는 전 세계적으로 유명한 천재 감독 ''뤽 베송''이 쓴 판타지소설로, 인간 세상의 주인공 아더와 ''눈곱''보다 작은 미니모이들이 펼치는 신비로운 모험담이다. 그 모험은 행방불명된 할아버지의 주술서를 발견하게 되면서부터 시작된다. [양장본 / 제2권]

★ 2권의 줄거리 ★
누구도 되돌아본 적이 없다는 금지의 대륙, 네크로폴리스에 다다른 아더 일행 앞에 마침내 말타자르가 모습을 드러낸다. 게다가 아더와 셀레니아는 미니모이 왕국을 단번에 날려 버리고 일곱 대륙의 절대 군주를 꿈꾸는 말타자르의 끔찍한 계획을 알게 된다. 하지만 말타자르의 카운트다운은 이미 시작되었는데….

게다가 땅 위에서는 악덕 부동산 업자가 할머니의 숨통을 조여오고, 땅 아래에서는 왕국을 쓸어버릴 거대한 물살이 꿈틀댄다. 과연, 아더는 1분 안에 이 위기에서 두 세계를 구하고 땅 위로 돌아갈 수 있을까?

☞ 이런 점은 알아두세요!
미니모이 원정대를 이루는 아더와 셀레니아, 베타메슈는 판타지 속 등장인물들이 보여주는 고정관념에서 벗어나 깨물어 주고 싶을 만큼 귀여운 모습과 함께, 모험의 주인공으로서 당차고 야무진 모습을 보여줍니다.

※ 내년 1월에 개봉될 예정인 영화「아더와 미니모이」그 첫 번째 이야기는 ''아더와 미니모이'' 시리즈의 1권과 2권의 내용을 담은 것으로 알려져 있습니다. 영화보다 먼저 책장을 펼치는 순간, 어린이들은 뤽 베송만의 색다른 기법과 튀는 독창성으로 책을 통해 먼저 그려 낸 놀라운 판타지 세계를 손에 잡힐 듯 가까이 느끼는 전율을 맛보게 될 것입니다~', 8820, 9800, 10, 0, 50, 0, 100, '2006-06-15 20:57:00', '2023-02-13 20:59:55', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (28, 1, 6, 1, null, '9788932422749', '인생, 예술', '을유문화사', 144, '### 소개
이 책은 국제갤러리의 디렉터로 문화 예술의 최전선에서 활동하는 저자 윤혜정이 쓴 예술 에세이다. 28명의 현대 예술가와 그 대표작들에 대한 지은이의 사적인 경험이 “감정, 관계, 일, 여성, 일상”이라는 다섯 가지 키워드를 중심으로 펼쳐진다. 지난 2년 반 동안 『바자』에 연재한 글이 이 책의 출발점이 되었다. 교과서에 등장할 법한 작가도 있고 이름조차 생소한 낯선 작가도 있지만 그들의 작품에서 읽어 내는 삶의 단면들은 결코 낯설지 않다. 삶이 예술이고 예술이 곧 삶이 되는 28가지 이야기를 만날 수 있다. 이 책에는 전문 서적에서 통용되는 글과 SNS를 장식하는 글, 매우 학구적인 태도와 매우 감상적인 시선, 너무 꽉 찬 이론과 너무 텅 빈 감상 사이에서 일종의 징검다리가 되고 싶었다는 저자의 바람이 담겨 있다.

--- 
### 목차
프롤로그Prologue
내가 예술을 경험하는 방법

I. 감정Emotion

마크 로스코_ 행복한 딜레마
아니쉬 카푸어_ 내 안의 두려움이 나를 바라본다
양혜규_ 나의 취약함을 드러내는 용기
빌 비올라_ 슬픔을 경험하는 슬픔
알베르토 자코메티_ 세상의 모든 불완전한 것에 대하여
장-미셸 오토니엘_ 그래서 더없이 아름답다

II. 관계Relation

올라퍼 엘리아슨_ 서로 존재함의 감각을 인정한다는 것
로니 혼_ 나는 당신의 날씨입니다
김영나_ 우리의 시공간은 입체적으로 흐른다
우고 론디노네_ 이 계절, 이 하루, 이 시간, 이렇게 흐드러진 벚꽃 그리고 우리
홍승혜_ 예술보다 더 흥미로운 예술가의 해방일지
안리 살라_ 우리가 기억을 나눠 갖는다면

III. 일Work

문성식_ 그리고 싶다, 살고 싶다
바이런 킴_ 아마추어의 마음으로
함경아_ 삶의 변수를 끌어안는 법
유영국_ 끝까지 순수하게 성실하다는 것
폴 매카시_ 생존하기와 존재하기
권영우_ 고수의 가벼움

IV. 여성Woman

가다 아메르_ 너는 네가 가진 전부다
루이즈 부르주아_ 인간을 품고 사는 인간들을 위해
안나 마리아 마욜리노_ 오늘을 사는 윤혜정의 ‘삼대’
최욱경_ 일어나라! 좀 더 너를 불태워라

V. 일상Life

줄리언 오피_ 함께 걷고 싶다
박진아_ 사이에 있는 시간들
서도호_ 나의 헤테로토피아를 찾아서
구본창_ 사소한 선택들의 위대함에 대하여
수퍼플렉스_ 어른답다, 어린이 같다
크리스티앙 볼탕스키_ 죽음의 감수성', 12600, 12600, 0, 0, 60, 0, 100, '2022-11-17 21:01:00', '2023-02-13 21:01:17', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (29, 3, 2, 1, null, '9788960306134', '돈은 좋지만 재테크는 겁나는 너에게', '황금부엉이', 288, '## 책소개
**"주변 사람들과 지금의 나를 비교할 필요는 없어요.
여러분의 재테크 여정에 함께 할게요."**

16만 구독자가 닮고 싶어 하는 ‘뿅글이’의 첫 번째 재테크 에세이!
재테크로 고민하는 Z세대에게 전하는 따스한 위로와 응원
재테크에 관한 진정성 있는 따뜻한 조언으로 Z세대의 마음을 사로잡은 유튜브 크리에이터 뿅글이. 다양한 재테크 노하우와 뿅글이의 성장 이야기를 담은 첫 책이 드디어 출간되었다. 뿅글이 채널의 영상에는 “뿅글님 영상은 늘 배울 게 많아요”, “항상 좋은 자극 많이 받고 가네요”라는 댓글들로 가득하다. 많은 이들이 그녀의 똑 부러지는 모습을 보고 동기부여를 받지만, 누구에게나 힘든 시기가 있듯이 저자에게도 힘든 시간이 있었다. 이 책은 그 길을 지나온 저자가 비슷한 시기에 비슷한 돈 고민을 하는 사회초년생들의 지친 마음을 위로하며, 재미있게 돈 모으고 불리는 뿅글이만의 노하우를 전한다. 그동안 영상으로는 담아내지 못했던 ‘가장 효율적인 예산 세우는 법’, ‘SNS를 통해 나를 브랜딩하는 법’, ‘부동산 임장을 취미로 만드는 법’까지 아낌없이 담았다.
수많은 재테크 크리에이터 사이에서 특히 Z세대가 뿅글이의 이야기에 집중하는 이유는 무엇일까? 그것은 목적 없이 무조건 하는 재테크가 아니라, 오랜 시간 지치지 않고 지속하는 방법을 정확하게 이야기하기 때문이다. 누군가는 ‘재테크’를 떠올리면 ‘힘들고 어려운 것’이라 생각할지 모른다. 하지만 재테크는 당장 해치워야 할 숙제가 아니라 그저 행복한 삶을 위해 필요한 과정이 되어야 한다. 그 과정을 즐겁게 하는 방법 역시 분명히 있다고 저자는 말한다. 지금까지 저자가 해왔듯이 말이다.
그뿐만 아니라 곳곳에 따뜻한 일러스트가 더해져 나만 뒤처지는 것 같아 불안, 초조했던 마음에서 벗어날 따스한 힘을 얻는다. 『뿅글이의 재테크 에세이』는 재테크를 어디서부터 어떻게 해야 할지 몰라 헤맸던 모든 이를 응원하며 당신도 할 수 있다는 확신을 심어줄 것이다.', 15675, 16500, 5, 0, 50, 0, 100, '2023-02-01 21:01:00', '2023-02-13 21:01:34', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (30, 3, 5, 1, null, '1197090649', '폴아웃 공식 요리책', '도토리', 192, '## 책소개
베데스다 소프트웍스의 인기 게임인 〈폴아웃 시리즈〉를 즐긴 유저라면 누구나 궁금해했을 게임 속의 다양한 요리들을 현실적으로 재해석한 레시피를 담았다.

「데스티니 가디언즈 공식 요리책」과 「파이널 판타지 온라인14 공식 요리책」으로도 대중들에게 좋은 반응을 얻고 있는 ''빅토리아 로젠탈''이 저술한 이 책에는 볼트텍 과학자들이 개발한 최첨단 영양만점 요리는 물론 볼트 거주자가 황무지에서 얻을 수 있는 재료들로 재구성한 독특한 요리비법들이 담겨 있다. 볼트 거주자가 써 놓은 낙서들을 읽으면서 핵전쟁 이후 세상에서 요리들을 쉽고 재미있게 요리하는 방법을 알려줄 것이다.

《폴아웃 공식 요리책》에는 192페이지에 걸쳐 총 70여 가지의 게임 속 레시피가 담겨있다. 블람코 맥 앤 치즈는 물론이고 완벽하게 보존된 파이, 미시시피 퀀텀 파이, 파워 누들과 같은 요리들을 직접 만들어 볼 수 있다. 심지어 폴아웃 하면 생각나는 누카-콜라 시리즈의 레시피도 수록되어 있다.

볼트 거주자가 먹었던 음식을 직접 만들어 보세요! 그동안 상상하기만 했던 핵전쟁 이후 요리들을 『폴아웃 공식 요리책』을 통해서 직접 만들고 맛볼 수 있습니다!

## 목차
머리말
볼트-텍™과 즐거운 식사를
식단 관련 제한사항
볼트 바깥에서의 요리

기초
닭 육수
누카-콜라 BBQ 소스
캐러멜 버터크림 프로스팅

전채 요리
냠냠 데빌드 에그
마이어러크 뱃살 크로켓
두더지쥐 원더미트 딥
소라게를 채운 동굴버섯
데스클로알 오믈렛말이
이구아나 꼬치
수상한 고기로 감싼 누카러크
브라민 프라이
마이어러크 집게살 케이크
사막 샐러드

수프와 스튜
보브로프 형제의 양배추 수프
걸퍼 슬러리
방사능 갈매기 파워누들
잰더뿌리 미소시루
치킨 누들 수프
테이토 수프
브라민 쌀국수
라드스택 스튜
캐롤의 수상한 고기스튜

사이드 요리
블람코 맥 앤 치즈
인스타매쉬
푸른 옥수수 머핀
베이크드 포크 앤 빈즈
브라민 구운 감자
슈가-밤 당근
파이퍼의 특제 소다빵
브로콜리 버섯 캐서롤

메인 요리
구운 거대파리
조의 특제 미트볼 스퍼키
더스티의 브라민 버거
마이어러크 여왕 스테이크
부드럽게 익힌 앵글러
칠리 마이어러크
데스클로 스테이크 조림
라드스콜피온 앙 크루테
데스클로 웰링햄
두더지쥐 마니코티
돌연변이 사마귀 마르살라
선장의 만찬
새들 업 솔즈베리 스테이크
천천히 구운 야오과이 다리

디저트
뮤트프루트 크럼블
댄디 보이 애플
와인에 조린 배
타피오카 푸딩
과일 크림 파이
완벽하게 보존된 파이
생일 케이크
팔머 할머니의 스위트롤
팬시 라드 스낵 케이크
슬로컴의 버즈바이트
매콤한 초콜릿 번트케이크
초콜릿 칩 쿠키
버섯구름
버프아웃
방사능 젤리
미시시피 퀀텀 파이

음료
누카-콜라
누카-콜라 퀀텀
누카-체리
누카-콜라 쿼츠”
누카-콜라 플로트
디저의 레모네이드
빔 쿼츠
멜론 스웜프테일
빔 리프레시
더티 웨이스트랜더
빔 캡틴즈 블렌드
웨어즈 브루
랏 것
파이어벨리
대디-오
스팀팩
누카-밤드롭
라드어웨이
S.P.E.C.I.A.L.', 36000, 40000, 10, 0, 50, 0, 100, '2022-05-30 21:01:00', '2023-02-13 21:02:19', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (31, 1, 6, 1, null, '9791188754205', '마이클 모부신 운과 실력의 성공 방정식', 'NHN 출판사', 352, '### 책 소개
이 책이 속한 분야

+ 미디어 추천도서 > 주요일간지소개도서 > 동아일보 > 2019년 9월 3주 선정
+ 미디어 추천도서 > 주요일간지소개도서 > 매일경제 > 2019년 9월 3주 선정
```성공은 운인가 실력인가```
```
운과 실력을 구별하고 다루는 체계적·과학적 방법
기업의 실적이나 주식 투자자의 수익률은 운일까 실력일까. 취직과 소득, 야구 선수의 타율은 운에 좌우될까 실력에 좌우될까. 우리에게 익숙한 모범 답안은 ‘실력이 기본이고 운은 덤’이다. 그러나 마이클 모부신 컬럼비아대 교수에 따르면 사업과 투자의 성과는 대부분 운의 영향을 더 많이 받는다. 특히 단기적으로 드러나는 주식 투자 성과는 실력이 절대적인 체스 게임보다 운이 큰 영향을 미치는 포커 게임에 가깝다.

개인의 취직과 소득 역시 본인이 졸업한 해의 호경기·불경기에 좌우되며, 타자의 평균 실력은 과거보다 향상되었으나 그 실력이 타율에 미치는 영향은 오히려 줄어들었다. 다소 과격할 수 있는 이 주장은 흥미로운 실제 사례, 다양한 통계 자료, 정밀한 분석으로 뒷받침된다.

《마이클 모부신 운과 실력의 성공 방정식》은 운칠기삼의 세상사에 현명하게 대처하고 성공 가능성을 높이기 위해서는 ‘운에 맡기는’ 대신 ‘운을 다루어야’ 한다고 강조한다. 책은 운에 대처하고 그 운을 다루는 합리적인 방법을 찾아내 보여준다. 운과 실력을 구별하고, 그 비중을 분석하며, 이 둘을 현실에 적용한다. 이러한 구별, 분석, 적용은 마지막 11장에서 ‘예측력을 높이는 10가지 방법’으로 정리했다.
```', 16200, 18000, 10, 0, 50, 0, 100, '2021-11-11 21:02:00', '2023-02-13 21:02:39', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (32, 1, 4, 1, null, '9788952787590', '샬롯의 거미줄', '시공주니어', 264, '<h5>거미 샬롯과 돼지 윌버의 아름다운 우정 이야기</h5>

**태어나지마자 죽을 뻔했던 무녀리 돼지 윌버.
가까스로 살아남았지만 외롭던 윌버에게
거미 샬롯이라는 새 친구가 생긴다.
윌버는 샬롯과 함께 행복한 나날을 보낸다.
자신이 크리스마스에 햄이 될 거라는 소식을 듣기 전까지는!**

★뉴베리 아너 상 수상작★
윌버는 함께 태어난 형제 중에 가장 작다는 이유로 죽임을 당할 뻔한 무녀리 돼지다. 농장 주인의 딸인 펀은 아빠를 설득해 윌버를 구해내 정성껏 키운다. 펀의 삼촌 농장으로 거처를 옮긴 윌버는 거미 샬롯과 친구가 된다. 윌버는 여러모로 자신과 다른 샬롯 때문에 갈등도 겪지만, 둘은 아주 좋은 친구가 된다. 그러나 얼마 후, 늙은 양이 찾아와 (농장의 돼지들이 대개 그러했듯이) 윌버가 크리스마스 햄이 될 거라고 예언한다. 윌버는 겁에 질려 울부짖지만, 사려 깊고 침착한 샬롯이 윌버를 살려낼 묘안을 낸다. 바로 거미줄에 윌버를 위한 근사한 문구를 짜 넣는 것이었다. 사람들은 샬롯의 예상대로 윌버를 기적을 부르는 돼지라 여겨 특별대우를 해 준다. 샬롯은 죽을 때까지 힘을 다해 윌버를 위해 거미줄을 짜 놓고, 아무도 없는 곳에서 쓸쓸하게 죽어 간다. 윌버에게 남은 것은 대자연을 품은 농장과 샬롯과의 잊지 못할 우정, 그리고 이제는 윌버가 돌봐 주어야 할 샬롯의 새끼 거미들이다.', 9900, 11000, 10, 0, 50, 0, 100, '2018-10-08 21:02:00', '2023-02-13 21:02:54', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (33, 2, 1, 1, null, '9788972756194', '나미야 잡화점의 기적(ナミヤ雜貨店の奇迹)', '현대문학', 456, '## 책소개
2012년 3월 일본에서 출간되어 큰 화제를 불러일으킨, 히가시노 게이고 최신작. 이번 이야기에는 그동안 히가시노 게이고 하면 떠올랐던 살인 사건이나 명탐정 캐릭터는 전혀 등장하지 않는다. 그럼에도 불구하고 마치 퍼즐을 맞추어가는 듯한 치밀한 짜임새는 과연 히가시노 게이고의 작품답게 명불허전의 짜릿한 쾌감을 선사하며 감동을 자아내 작가의 고정 독자를 충분히 매료시킨다.

총 5장으로 구성된 <나미야 잡화점의 기적>은 기묘한 편지를 주고받는다는 설정 때문에 판타지 색채가 두드러져 보일 수 있지만 이는 각각의 이야기와 등장인물을 하나의 연결 고리로 모으는 주요 장치로 작용한다.

XX시 외곽에 자리한 나미야 잡화점은 30여 년간 비어 있던 오래된 가게이다. 어느 날 이곳에 삼인조 좀도둑들이 숨어든다. 이들은 몇 시간 전 강도짓을 하고 경찰의 눈을 피해 달아나던 참이었다. 인적이 드문 외딴집인 줄로만 알았는데 난데없이 나미야 잡화점 주인 앞으로 의문의 편지 한 통이 도착하고, 세 사람은 얼떨결에 편지를 열어 본다.

처음에는 누군가 자신들을 노리고 장난을 치고 있다고 생각했다가 편지 내용에 이끌려 답장을 해주기 시작한다. 하나로 그칠 줄 알았던 편지가 계속해서 도착하고 어느새 세 사람은 고민을 적어 보낸 이들의 앞날이 어떻게 풀릴지 자신들의 일처럼 진심으로 걱정하게 된다.

각 장마다 고민 상담 편지를 보낸 이들의 애틋한 사연이 담겨 있다. 수십 년 전 나미야 유지에게 고민을 상담하는 편지가 무슨 이유로 현재는 비어 있는 가게 우편함으로 들어왔는지, 과연 그것이 우연인지 필연인지에 대한 비밀은 이야기가 거듭될수록 조금씩 풀려간다. 그리고 놀라운 기적이 일어나기 시작한다.

## 목차

###### 제1장 답장은 우유 상자에
###### 제2장 한밤중에 하모니카를
###### 제3장 시빅 자동차에서 아침까지
###### 제4장 묵도는 비틀스로
###### 제5장 하늘 위에서 기도를
###### 옮긴이의 말

## 책속에서
###### P. 147
누군가 자신을 부르는 것 같았다. 하지만 대답할 수 없었다. 손끝 하나 꼼짝할 수 없는 것이다. 아니, 몸뚱이가 있는지 없는지도 알 수 없었다.
의식이 아득해져갔다. 잠들어버릴 것 같다.
그 편지글이 희미하게 뇌리에 떠올랐다.
###### P. 188
○월 ○일(여기에는 제사 날짜를 기입하도록 해라) 오전 0시부터 새벽까지 나미야 잡화점의 상담 창구가 부활합니다. 예전에 나미야 잡화점에서 상담 편지를 받으셨던 분들에게 부탁드립니다. 그 편지는 당신의 인생에 어떤 영향을 끼쳤습니까? 도움이 되었을까요. 아니면 아무 도움도 되지 못했을까요. 기탄없는 의견을 보내주시면 고맙겠습니다. 그때처럼 가게의 셔터 우편함에 편지를 넣어주십시오. 꼭 부탁드립니다.

"내가 몇년째 상담글을 읽으면서 깨달은 게 있어. 대부분의 경우, 상담자는 이미 답을 알아. 다만 상담을 통해 그 답이 옳다는 것을 확인하고 싶은 거야. 그래서 상담자 중에는 답장을 받은 뒤에 다시 편지를 보내는 사람이 많아. 답장 내용이 자신의 생각과 다르기 때문이지."-167쪽 - 윤재홍

하긴 이별이란 그런 것인지도 모른다.
돌아오는 기차 안에서 고스케는 생각했다. 사람과 사람 사이의 인연이 끊기는 것은 뭔가 구체적인 이유가 있어서가 아니다. 아니, 표면적인 이유가 있다고 해도 그것은 서로의 마음이 이미 단절된 뒤에 생기는 것, 나중에 억지로 갖다 붙인 변명 같은 게 아닐까. 마음이 이어져 있다면 인연이 끊길만한 상황이 되었을 때 누군가는 어떻게든 회복하려 들 것이기 때문이다. 그렇게 하지 않는 것은 이미 인연이 끊겼기 때문이다. 그래서 침몰하는 배를 그저 멍하니 바라볼 뿐 네명의 멤버들은 비틀스를 구하려 하지 않는 것이다.-269쪽 - 윤재홍

"우선 남자 친구를 정신 차리게 하는 게 선결 과제라고 해. 남자 한테 확실하게 말해주면 된다고, 기껏해야 스포츠 정도로 여자친구의 발을 묶어놓을 일이 아니다, 올림픽 같은 건 운동회하고 별 다를 것도 없으니깐 괜히 집착할 거 없다, 그렇게 써."-63쪽 - 윤재홍

나에게 상담을 하시는 분들을 길 잃은 어린 아이로 비유한다면 대부분의 경우, 지도를 갖고 있는데 그걸 보려고 하지 않거나 혹은 자신이 서 있는 위치를 알지 못하는 것이었습니다.-447쪽 - 윤재홍

"아니, 몇 마디만 써 보내도 그쪽은 느낌이 크게 다를 거야. 내 얘기를 누가 들어주기만 해도 고마웠던 일, 자주 있었잖아? 이 사람도 자기 얘기를 어디에도 털어놓지 못해서 힘들어하는 거야. 별로 대단한 충고는 못해주더라도, 당신이 힘들어한다는 건 충분히 잘 알겠다, 어떻든 열심히 살아달라, 그런 대답만 해줘도 틀림없이 조금쯤 마음이 편안해질 거라고."-31쪽  - Heine

"해코지가 됐든 못된 장난질이 됐든 나미야 잡화점에 이런 편지를 보낸 사람들도 다른 상담자들과 근본적으로는 똑같아. 마음 한구석에 구멍이 휑하니 뚫렸고 거기서 중요한 뭔가가 쏟아져 나온 거야. 증거를 대볼까? 그런 편지를 보낸 사람들도 반드시 답장을 받으러 찾아와. 우유 상자 안을 들여다보러 온단 말이야. 자신이 보낸 편지에 나미야 영감이 어떤 답장을 해줄지 너무 궁금한 거야. 생각 좀 해봐라. 설령 엉터리 같은 내용이라도 서른 통이나 이 궁리 저 궁리 해가며 편지를 써 보낼 때는 얼마나 힘이 들었겠냐. 그런 수고를 하고서도 답장을 원하지 않는 사람은 절대로 없어. 그래서 내가 답장을 써주려는 거야. 물론 착실히 답을 내려줘야지. 인간의 마음속에서 흘러나온 소리는 어떤 것이든 절대로 무시해서는 안 돼."-158쪽 - Heine

"내가 몇 년째 상담 글을 읽으면서 깨달은 게 있어. 대부분의 경우, 상담자는 이미 답을 알아. 다만 상담을 통해 그 답이 옳다는 것을 확인하고 싶은 거야. 그래서 상담자 중에는 답장을 받은 뒤에 다시 편지를 보내는 사람이 많아. 답장 내용이 자신의 생각과 다르기 때문이지."-167쪽 - 붉은눈

지금 선택한 길이 올바른 것인지 누군가에게 간절히 묻고 싶을 때가 있다. 고민이 깊어지면 그런 내 얘기를 그저 들어주기만 해도 고마울 것 같다. 어딘가에 정말로 나미야 잡화점이 있었으면 좋겠다, 나도 밤새 써 보낼 고민 편지가 있는데, 라고 헛된 상상을 하면서 혼자 웃었다. 어쩌면 진지하게 귀를 기울여주는 사람이 너무도 귀하고 그리워서 불현듯 흘리는 눈물 한 방울에 비로소 눈앞이 환히 트이는 것인지도 모른다.-454쪽  - 붉은눈

## 저자 소개
### 히가시노 게이고 (東野圭吾)
"앞으로도 독자의 기대를 배반하지 않게, 배반할 때는 좋은 의미의 배반이 되도록 하고 싶다.”
_2006년, 《요미우리신문》과의 인터뷰에서

일본 추리소설계를 대표하는 최고의 베스트셀러 작가. 히가시노는 일본 오사카의 이쿠노에서 시계와 안경, 귀금속점 주인의 삼 남매(1남 2녀) 가운데 막내로 태어났다. 그의 성 ‘東野’는 원래 ‘도노’로 읽으나, 아버지가 발음을 ‘히가시노’로 바꾸었다고 전한다. 미스터리에 눈을 뜬 것은 고등학교 2학년 무렵, 고미네 하지메의 『아르키메데스는 손을 더럽히지 않는다』를 읽으면서부터였는데, 그 뒤 사회파 미스터리의 대표 작가인 마쓰모토 세이초의 『점과 선』 『제로의 초점』을 읽으며 추리소설에 빠져들었다. 같은 해 겨울, 추리소설을 쓰기 시작했다.

1977년, 재수 끝에 오사카부립대학 전기공학과에 입학한 그는 처음에는 영화 각본을, 이어 소설을 쓰고자 하는 꿈을 품으나, 자신의 습작을 본 친구에게서 악평을 듣고 소설가의 꿈을 접는다. 1981년, 일본전장주식회사에 엔지니어로 입사하지만 적성에 맞지 않아 2년 차 때부터 진지하게 다른 직업을 고민하기 시작했고, 앞으로 5년 동안 도전해보고 실패하면 포기하자는 각오로 추리작가의 등용문이라 불리는 에도가와란포상에 도전한다. 몇 번의 낙선 끝에 드디어 1985년 『방과 후』로 제31회 에도가와란포상을 수상하면서 전업 작가의 길로 들어섰다.

초기에는 주로 수수께끼 풀이형 추리소설을 썼고, 차츰 인간과 사회 문제에 관심을 가지면서 이에 중점을 둔 사회파 추리소설들을 선보이기 시작했다. 이후 이과적 지식을 바탕으로 기발한 트릭과 반전이 빛나는 본격 추리소설부터 서스펜스, 판타지에 이르기까지 미스터리의 외연을 넓히는 다양한 시각과 재료로 폭넓은 장르의 작품들을 꾸준히 발표해나갔고, 이 중 상당수가 영화와 텔레비전 드라마로 제작되어 많은 사랑을 받았다.

대표작으로 『비밀』(제52회 일본 추리작가협회상) 『용의자 X의 헌신』(제134회 나오키상, 제6회 본격미스터리대상) 『나미야 잡화점의 기적』(제7회 주오코론문예상) 『몽환화』(제26회 시바타렌자부로상) 『기도의 막이 내릴 때』(제48회 요시카와에이지문학상) 『그대 눈동자에 건배』 『위험한 비너스』 『백야행』 『유성의 인연』 『백조와 박쥐』 〈가가 형사 시리즈〉 〈라플라스 시리즈〉 〈매스커레이드 시리즈〉 외 다수가 있다.', 13320, 14800, 10, 0, 70, 0, 100, '2012-12-19 21:04:00', '2023-02-13 21:04:28', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (34, 1, 4, 1, null, '9791188710348', '눈사람 자살 사건', '달아실', 156, '### 책소개
독자들의 많은 사랑을 받았지만 안타깝게도 절판되었던 최승호의 우화집 『황금털 사자』(해냄, 1997)를 복간하였다. 이번에 복간하면서 선생께서 제목도 “눈사람 자살 사건”으로 바꾸었고, 내용도 상당 부분 바꾸었다. 박상순 시인의 북디자인이 또한 책을 새롭게 만드는 데 큰 몫을 했다. 표지 디자인은 물론 본문의 그림도 다 바뀌었다. 따라서 복간이라기보다는 개정판에 가깝다고 하겠다. 최승호 우화집 『눈사람 자살 사건』에 나오는 우화들은 대개 짧다. 웬만한 산문시보다도 짧다. 그런데 그 짧은 문장에 담긴 의미는 결코 가볍지 않다. 결코 녹록지 않다. 또한 처음 책이 나온 지 30년이 훌쩍 지났지만, 최승호 선생이 들려주는 한 편 한 편의 우화는 지금의 세상과 빗대어도 전혀 어색함이 없다. 고전이 그렇듯이 좋은 글은 세월의 풍화를 이겨내는 법이다. 삶이란 무엇인지, 인간관계란 무엇인지, 생태계 속에서 인간과 자연은 어떻게 함께하는지 등등 주옥같은 우화를 만나보기 바란다.

---

### 목차
책머리에

인생연습
거울의 분노
눈사람 자살 사건
개미
비누로 만든 교회
흑암지옥
눈사람의 방문
동냥
천국의 거울
고슴도치 두 마리
마지막 개똥벌레
불면의 시대
도둑
콧구멍 없는 송아지
고수
해탈한 구더기
코뿔소의 선택
초
구덩이
발 없는 새
깨어진 항아리
인간 동물원
망치뱀
이상한 물고기
바다의 비밀
네모 속의 비단잉어
낚시꾼을 끌고 간 물고기
쓸개 빠진 곰
북어대가리
황금털 사자
개미귀신
심판
생명
오, 징그러운 고기
불로장생
요강
놀림
빠른 시계들
편지
왕도
흉
발이 큰 올빼미
벌목
들장미
누에
안개
꿈
가면을 쓴 늙은이
흑국의 슬픔
혀
새우의 힘
독사와 돼지
앵무새 학교
게들의 식탁
구름을 먹는 기린
물뚱뚱이 왕
늪
질투
제비와 제비꽃
어느 기회주의자의 죽음
암탉은 말한다
빵가게 주인
할미꽃
천왕지팡이
고통과 광기
분열된 다올 씨
두 겹의 꿈
결박
오해
열등감
정원사
슬픔
처세술 강의
물 위에 쓰는 우화

그림 목록', 11700, 13000, 10, 0, 40, 0, 100, '2019-03-18 21:04:00', '2023-02-13 21:05:08', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (35, 1, 5, 1, null, '9780810987586', 'Diary of a Wimpy Kid #1', 'Amulet Books', 217, 'Boys don''t keep diaries-or do they?

The launch of an exciting and innovatively illustrated new series narrated by an unforgettable kid every family can relate to

It''s a new school year, and Greg Heffley finds himself thrust into middle school, where undersized weaklings share the hallways with kids who are taller, meaner, and already shaving. The hazards of growing up before you''re ready are uniquely revealed through words and drawings as Greg records them in his diary.

In book one of this debut series, Greg is happy to have Rowley, his sidekick, along for the ride. But when Rowley''s star starts to rise, Greg tries to use his best friend''s newfound popularity to his own advantage, kicking off a chain of events that will test their friendship in hilarious fashion.

Author/illustrator Jeff Kinney recalls the growing pains of school life and introduces a new kind of hero who epitomizes the challenges of being a kid. As Greg says in his diary, "Just don''t expect me to be all ''Dear Diary'' this and ''Dear Diary'' that." Luckily for us, what Greg Heffley says he won''t do and what he actually does are two very different things.

Since its launch in May 2004 on Funbrain.com, the Web version of Diary of a Wimpy Kid has been viewed by 20 million unique online readers. This year, it is averaging 70,000 readers a day.
', 5320, 9500, 44, 0, 50, 0, 100, '2009-08-06 21:05:00', '2023-02-13 21:06:00', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (36, 1, 4, 1, null, '9788931426939', '쇼핑몰 예제로 배우는 .NET Programming', '영진출판사', 912, '## 책소개
##### 닷넷이라는 새로운 패러다임하에서 개발하기 위해서 꼭 필요한 지식들을 간략하게 설명하고 MSF/CD 개발 방법론에 입각한 설계를 보여줌으로써 실무에 그대로 적용될 수 있는 쇼핑몰의 제작과 다른 닷넷 프로젝트의 진행에 필요한 프로젝트 진행 방법을 설명한다.

## 목차

###### 1. .Net Platform overview
###### 2. .NET Framework
###### 3. .NET Language
###### 4. Designing E-Commerce Application With .NET
###### 5. .NET N-Tier Architecture
###### 6. B2C 응용프로그램과 B2B 응용프로그램
###### 7. 간단한 B2C 응용 프로그램 제작
###### 8. Software Design
###### 9. BookStore 응용 프로그램 - 개발 방법론편
###### 10. BookStore 응용프로그램 - 설계편
###### 11. BookStore 응용프로그램 - 단계별 구현

## 저자 소개
저자 김상훈은 Rock 음악과 영화보기, 기타 연주를 무엇보다 좋아하는 Rocker였으나 사랑스런 아내와 두 아들 바보가 되어버린 중년남. 닷넷 프로그래밍과 SQL Server Analysis Services를 사용하여 가정용 Business Intelligence를 구축하고 내집 마련 5개년 계획 프로젝트를 수행 중. BI Everywhere 컨셉에 발맞추어 사는 성실남. 죽기전에 제대로 된 한국어판 Data Warehousing/Business Intelligence 서적 한 권 쓰는게 소원.공학박사, 동명대학교 정보기술원 책임 연구원, 동명대학교 컴퓨터공학과 강사, 마이크로소프트 고객기술지원부 차장

#### 저서
웹 마스터 바이블 (영진닷컴)
쇼핑몰 예제로 배우는 닷넷 프로그래밍 (영진닷컴)
MS.NET 기반의 XML 기초 (홍릉과학 출판사)
MS.NET 기반의 데이터베이스 시초 (홍릉과학 출판사)
게시판과 블로그 예제로 배우는 ASP.NET 2.0 (영진닷컴)
Visual Studio 2008 완벽가이드 (영진닷컴)

#### 역서
Practical Java (21세기사)
최근작 : <관리자를 위한 SQL Sever 2012 운영 완벽가이드>,<Visual Studio 2008 완벽가이드>,<게시판과 블로그 예제로 배우는 ASP.NET 2.0> … 총 14종', 23800, 28000, 15, 0, 80, 0, 100, '2004-01-05 21:07:00', '2023-02-13 21:07:46', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (37, 1, 6, 1, null, '9791155310939', '한국과 한국정치', 'NHN 출판사', 544, '책 소개
이 책이 속한 분야

미디어 추천도서 > 주요일간지소개도서 > 경향신문 > 2018년 2월 4주 선정
민주주의에서 통일까지,
한국 정치 비판의 무기를 벼리다!


70년대 학생운동과 강제 징집
80년대 언론 탄압과 미국 유학
90년대 사회과학과 사회운동
2000년대 신자유주의와 촛불혁명
시대를 살아온 한 진보적 정치학자의 사색', 21600, 24000, 10, 0, 50, 0, 100, '2022-01-13 21:07:00', '2023-02-13 21:07:48', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (38, 1, 2, 1, null, '8909143592', '왜 운동을 해야 할까', '교학사', 32, '## 책소개
몸과 마음을 건강하게 해 주는 운동에 관한 궁금증들을 풀어 봅니다. ‘운동은 왜 건강에 좋을까?’ ‘운동은 어떻게 선택해야 할까?’ ‘팀 경기란 뭘까?’ 등 어린이들이 흔히 던지는 질문들에 알기 쉬운 설명과 재미있는 퀴즈와 그림으로 답해 줍니다. 질병을 예방하고 활기찬 생활을 하게 해 주는 운동의 고마움을 깨닫고, 건강을 위해 자신에게 맞는 운동을 꾸준히 하는 생활 습관을 기를 수 있습니다.

이 책은 재미있게 놀면서 건강 상식을 배우는 「나의 첫 건강 교실」시리즈 중 한 권에 해당합니다. 어린이들이 자신의 몸과 자신을 둘러싼 세상에 대해 갖는 궁금증들을 풀어 주기 위해 만들어진 지식 그림책이지요. 소아과 의사이자 어린이 건강 교육 전문가로 활동해 온 저자가 어린이들이 자주 던지는 질문들을 주제별로 묶어, 몸도 마음도 건강하게 자라나는 정보와 지혜를 친절하게 알려 줍니다.
<hr/>

## 목차
운동이란 무엇일까?
운동은 왜 건강에 좋을까?
운동은 어떻게 선택해야 할까?
팀 경기란 뭘까?
자신을 어떻게 보호해야 할까?
운동 선수의 충고
항상 건강하게!
모두가 일등!
여러 가지 운동 경기들
어려운 낱말들', 6750, 7500, 10, 0, 50, 0, 200, '2008-10-15 21:07:00', '2023-02-13 21:07:55', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (39, 1, 6, 1, null, '9788956026442', '가난하다고 꿈조차 가난할 수는 없다', '사회평론', 355, '책 속으로
분명히 쉽게 공부할 수 있는 환경은 아니었다. 그러나 돌이켜 보면, 그때가 나를 담금질할 수 있는 시기였던 것 같다. 내가 돈 많은 집안에서 태어나 아무 걱정 없이 공부할 수 있었다면, 결코 악착 같은 오기나 승부근성을 가지지는 못했을 것이다. 어려운 환경은 공부에 임하는 내 자세를 더욱 진지하게 만들었다. 부족한 환경이었기 때문에 가질 수 있었던 ‘의지’와 부족한 형편임에도 놓지 않았던 부모님의 교육에 대한 열정과 철학이 흔들리지 않는 튼튼한 나의 뿌리를 만들었다. -가난은 오히려 나를 채찍질하였다 그때 우리는 초단위로 살았다. 늘 시간이 우리의 목을 조였다. 시계초침 돌아가는 소리마저 겁이 났다. 정상적으로 한다면 주어진 시간 내에 마치기 힘든 분량의 과제들이 매일같이 쏟아졌다. 과제 때문에 밤을 새는 건 일상이 되었다. 당연히 쉬는 시간도 없었다. 과제를 제대로 해가기 위해서는 저녁에 나오는 간식을 굶고, 그 다음날 아침을 굶고, 점심까지 굶어야 했다. 물론 능력이 특출하게 좋은 친구들은 아침까지만 굶으면 되었다. -꽃피는 전우애 엄마 아들 현근이에게 현근아, 이번 시험 결과가 만족스럽지 못해서 상당히 불만인 너를 보면서 엄마는 네 개 해줄 말이 많았지만 네 스스로 좋은 방향으로 조절할 것이라 믿으며 그냥 지켜보았단다. 엄마 아들을 믿기에……. (중략) 경쟁에서 남들을 이기려고만 한다면 너 자신은 항상 남을 의식하고 공부할 수밖에 없고, 결과가 나오면 언제나 너 자신만 고달파진단다. 그래서 엄마는 현근이 네가 너 자신을 상대적으로 놓고 남과 비교하면서 살지 말고 절대적인 네 삶을 살아가길 바라고 있어. 공부에 있어서도 남을 의식하지 말고 그냥 네 자신을 위해 열심히 최선을 다하는 것만 생각하렴. 그럼 공부 그 자체가 즐거워질 거야. (중략) 결과에 너무 연연해하지 말고 빨리 털어버리고 밝게, 즐겁게 생활하는 모습을 엄마는 기대한단다. 우리 아들은 그렇게 되리라 믿어. 고민 있으면 언제든지 선생님 찾아 뵙고, 꼭! 파이팅, 현근! 사랑한다!!! 엄마 아들 기숙사에서 엄마가. -나의 소속은 꼴찌그룹 나는 세 가지 이유에서 유학을 결심했다. 첫째, 더 넓은 세상에서, 전 세계에서 모인 인재들과 선의의 경쟁을 하면서 나를 발전시키고 싶었고, 둘째, 내가 어디까지 해낼 수 있는지를 시험하고 싶었으며, 셋째, 더 큰 세계 속에서 내가 원하는 것을 찾고 싶었다. 그런데 이런 소망을 충족시키기 위해서는 유학을 가더라도 최고의 대학을 가야만 했다. - 기다려라, 프린스턴! 과학영재학교에서 3년을 공부한 것도, 능력 이상으로 많은 것을 누리며 유학을 준비한 것도, 모두 내가 이 사회에 빚을 진 것이다. 그런 소중한 빚 덕분에, 나는 계속 전진할 수 있는 기회를 얻을 수 있었다. 나만을 위한 전진은 아닐 것이다. 이 사회와 국가를 위해 내가 값진 역할을 해줄 것이라는 암묵적 약속이 있는 것이다. 그러기 위해서 나는 더욱 온몸으로 배우고, 전진하며, 깨달을 것이다. - 꿈이 없다면 공부도 없다', 9720, 10800, 10, 0, 50, 0, 100, '2006-05-16 21:07:00', '2023-02-13 21:08:10', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (40, 2, 3, 1, null, '9791185473437', '진짜 기본 요리책', '레시픽팩토리', 356, '### 책소개
왕초보들의 마음을 읽은 생활미식 요리잡지 『수퍼레시피』는 지난 2013년, 요리 초보 독자 패널 100명과 함께 『진짜 기본 요리책』을 만들었다. 출간 즉시 모든 온라인 서점 요리책 1위가 되며 베스트셀러에 올랐고, ‘국민 요리책’, ‘신혼 필수품’ 이라 불리며 20만 부 이상 판매, 지금까지도 스테디셀러로 많은 사랑을 받고 있다. 이러한 『진짜 기본 요리책』이 출간 5주년을 맞아 또 한 번의 도전을 시도 해 완전 개정판을 준비했다.

이번 완전 개정판에는 그간 독자가 들려준 생생한 리뷰를 토대로 기존의 좋은 것은 더 빛나게, 부족한 점은 더 탄탄하게 보강했다. 또한 기존 레시피는 물론이고 요즘 사람들이 배우고 싶어하는 요리까지 총 320개의 기본 메뉴와 100여개의 응용 방법까지 만날 수 있다. 모든 레시피는 처음 요리를 시작하는 초보도 따라 하면 성공할 수 있도록 수차례 테스트해 레시피, 분량, 불 세기, 조리 시간, 저장 기간까지 정확하게 제시했다. 많은 칭찬을 받았던 밥 짓기, 냉장고 정리, 칼 잡는 법 등의 기본 정보들은 요즘의 라이프 스타일에 맞춰 정리했다. 그릇, 플레이팅에도 신경을 썼으니 요리하는 재미와 함께 SNS에 요리를 공유하는 즐거움도 경험할 수 있다.

---

### 출판사 리뷰
“진짜, 그냥 딱, 멋 부리지 않은, 기본 요리만 담긴 요리책이 필요해요.”

요리 초보들이 바라는 건 큰 것이 아닙니다. 어려운 조리법, 구하기 힘든 재료, 새로운 스타일의
퓨전 요리가 아닌 매일 식탁에 올릴 수 있는 가장 기본 요리를 알려줄 요리책 딱 한 권이지요.
그러한 왕초보들의 마음을 읽은 생활미식 요리잡지 『수퍼레시피』는 지난 2013년, 요리 초보 독자 패널 100명과 함께 『진짜 기본 요리책』을 만들었습니다. 출간 즉시 모든 온라인 서점 요리책 1위가 되며 베스트셀러에 올랐고, ‘국민 요리책’, ‘신혼 필수품’ 이라 불리며 20만 부 이상 판매, 지금까지도 스테디셀러로 많은 사랑을 받고 있지요.

이러한 『진짜 기본 요리책』이 출간 5주년을 맞아 또 한 번의 도전을 시도합니다. 바로 완전 개정판을 준비한 것입니다. 처음 『진짜 기본 요리책』을 만들 때와 마찬가지로 독자 패널 100분과 함께 만들었는데요, 바로 『진짜 기본 요리책』을 통해 왕초보를 확실히 탈출하신 분들이 그 주인공이랍니다.

이번 완전 개정판에는 그간 많은 독자님들이 들려준 생생한 리뷰를 토대로 기존의 좋은 것은 더 빛나게, 부족한 점은 더 탄탄하게 보강했습니다. 또한 기존 레시피는 물론이고 요즘 사람들이 배우고 싶어하는 요리까지 총 320개의 기본 메뉴와 100여개의 응용 방법까지 만날 수 있습니다. 물론 이 모든 레시피는 처음 요리를 시작하는 초보도 따라 하면 성공할 수 있도록 수차례 테스트해 레시피, 분량, 불 세기, 조리 시간, 저장 기간까지 정확하게 제시했지요. 많은 칭찬을 받았던 밥 짓기, 냉장고 정리, 칼 잡는 법 등의 기본 정보들은 요즘의 라이프 스타일에 맞춰 정리했답니다. 거기에 그릇, 플레이팅에도 신경을 썼으니 요리하는 재미와 함께 SNS에 요리를 공유하는 즐거움도 경험해보시기를 바랍니다.

참! 초보들에게 든든한 길잡이가 되고자 레시피 A/S도 해드립니다. 애독자 온라인 카페(cafe.naver.com/superecipe)에 궁금한 점을 언제든지 남겨주세요. 『진짜 기본 요리책』 메뉴를 개발한 테스트 쿡이 빠르고 친절하게 알려 드릴게요.

자, 무엇보다 가장 중요한 이야기! 『진짜 기본 요리책』은 처음 선보인 2013년에도, 완전 개정판이 탄생한 2018년에도 늘 엄마 밥상에서 막 독립해 오늘 바로 요리를 시작해야 하는 진짜 왕초보들을 생각하며 만들었습니다.

두려워 마세요! 『진짜 기본 요리책』과 함께라면 요리가 점점 재미있어질 거예요!

이 책의 7가지 강점

1 『진짜 기본 요리책』으로 요리 왕초보를 탈출한 애독자 100명을 패널로 선정, 처음 책을 만들 때처럼 여러 번의 설문을 통해 개정판의 보강 포인트를 찾았습니다.

2 기존 레시피는 물론이고 요즘 사람들이 배우고 싶어 하는 요리까지! 기본 메뉴 320개, 응용방법 100여개, 총 420여개의 레시피를 만날 수 있습니다.

3 오늘 처음 요리를 시작하는 왕초보도 따라 하면 성공할 수 있도록 수차례 테스트해 분량, 불 세기, 조리시간, 저장 기간까지 정확히 제시했습니다.

4 왕초보들이 요리하다가 놓치기 쉬운 포인트를 샅샅이 찾아
레시피마다 실수 방지 팁을 실었습니다.

5 재료 고르는 법부터 남는 재료 냉장&냉동, 해동법까지 왕초보들이 궁금해 하는 정보들을 총망라했습니다. 기호에 따라 선택할 수 있도록 다양한 양념, 대체 재료, 매운맛 조절 등 여러 종류의 옵션을 제시했습니다.

6 레시피뿐만 아니라 그릇, 요리 담음새까지 신경을 썼습니다. 요리하는 재미와 함께, 나만의 식탁을 꾸밀 수 있는 즐거움도 제안합니다.

이 책을 구입한 독자들의 리뷰(온라인 서점, 커뮤니티 발췌)

#국민요리책 #내요리의 #시작 #자신감
- 인스타그램 yungrowing 님 리뷰 중에서

“초보라는 관점에서 굉장히 기본에 입각한 책 이에요.
궁금한 요리 용어부터 밥 짓기와 같은 진짜 기초까지.
어떻게 하면 요리를 잘할 수 있는지에 대해 완벽하게 파악하고 만든 것 같아요.”
- 교보문고 powermanv 님 리뷰 중에서

“진짜 제대로 된, 나긋나긋 친정엄마처럼 하나씩 알려주는 필수 요리 지침서랍니다.
레시피 A/S까지 해주는 요리책이 또 있을까 싶습니다.”
- 애독자 카페 명랑나츠코 님 리뷰 중에서

“시금치나 콩나물은 한 봉지 사면 늘 남아 처치 곤란이잖아요.
이 책은 시금치 요리 2~3개, 콩나물 요리 4~5개, 이런 식으로 구성되어 있어서
식재료 절약은 물론, 냉장고 비우기 실천에도 제격이랍니다.”
- Yes24 jycjstk3 님 리뷰 중에서

“결혼 후 집밥의 여왕이 되기 위해 여기저기 찾아 헤맸지만 늘 실패를 거듭했어요. 그때 만난 것이 바로 『진짜 기본 요리책』! 일상 재료로 쉽고 맛있게 요리할 수 있도록 해준답니다.”
- 블로그 햄모양처 님 리뷰 중에서

“진짜 기본이라고 생각하는 요리는 다 들어 있어요. 무엇보다
하나의 재료에 다양한 양념을 더해 요리하는 법이 정말 마음에 들어요.
주방에 두고 가장 많이 보는 요리책입니다.” - 인터파크도서 토리 님 리뷰 중에서

“재료 보관법, 냉장고 정리, 불 조절 등 요리 고수들에게는 하찮을 수 있지만
왕초보에게는 꼭 필요한 내용들이 자세하게 나와서 좋아요.
결혼 예정인 친구들에게 제가 꼭 추천하는 책이에요. ” - 알라딘 다독다독 님 리뷰 중에서

“이 책에는 화려하고 특별한 레시피는 없어요. 평범하고 일상적인 요리들로 채워졌지요.
그래서 더 좋습니다. 진짜 생 초보, 왕초보에게는 이게 진짜 필요한 거거든요.”
- 블로그 블로곰 님 리뷰 중에서', 16920, 18800, 10, 0, 60, 0, 100, '2018-08-24 21:07:00', '2023-02-13 21:08:11', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (41, 3, 1, 1, null, '9791140702121', '스프링 부트로 개발하는 MSA 컴포넌트', '길벗', 768, '## 책소개
###### 마이크로서비스 아키텍처 환경에서
###### 컴포넌트를 개발할 때 무엇이 필요한지 알아보고,
###### 이때 필요한 스프링 부트 사용법을 익힌다!
###### 
###### 마이크로서비스 아키텍처는 대규모 서비스의 ‘정답’처럼 여겨지기도 하지만, 실제로 구현하기도 어렵고 여러 시스템이 유기적으로 얽혀 있어 운영이 쉽지 않은 복잡한 아키텍처다. 그러므로 개발 단계나 운영 단계에서 아키텍처에 대한 이해가 매우 중요하다. 이를 돕기 위해 오랫동안 MSA 컴포넌트를 개발하며 커리어를 쌓아온 베테랑 개발자가 MSA 환경에서 컴포넌트를 짤 때 알아야 할 것들을 실무 관점으로 풀어냈다.

## 목차
##### 1장 마이크로서비스 아키텍처
1.1 모놀리식 아키텍처 소개
1.2 마이크로서비스 아키텍처 소개
1.3 마이크로서비스 아키텍처 설계
1.4 스프링 투어의 아키텍처 변화
1.5 12 요소 애플리케이션
1.6 정리 64

##### 2장 프레임워크와 스프링 부트
2.1 스프링 투어가 스프링 부트를 선택한 이유
2.2 스프링 프레임워크
2.3 스프링 부트 소개
2.4 스프링 부트 애플리케이션 시작하기
2.5 정리

##### 3장 스프링 애플리케이션 기본
3.1 스프링 빈 사용
3.2 자바 설정
3.3 스테레오 타입 스프링 빈 사용
3.4 의존성 주입
3.5 ApplicationContext
3.6 스프링 빈 스코프
3.7 스프링 빈 생명주기 관리
3.8 스프링 빈 고급 정의
3.9 스프링 투어가 오해한 스프링 빈

##### 4장 스프링 웹 MVC 개요
4.1 HTTP 프로토콜
4.2 스프링 웹 MVC 프레임워크
4.3 REST-API 설계
4.4 간단한 REST-API 예제

##### 5장 스프링 MVC를 이용한 REST-API 개발
5.1 REST-API: GET, DELETE 메서드 매핑
5.2 REST-API 응답 메시지 처리
5.3 REST-API POST, PUT 매핑
5.4 ResponseEntity 응답과 Pageable, Sort 클래스
5.5 REST-API 검증과 예외 처리
5.6 미디어 콘텐츠 내려받기

##### 6장 웹 애플리케이션 서버 구축하기
6.1 웹 애플리케이션 기본 설정
6.2 HttpMessageConverter와 REST-API 설정
6.3 Interceptor와 ServletFilter 설정
6.4 Application.properties 설정
6.5 Profile 설정
6.6 REST-API와 국제화 메시지 처리
6.7 로그 설정
6.8 애플리케이션 패키징과 실행

##### 7장 스프링 AOP와 테스트, 자동 설정 원리
7.1 스프링 AOP
7.2 스프링 부트 테스트
7.3 스프링 부트 자동 설정

##### 8장 데이터 영속성
8.1 JPA
8.2 MySQL 실행 환경 설정 458
8.3 Spring Data JPA 기능과 설정
8.4 엔터티 클래스 설계
8.5 리포지터리 개발과 JpaRepository
8.6 Spring Data JPA의 쿼리 메서드 기능
8.7 트랜잭션과 @Transactional
8.8 EntityManager
8.9 엔터티 연관 관계 설정
8.10 엔터티 상태 이벤트 처리
8.11 트랜잭션 생명주기 동기화 작업

##### 9장 애플리케이션 통합: REST-API
9.1 RestTemplate 클래스
9.2 WebClient

##### 10장 레디스와 스프링 캐시
10.1 레디스 소개 및 아키텍처
10.2 Spring Data Redis 사용
10.3 Lettuce 라이브러리와 커넥션 설정
10.4 레디스 문자열 예제와 RedisSerializer 설정
10.5 레디스 분산 락 사용 예제
10.6 레디스 Sorting 구현 예제
10.7 레디스 Pub-Sub 구현 예제
10.8 스프링 프레임워크 캐시

##### 11장 스프링 스케줄링 태스크
11.1 스케줄링 설정
11.2 스케줄링 태스크 정의
11.3 배치 서버 아키텍처

##### 12장 스프링 이벤트
12.1 스프링 이벤트 장점
12.2 사용자 정의 이벤트 처리
12.3 비동기 사용자 정의 이벤트 처리
12.4 @Async 애너테이션을 사용한 비동기 이벤트 처리
12.5 @EventListener
12.6 스프링 애플리케이션 이벤트
12.7 트랜잭션 시점에 구독한 이벤트 처리

##### 부록 A 예제 코드 사용법
A.1 예제 코드 실행하기
A.2 도커 이미지 생성하기

##### 찾아보기

## 저자 소개
### 김병부
###### 광운대학교 무선네트워크 연구실에서 석사 학위를 받았다. 지금은 NHN Dooray에서 백엔드 시스템을 개발하고 있으며, 동시에 NHN Academy에서 미래의 개발자에게 기술을 전파하는 즐거움도 느끼고 있다. 저서로는 『자바를 다루는 기술』, 『Linux Server Bible』, 『ASP.NET 30일 완성』 등이 있다.', 39600, 44000, 10, 0, 100, 0, 300, '2022-11-18 21:09:00', '2023-02-13 21:10:04', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (42, 1, 3, 1, null, '9791167790231', '죽음에관하여', 'NHN 출판사', 276, '# 책 내용

``` 
당신의 죽음은 언제인가요.
죽음을 통해 삶을 이야기 하는 책.
‘인생 웹툰’ 〈죽음에 관하여〉 스페셜 에디션 출간!
수많은 독자에게 ‘추천하고 싶은 웹툰’, ‘인생 웹툰’으로 회자되는 웹툰 〈죽음에 관하여〉가 스페셜 에디션으로 출간된다. 〈죽음에 관하여〉 스페셜 에디션은 깔끔하게 재작업한 이미지와 재연재 에피소드가 추가되었으며 양장판으로 제작된다. 또한, 스페셜 에디션 2권에서는 미공개 단편 소설과 특별 일러스트가 수록되었으며 작품 감상에 몰입을 더해준 OST CD가 증정된다.

2012년 네이버에서 연재를 시작한 〈죽음에 관하여〉는 생사의 갈림길에서 벌어지는 일들을 옴니버스 식으로 전개하는 작품이다. 만물이 반드시 거쳐야 할 마지막 관문인 죽음을 통해 역설적으로 삶의 소중함을 깨닫게 하며, 매 회 독자들에게 호평을 받아왔다. 철학적인 주제뿐만 아니라 에피소드마다 매력적인 인물과 대사, 허를 찌르는 반전, 탄탄한 구성으로 작품의 저력을 보여줬다. 또한, 꾸준히 많은 독자에게 ‘인생 웹툰’으로 꼽히며 2018년 네이버에서 재연재를 시작했다. 〈죽음에 관하여〉 스페셜 에디션은 애독자들에게는 소장 가치가 충분한 선물이며, 작품을 충분히 음미할 수 있는 감동을 선사할 것이다.
```

### 출판사 서평
삶과 죽음의 경계선, 그리고 지금
당신은 어떤 이야기를 들려줄 수 있나요?

출간 후 스테디셀러를 유지하며 큰 사랑을 받은 웹툰 〈죽음에 관하여〉가 스페셜 에디션으로 출간되었다. 〈죽음에 관하여〉는 개성 있는 인물들, 삶에 대한 진중한 태도 등으로 많은 독자에게 사랑받고 있다.

당신은 신을 만나는 상상을 해본 적 있는가.
 생의 모든 여정을 마친 후에 말이다.
 그 신이 ''가는 길 심심한데 네 이야기 한번 듣지''라고 한다면, 당신은 어떤 이야기를 해줄 수 있는가. 
〈죽음에 관하여〉에서 각 에피소드의 인물들은 시니컬하지만 따뜻한 신을 통해 ‘한 번뿐인 생’의 중요성을 죽어서야 깨닫게 된다.
 그 깨달음은 작품 속 인물뿐만 아니라, 독자 역시 깨달음 ‘과연 나는 삶의 끝에서 어떤 이야기를 들려줄 것인지’를 자문하게 된다.

〈죽음에 관하여〉는 시니, 혀노 두 작가의 인간과 삶에 대한 애정과 고찰이 곳곳에 묻어난 작품이다.
 〈죽음에 관하여〉 스페셜 에디션은 작품을 보다 몰입하여 즐길 수 있도록 깔끔하게 재작업한 이미지와 편집이 돋보인다.
 특히 스페셜 에디션 2권에서는 작품의 근본적인 주제를 통찰하는 단편 소설과 풍미를 더해줄 OST 등이 수록되었다. 

이를 통해 작품을 즐기는 또 다른 묘미와 두 작가의 각별한 애정을 느낄 수 있을 것이다. 매 순간 자기 몫의 삶을 온전히 살아내는 모든 이에게 건네는 따뜻한 위로와 격려가 고스란히 전달될 것이다. ‘인생 웹툰’, ‘영화로 재탄생하길 가장 기대하는 작품’, ‘한 획을 그은 웹툰’이라는 찬사가 아깝지 않음을 느낄 수 있다.', 14400, 16000, 10, 0, 90, 0, 150, '2017-01-12 21:12:00', '2023-02-13 21:12:35', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (43, 3, 1, 1, 23, '9791191043976', '오늘 밤, 세계에서 이 눈물이 사라진다 해도', '모모', 324, '### 책소개
30만 부 돌파 베스트셀러, 일본 영화 개봉·한국 영상화 확정
『오늘 밤, 세계에서 이 사랑이 사라진다 해도』 스핀오프 전격 출간!

“전작을 뛰어넘는 반전과 뜨거운 눈물.
슬픔이 가슴을 후벼 판다는 표현으로는 부족하다.” _독자 리뷰 중

한국에서만 누적 판매 부수 30만 부, 한국·일본·중국을 합해 50만 부 이상 판매된 베스트셀러 『오늘 밤, 세계에서 이 사랑이 사라진다 해도』의 후속작인 『오늘 밤, 세계에서 이 눈물이 사라진다 해도』가 드디어 출간되었다.

“내 생애 최고의 로맨스 소설”, “이렇게 펑펑 울어본 책은 처음이다”, “공공장소에선 절대 읽지 마시오”, “사랑의 정의를 다시 쓰게 한 책”이라는 독자들의 찬사를 받으며 베스트셀러에 오른 『오늘 밤, 세계에서 이 사랑이 사라진다 해도』는 한국에서의 폭발적인 판매에 힘입어 일본에서도 역주행의 신화를 쓴 이례적인 기록을 남긴 소설이기도 하다. 한 편의 청춘 영화를 보는 듯 장면 장면이 생생히 그려져 수많은 영화 제작사에서 판권 문의가 쇄도했던 이 책은 결국 [나는 내일, 어제의 너와 만난다], [사랑하고 사랑받고 차고 차이고] 등을 만든 미키 타카히로 감독이 연출하고, ‘천년남돌’로 불리는 미치에다 슌스케, ‘떠오르는 신예’ 후쿠모토 리코 주연의 영화로 제작되어 7월 29일 일본 개봉을 앞두고 있다.

전작의 남자 주인공인 가미야 도루가 떠난 지 1년 후의 시점에서 시작되는 이번 책은 전작에서 반전의 핵심 키를 쥐고 있던 와타야 이즈미를 주인공으로 내세워 또 한 편의 가슴 아린 사랑 이야기를 펼쳐놓는다.

밤에 자고 일어나면 기억이 리셋되는 ‘선행성 기억상실증’을 앓는 히노 마오리와 자신보다 상대를 먼저 생각하는 이타적 순애보를 보여준 가미야 도루. 그들 곁에서 도루를 향한 자신의 마음을 감춘 채 가장 친한 친구이자 조력자의 위치에 머물러야 했던 와타야.

전편에서 미처 다 풀어놓지 못했던 이야기, 와타야와 도루 사이에 있었던 숨겨진 일화가 와타야 앞에 나타난 새로운 사랑 이야기와 촘촘하게 얽혀 이번에도 이변 없이 독자들의 눈물샘을 건드린다.

---

### 목차
1장 이별하는 방법을 알려줘
2장 모르는 그녀의, 알 수 없는 그녀
3장 이 세상 빛의 한가운데서
4장 마지막 결빙
5장 너에게

작가의 말', 12600, 14000, 10, 0, 30, 0, 100, '2022-07-08 21:12:00', '2023-02-13 21:12:53', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (44, 3, 4, 1, null, '9791191769203', '빠르게 실패하기', '스노우폭스북스', 364, '## 책소개
### MD 한마디
---
```
스탠퍼드대 <인생 성장 프로젝트>를 통해 성공한 사람들의 공통적인 생각과 행동 패턴을 정리한 책이다. 거창한 목표와 계획보다는 당장에 할 수 있는 작은 것부터 시도하고 행동하도록 이끌고 있다. 실패를 하더라도 과감한 행동은 결국 성공을 이끌어내는 원동력임을 일깨워준다. - 자기계발 MD 김상근
철저한 준비와 계획? 그건 그저, 지금 생각일 뿐.
가능한 더 빨리 시작하고 최대한 더 많이 실패하십시오.
```

---
이 책의 저자 존 크롬볼츠와 라이언 바비노는 미국 진로 상담분야의 최고 권위자이며 교수다. 그들은 미국상담협회로부터 ‘살아 있는 전설’상을 수상했으며 협회가 수여하는 ‘명예의 전당’에 오르며 업적을 인정받았다.『빠르게 실패하기』는 20년간 진행된 스탠퍼드 대학교의 [인생 성장 프로젝트]연구에 참여하여 얻은 특별한 결과를 담은 책이다. 저자들은 연구기간 동안 성공한 사람들에게 나타나는 일련의 공통적인 행동 패턴을 찾았고 그 핵심내용을 이 책에 총 9개의 장으로 구성했다. 그들이 실험하고 제안한 이 ‘작은 행동의 힘’은 개인의 삶과 사업에 있어 가장 필요한 행동을 큰 준비 없이 즉각 실행하게 만든다. 그들은 ‘더 잘 준비되고, 더 대단한 목표가 성공에 중요한 요소가 아님을 밝혀냈다. 오히려 지금 당장 시작할 수 있는 작은 행동을 통해 더 많고, 잦은 실패에 성공의 열쇠가 있음을 발견하게 된다는 사실을 강조한다.

--- 
흔히 대다수의 사람은 어떤 일을 시작하기에 앞서 앞으로 자신이 도달할 거창한 목표를 세운다. 그리고 그 성공에 필요한 셀 수 없이 많은 요소들을 출력한다. 그 요소들이 있어야 성공에 다가갈 수 있다고 여기는 것이다. 그 요소들을 준비하는데 드는 시간과 비용, 노력을 쏟는 동안 실제 목표는 아직 시작하지 못하거나 사전 준비 과정에 너무 많은 에너지를 사용해 사업적 타이밍을 놓치거나 인생의 기회를 놓치는 일이 많음을 역설한다.

하지만 이런 일련이 방식은 실패했을 때 리스크를 필요 이상으로 키우는 결과를 낳으며 쉽고 간편하게 경험해 봄으로써 일이 더 나은 방향으로 전환될 수 있는 기회를 날리고 말 뿐이라는 것이다. 분명 이 책에서 제안하는 작은 행동은 우리에게 낯선 제안이다. 하지만 이들이 밝혀낸 바에 따르면 성공하는 사람들과 그렇지 않는 사람들 사이에는 분명한 차이가 있었다. 그 핵심은 바로, 우리가 그동안 배우고 종용받아온 ‘목표설정과 계획하기’를 얼마나 가볍게 다루느냐에 있었다.', 13200, 16500, 20, 0, 50, 0, 100, '2022-08-31 21:11:00', '2023-02-13 21:13:06', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (45, 1, 3, 1, null, '9791191824193', '내게 남은 사랑을 드릴게요', '자이언트북스', 296, '## 책소개
MD 한마디
[다섯 명의 소설가가 그려 낸 사랑의 모습] 어느 작품 하나도 놓칠 수 없는 동시대 젊은 작가들의 앤솔러지 소설집. 다섯 편 모두 기존 문단 문학과 SF 사이를 자유롭게 오가며 우정과 사랑, 그리고 그 너머의 마음들까지 헤아린다. 장의사 안드로이드, 바이오 해킹 등 조금 낯선 소재지만, 당신의 시야를 환히 넓혀줄 것이다. - 소설/시 MD 김유리

이유리 김서해 김초엽 천선란 설재인. 자이언트북스가 Pick한 빛나는 이름들. 영원한 클래식처럼, 오래도록 읽고 싶은 앤솔러지 시리즈―자이언트 픽.

## 목차
###### 내게 남은 사랑을 드릴게요 이유리 7쪽
###### 폴터가이스트 김서해 59쪽
###### 수브다니의 여름휴가 김초엽 123쪽
###### 미림 한 스푼 설재인 175쪽
###### 뼈의 기록 천선란 231쪽
###### 발문 | 남은 사랑을 볼 수 있다면 김겨울 279쪽

## 저자 소개
### 이유리
‘능청스러우면서도 낯선 상상력과 활달한 문체가 인상적’이라는 평과 함께 2020년 경향신문 신춘문예에 「빨간 열매」가 당선되며 작품 활동을 시작했다. 식물과 고양이를 사랑하고 싱그러운 기운이 가득한 소설을 쓴다. 문학 플랫폼 [던전]의 운영진으로 활동했고, 『괴담』, 『인어의 걸음마』에 표제작을 수록하는 등 여러 SF 앤솔러지에 참여했다.', 15010, 15800, 5, 0, 50, 0, 50, '2023-01-30 21:14:00', '2023-02-13 21:14:44', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (46, 1, 1, 1, null, '9791140702046', '2023 시나공 기출문제집 정보처리기사 필기', '길벗', 336, '## 책소개
『2023 시나공 기출문제집 정보처리기사 필기』는 초단타 합격 전략집입니다.

최근 출제된 최신 기출문제 9회분을 수록하고 문제마다 시험에 출제된 비율에 따라 A,B,C,D 등급을 지정하여 중요도를 표시했다. 개념과 함께 더 공부해야 할 문제, 문제와 지문을 외워야 할 문제, 답만 기억하고 넘어갈 문제들을 전문가가 꼼꼼히 알려준다. 수록된 기출문제는 문제만 이해해도 합격할 수 있도록 왜 답이 되는지 명쾌하게 알려주고, 새로운 문제 유형에도 대비할 수 있도록 설명해준다.

「기억상자&기출 CBT」 ‘기억상자’ 암기 프로그램으로 반복 학습을 통해 틀린 문제는 틀리지 않을 때까지, 맞혔던 문제는 안전하게 머릿속에 담아 시험장에 가지고 갈 수 있도록 해주고, 실제 시험장과 똑같은 기출문제 CBT로 마무리 학습 및 시험 전 현장 감각을 키울 수 있다.


## 목차
준비운동

구성 미리보기
수험생을 위한 합격 보장 서비스
수험생을 위한 아주 특별한 서비스


기출문제 & 전문가의 조언

01회 2022년 7월 기출문제

02회 2022년 4월 기출문제

03회 2022년 3월 기출문제

04회 2021년 8월 기출문제

05회 2021년 5월 기출문제

06회 2021년 3월 기출문제

07회 2020년 9월 기출문제

08회 2020년 8월 기출문제

09회 2020년 6월 기출문제



핵심요약 (PDF 제공)

1과목 소프트웨어 설계

2과목 소프트웨어 개발

3과목 데이터베이스 구출

4과목 프로그래밍 언어 활용

5과목 정보시스템 구축 관리', 18000, 20000, 10, 0, 40, 0, 100, '2022-11-07 21:14:00', '2023-02-13 21:14:55', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (47, 1, 5, 1, null, '9780525565000', 'The Robots Are Coming!: The Future of Jobs in the Age of Automation', 'Vintage Books', 416, '## 책소개
“지금 당신이 하고 있는 일은 10년 후에도 유효한가?”

2030년. 기자, 금융전문가, 법률가, 의사, 교사, 연예인, 공장 노동자,
서비스직의 80%가 사라지거나 다른 형태가 될 것이다.
선망의 직업 1순위는 사라질 직업 1순위가 되고, ‘한마디로 설명할 수 없는’ 일자리만 살아남는다.

“로봇이 인간의 일을 대신 할 것이다. 인간은 창의적인 일만 하게 될 것이다.” ‘2016년, 다보스포럼에서 ‘4차 산업혁명’이 화두가 된 뒤 줄곧 들었던 말이다. 그로부터 5년이 지났지만 아직 변화가 실감나게 와 닿지는 않는다. 인간의 일자리에 변화가 일어나고 있긴 한 걸까? 저자는 ‘매우 그렇다’고 답한다. 이 책은 로봇이 인간의 일을 대신하는 미래 사회의 모습, 일부는 이미 현실이 된 모습을 매우 생생하게 그린다.

미국에서 활동하는 유명 언론인인 저자는 실리콘밸리의 주요 인물들, 노벨 경제학상 수상자 등과의 인터뷰를 바탕으로 기술 발달의 장점과 단점에 대해 논하며, 결론적으로 정부나 개인이 어떻게 로봇과 공존하는 미래를 준비할 지 대안과 방향성까지 제시한다.

여러 분야의 전문가, 실무자, 사용자들의 방대하며 생생한 인터뷰는 이 책이 그저 ‘미래를 그린 상상화’가 아님을 증명한다. 독자들은 알고 있을까? 이 책의 일부도 로봇이 썼음을!

Staying true to his trademark journalistic approach, Andres Oppenheimer takes his readers on yet another journey, this time across the globe, in a thought-provoking search to understand what the future holds for today\\''s jobs in the foreseeable age of automation.

The Robots Are Coming! centers around the issue of jobs and their future in the context of rapid automation and the growth of online products and services. As two of Oppenheimer\\''s interviewees -- both experts in technology and economics from Oxford University -- indicate, forty-seven percent of existing jobs are at risk of becoming automated or rendered obsolete by other technological changes in the next twenty years. Oppenheimer examines current changes in several fields, including the food business, legal work, banking, and medicine, speaking with experts in the field, and citing articles and literature on automation in various areas of the workforce. He contrasts the perspectives of "techno-optimists" with those of "techno-negativists" and generally attempts to find a middle ground between an alarmist vision of the future, and one that is too uncritical. A self-described "cautious optimist", Oppenheimer believes that technology will not create massive unemployment, but rather will drastically change what work looks like.

***

## 목차
Prologue 3
1. A Jobless World? 9
2. They\\''re Coining for Journalists!: The Future of the Media 77
3. They\\''re Coming for Service Workers!: The Future of Restaurants, Supermarkets, and Retail Stores 114
4. They\\''re Coming for Bankers!: The Future of Banking 145
5. They\\''re Coming for Lawyers!: The Future of Law, Accounting, and Insurance Firms 173
6. They\\''re Coming for Doctors!: The Future of Health Care 200
7. They\\''re Coming for Teachers!: The Future of Education 231
8. They\\''re Coming for Factory Workers!: The Future of Transportation and Manufacturing 264
9. They\\''re Coming for Entertainers!: The Future of the Acting, Music, Sports, and Leisure Industries 298
10. The Jobs of the Future 333
Epilogue: The Top Ten Job Fields of the Future 367
Acknowledgments 381
Notes 383

***
## 저자 소개
### 안드레아스 오펜하이머(Andres Oppenheimer)
저자는 [마이애미헤럴드]에 해외 기사를 기고하는 칼럼니스트이자 CNN 스페인어 방송 프로그램 ‘오펜하이머 프레젠타’의 앵커이며, 『Innovate or Die!』, 『Saving the Americas』, 『Bordering on Chaos』 등 7권의 책을 낸 작가이다. 오펜하이머는 이란-콘트라 스캔들을 폭로한 [마이애미헤럴드]팀의 일원으로 1987년 ‘퓰리처상’을 공동 수상했고, 2005년 미국 플로리다 지역의 우수한 언론인에게 수여하는 ‘선코스트 에미상’을 받았다. 1989년과 1994년 2번 ‘미국기자협회상’을 받았으며, 1993년에는 스페인의 저널리즘 상인 ‘이 가세트 어워드’를, 1998년에는 컬럼비아 언론 대학에서 수여하는 ‘마리아 무어스 캐벗 상’을 받았다. 1993년 ‘미국에서 가장 중요한 기자 500명’에 선정되어 [포브스] 미디어 가이드에 수록되었다. 미국 플로리다 주 마이애미에 산다.', 15960, 22800, 30, 0, 50, 0, 400, '2023-02-07 21:17:00', '2023-02-13 21:17:20', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (48, 1, 2, 2, null, '9791141012', '좋은생각 6개월권', '좋은생각출판사', 120, '# 책 소개

『좋은생각』은 좋은생각사람들 편집부에서 펴낸 아름다운 사람들의 밝고 따뜻한 이야기가 담긴 월간지입니다.
', 4750, 5000, 5, 0, 50, 0, 100, '2021-05-05 21:18:00', '2023-02-13 21:18:26', 1);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (49, 2, 2, 1, null, '9791160809626', '처음 읽는 베트남사', '휴머니스트', 133, '### 소개
저항과 혁신의 불꽃이 꺼지지 않는 나라, 베트남
한국-베트남 수교 30주년 기념
한국인의 눈으로 읽는 베트남의 파란만장한 2,500년 역사!

동남아시아 여행, 기업 현지 진출, 다문화 가정 등 이미 한국 사회의 문화와 일상에 깊숙이 자리하고 있는 베트남을 제대로 이해하기 위해 베트남의 역사를 살핀다. 오랜 기간 중국의 영향권에 속했고, 식민 지배와 독립운동, 전쟁과 분단을 경험한 면면이 익숙하지 않은가? 한국인의 눈으로 세계사를 들여다보는 〈처음 읽는 세계사〉 시리즈의 여섯 번째 도서로, 현지 명소와 문화재를 생생히 전하는 250여 장의 컬러 사진과 시대별 핵심 정보들을 직관적으로 시각화한 지도 등 풍성한 볼거리는 물론이고, 베트남의 고대 신화와 독립 왕조 시기부터 프랑스·미국·중국과의 전쟁, 도이머이 개혁 이후 새로운 글로벌 경제 중심지로 떠오르고 있는 오늘날까지 약 2,500여 년 동안의 베트남 사회와 문화에 대한 다채로운 이야기들을 두루 다룬다. 한국-베트남 수교 30주년을 맞은 올해 출간된 《처음 읽는 베트남사》를 통해 혁명의 심장 하노이, 황제의 도시 후에, 동양의 파리 호찌민까지 우거진 밀림과 드넓은 삼각주, 국토를 가로지르는 강줄기를 따라 화려하게 펼쳐지는 베트남의 생동감 넘치는 모습을 만나러 떠나 보자.

---

### 목차
머리말
프롤로그 외래 문명에 맞서 통합과 확장을 추구한 ‘베트남’

1장 중국의 지배와 베트남의 저항
1 신화에서 역사로
· 베트남의 개천절 행사 ‘훙브엉 축제’
2 중국의 영향 속에 남비엣이 성립하다
3 중국의 지배를 벗어나 독립을 쟁취하다
★ 사회주의 국가 베트남의 ‘자유의 여신’ 쯩 자매

2장 북부에서 초석을 닦은 왕조 국가
1 리 왕조가 다이비엣을 세우다
2 쩐 왕조가 몽골의 침입을 물리치다
· 참파를 물리친 쩐 왕조의 비밀 병기 ‘화총’
3 레 왕조가 유교 이념을 내세우다
· 베트남 최고의 역사서 《대월사기전서》와 응오시리엔
★ 베트남 유교 이념의 상징 ‘하노이 문묘’

3장 분열과 확장, 교역과 개발
1 찐씨와 응우옌씨, 나라를 분열시키다
· 참파의 마지막 영광을 간직한 포로메 사원
2 교역이 활성화되고 남부가 개발되다
· 해외 무역으로 번성했던 호이안의 옛 거리
3 응우옌 왕조가 남북을 통일하다
★ 응우옌 왕조의 잔영 ‘후에 황성’

4장 프랑스의 식민 지배와 독립운동
1 프랑스의 침략과 지배를 받다
· 식민지 시대에 널리 보급된 국어 ‘꾸옥응으’
2 민족 운동이 전개되다
3 사회주의 세력이 민족 운동을 주도하다
· 젊은 여성 혁명가 응우옌티민카이의 사랑
★ 식민 지배의 유산, 호찌민 콜로니얼 건축

5장 독립과 전쟁, 분단과 통일
1 독립을 선언했으나 프랑스가 다시 침략하다
· 마지막 황후, 남프엉
2 제네바 협정으로 베트남이 분단되다
3 베트남 전쟁에 미국이 끼어들다
· 당투이쩜의 일기
4 파리 평화 협정으로 미군이 철수하다
5 남북이 통일되고 사회주의 개혁이 단행되다
· 전쟁의 이면을 폭로한 소설 《전쟁의 슬픔》
★ 호찌민의 유산 ‘호찌민 묘’

에필로그 피아니스트 당타이손과 베트남의 현대사
연표
베트남 역대 왕조 및 정부
인용 출처 및 참고 문헌
찾아보기', 16800, 16800, 0, 0, 30, 0, 100, '2023-01-23 21:18:00', '2023-02-13 21:18:29', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (50, 3, 5, 1, null, '9791192638', '로렘 입숨의 책', '안온북스', 513, '**거대한 스케일, 세밀한 스케치
오직 구병모만이 구현 가능한
소설의 지상화地上畵**

구병모 미니픽션 《로렘 입숨의 책》이 안온북스에서 출간되었다. 200자 원고지 50장 내외의 작품 열세 편을 모은 이번 책에서 작가는 그간 보여준 심미적인 색채를 더욱 강렬하게 내뱉는 동시에 눈에 보이지 않는 관념과 의식을 소설화해내는 능력을 여지없이 펼쳐 보인다. 모두 달라 보이는 열세 가지 색감은 소설을 다 읽고서야 도달하게 될 높은 고도에서 내려다보아야만 비로소 그 진면모를 알 수 있다. 마치 나스카의 지상화를 마주한 순간처럼 놀랄 수밖에 없는 작품들은 살필수록 짧은 분량 안에 꼼꼼히 덧칠해 새겨 넣은 메시지(또는 메시지 없음)에 숨죽이게 한다. ‘로렘 입숨’은 뜻 없이 셰이프를 잡기 위해 흘려놓은 무작위 더미 텍스트를 가리키나, 그 뜻 없는 낯섦이 우리를 완벽하고 세련된 작품의 세계로 이끈다. 선악에 대한 관념이든, 언어나 예술에 대한 태도이든, 세대나 시대의 위기 감각이든 작가는 자신의 의도를 쉬이 발설하지 않고 소설화하여 그 구조로서 드러나게 한다. 이런 거대한 사고를 세밀하게 소설화하는 능력의 탁월함은 《로렘 입숨의 책》에 실린 다양한 작품으로 그 빛을 발한다. 이것은 소설과 세계에 대한 작가만의 면밀한 대응이며, 비장한 다짐으로 읽힌다. 애써 소설의 존재 의무를 따져 묻는 일이 소설을 쓰는 사람과 읽는 사람 모두에게 피할 수 없는 일이라면, 여기에 모인 소설들과 함께 그 먼 고도에 가닿기를 기대한다.

> 구병모 소설의 너른 지평을 한 권의 책으로 만나다

재밌게 읽고 나서야 그 소설의 규모와 숨겨진 의도를 알고 감탄하게 하는 것은 여느 소설가들도 탐내는 구병모 작가의 장기일 것이다. 손에 잡힐 것 같지 않은 주제들은 언제나 작가의 몸을 통과해 이야기와 인물을 입고 그 윤곽을 뚜렷하게 드러낸다.

《로렘 입숨의 책》에 실린 첫 작품 〈화장花粧의 도시〉는 태어나자마자 몸에 심겨진 ‘나노 시드’가 그 사람이 죽은 이후 꽃으로 피어나면서 그 삶을 증명한다는 어느 도시의 장례 정책을 통해 인간이 가진 선과 악의 양면을 드러내는 듯하지만, 반드시 착하기만 하거나 악하기만 한 사람이 없듯이 선악을 가르는 일에는 또 다른 사회적 모순이 숨겨져 있음을 보여주는 레토릭을 구현한다. 〈신인神人의 유배〉는 나스카 지상화의 탄생에 대한 거대한 상상이다. 신비한 자연 현상에 숨겨진 절대자와 신인의 대척 국면이 한 편의 이야기를 쌓는다. 〈영 원의 꿈〉의 ‘나’는 도서관에서 뜻밖에 매몽買夢을 청하는 이를 만나 별다른 의미가 없는 꿈을 팔게 된다. 생활비로도 쓰고 집세로도 쓰면서 안락을 누릴 즈음 더는 간밤에 꾼 꿈을 기억하지 못하게 되고, 허탕을 반복하던 중 또 다른 꿈, 자신이 꿈꾸었으나 펼치지 못한 꿈을 말하게 되고, 그 잃어버린 꿈에도 값을 매기는 이야기가 꿈처럼 펼쳐진다. 〈동사를 가질 권리〉는 이 책의 제목 ‘입숨 로렘의 책’의 힌트를 주는 작품이다. 도무지 말이 되지 않는 것 같은 소설을 쓰고 싶었지만 말이 되지 않는 소설을 쓰는 사람에 대한 이야기뿐이었다는 작가의 말에서 작가의 소설에 대한 도전, 정형화되지 않고 잡히지 않는 소설을 좇는 의지가 엿보인다.

〈날아라, 오딘〉의 ‘나’는 전쟁에 동원될 개를 훈련하며 그들에게 어떤 감정도 갖지 않으려 노력한다. 잔인한 생체 실험용으로 쓰이거나 대전차 폭탄으로 쓰일 녀석들을 굳이 사랑할 필요는 없다는 다짐은 ‘오딘’의 출전을 앞두고 위기를 맞는다. 지금도 세계 곳곳에서 진행 중인 전쟁의 참화를 그대로 이입하게 하는 생생한 소설적 전치술이 숨겨져 있다. 〈예술은 닫힌 문〉은 오늘날 미디어를 휩쓴 각종 오디션 예능의 비정함을 극대화시킨 소설이다. 현실의 오디션과는 달리 이 작품에서의 오디션은 생과 사를 다투는 전장이다. 그들에게 주어진 시간은 90초. 게다가 예술적 성취에는 별로 관심이 없어 보이는 심사위원들과의 소설적 대치가 인상적이다. 〈입회인〉은 중세 시대의 결투 제도가 부활한 미래를 그린다. 절차가 복잡하고 결과를 장담할 수 없는 법 집행이 아닌 사적인 처벌을 원하고 행하는 사람들. ‘나’는 그러한 결투의 당사자만큼 중요한 역할을 행하는 ‘입회인’으로 딸에게 마지막 편지를 남긴다. 〈궁서와 하멜른의 남자〉는 오랫동안 수리하지 않은 24평짜리 구축 아파트를 밀착 묘사한다. 세입자인 ‘나’는 아이가 태어나 육아와 집안일을 온전히 맡게 되었고 이곳에서 벗어나기 위해 집을 내놓은 지 한참 되었지만 계약은 성사되지 않고 한겨울을 맞았다. 그러던 어느 날 낯선 남자가 집에 찾아와 집에 쥐가 득시글하다고 주장한다. 실재하는 것과 그것을 숨기려 하는 관리는 여느 행정력 이면의 폭력성을 눈앞에 그려낸다.

〈롱슬리브〉는 남들보다 눈에 띄게 팔이 길어 놀림감이 되거나 불편을 감내해야 하는 특성을 가진 친구가 ‘나’를 위기에서 구해주는 이야기다. 잠시잠깐 신의 실수로 태어나게 된 것 같지만 그것은 두 팔로 큰 그늘을 만들어낼 수 있는 엄청난 능력의 현현인 것이다. 〈세상에 태어난 말들〉의 주인공 ‘원’은 “신의 사전을 훔쳐서 나온 천사”다. 원은 거대한 사전에서 어떤 단어를 지워버려 더 나은 세상을 인간에게 주고자 한다. 공격, 고독, 오염과 같은 단어를 신의 사전에서 지워내 그 단어가 없어진다면 인간은, 더 나은 삶을 영위할 수 있을까, 더 좋은 공동체가 될까를 생각하게 한다. 〈누더기 얼굴〉은 투명인간이다. 은유로서의 투명이 아닌 물리적 투명인간인 ‘나’는 남에게 피해를 주지 않고 살아가려 하지만 쉽지 않다. 자신의 특성을 활용해 정의와 공익에 보탬이 되려고도 하지만 돌아오는 건 냉대뿐이다. 나는 이제 남들과 같은 얼굴을 갖고 싶다. 하지만 본래 나의 얼굴을 아는 사람이 세상에 없으므로 가능하지 않다. 〈지당하고도 그럴듯한〉의 ‘나’는 소설가다. 출간 작업을 하며 소설을 고쳐나가는, 픽션이 분명한 이 이야기에서 우리는 작가 구병모가 소설을 대하는 태도와 가치관을 엿볼 수 있다. 그것은 우리가 지당하고 그럴듯하다고 믿는 모든 것에 대한 역설이기도 하다. 〈시간의 벽감壁龕〉은 시간을 통과하여 공간처럼 이동할 수 있는 펜던트가 개발되었고 100년 뒤의 참담을 목격하였지만, 인간은 미래의 절망을 엿보았다고 해서 자신의 현재를 반성하거나 조율하는 존재가 아님을 목도하게 한다.

이렇게 구병모 작가는 미니픽션이라는 한계가 분명해 보이는 규격에도 불구하고 영토와 시간, 인간과 신의 경계를 무참히 가로지르고 단숨에 제압해 소설 한 편의 완성도와 가능성은 규모로 결정할 수 없음을 증명해낸다. 그렇기에 짧은 소설이라고 해서 그 품이 덜 드는 게 아니라고 말하는 것이다. 또한 거대하고도 세밀한 이야기들과 더불어 이 책에는 작품의 시작점과 쓰고 난 후의 소회 등을 담은 작가 노트가 작품마다 더해져 읽는 묘미를 더한다. 우리는 구병모 작가가 가진 소설적 역량을 이해하면서도 때론 오해했고 지당하고도 그럴듯하다고 믿는 근거로 부당한 요구를 더하기도 했다. 이제 우리는 작가 구병모의 너른 지평과 진수를 한 권에 담아낸 《로렘 입숨의 책》과 함께 짧음 위로 켜켜이 더해진 구병모만 깊이를 한껏 누려볼 수 있을 것이다.', 28800, 32000, 10, 0, 50, 0, 100, '2023-01-04 21:19:00', '2023-02-13 21:20:02', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (51, 3, 4, 1, null, '9788983710444', '파인만 씨 농담도 잘하시네 1', '사이언스북스', 229, '**출판사 리뷰**
파인만은 1918년 미국의 파라커웨이라는 작은 마을에서 태어나 MIT와 프린스턴 대학원을 졸업하고 코넬 대학과 캘리포니아 공과대학의 교수 생활을 지내다가 1988년 2월에 생을 마감한 사람이다. 그는 물리학자였고 1965년 <양자전기역학 이론>을 개발한 공로로 노벨 물리학상을 수상했다. 이것은 여느 인물 사전에나 나올만한 파인만의 약력이다. 한편 그는 어린 시절엔 라디오를 잘 고치기로 소문난 기술자였고, 금고와 자물쇠 여는 것이 취미였으며, 뛰어난 드러머와 화가로서도 활약했다.

공부도 잘하고 놀기도 잘하고 잘 생겼고 웃기고, 예술적 감각도 뛰어나서 드럼도 잘치고 그림도 잘 그리며 여자 친구도 많았던 파인만의 이야기를 하나하나 읽다보면 정말 한 세기에 몇 명의 인생이기 대문에 뭔가 하나의 구심점이 있을 거라는 생각이 들고, 그것은 막연하긴 하지만 이 책을 읽고 난 독자 개개인에게 어떤 특별한 느낌으로 다가올 것이라 믿는다.

**추천평**
일반인들에게 과학을 전달하는 사람은 사실 많은데 이 사람은 특별한 위치에 있는 사람이다. 그냥 과학지식을 전달하는 것이 아니라 사람들이 중요한 순간에 그 과학지식을 쉽게 이해할 수 있도록 도와주는 그런 사람이다. 1986년 우주왕복선 챌린저호가 폭발하면서 우주비행사와 고등학교 선생님도 사망하여 많은 사람들이 안타까워했다.

왜 그런 사고가 일어났는가에 대한 진상규명위원회에 유일하게 과학자로 참여하여 많은 사람들이 보는 생방송 현장에서 얼음물이나 동그랗게 생긴 링을 가지고 실험하면서 왜 추운날 우주선을 날리면 밸브에 문제가 생겨서 폭발할 수 밖에 없는가를 시청자들 앞에서 보여준 것이다.

오락프로그램에서 과학자가 재미있게 설명하는 것이 아니라 필요한 사람들에게 그 사람이 이해할 수 있는 언어로 이야기했다는 점에서 아주 훌륭한 사람이다. (\\''TV, 책을 말하다\\'' 162회 출연, 눈물나는 과학책에 이 책을 꼽으면서)', 6400, 8000, 20, 0, 50, 0, 100, '2000-05-19 21:22:00', '2023-02-13 21:22:12', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (52, 3, 5, 1, null, '9781536222975', 'A Wish in the Dark', 'Candlewick Press', 384, '### 책소개
2021년 뉴베리 명예상 수상작
어둠이었던 소년과 빛이었던 소녀,
세상의 운명을 뒤집는 아이들의 눈부신 반란!

빛의 도시 차타나의 모든 빛은 지도자인 ‘총독’이 통제하며, 총독이 판단하기에 빛을 누릴 자격이 있는 이들만을 비춘다. 차타나의 그늘, 남원 교도소에서 나고 자라난 소년 ‘퐁’은 암담한 현실에서 벗어나고자 죽마고우 솜킷을 홀로 남겨 둔 채 탈출을 감행한다. 한편 남원 교도소장의 완벽한 딸 ‘녹’은 퐁의 탈옥으로 추락한 가족의 명예를 되찾고자 집요하게 퐁을 뒤쫓는다. 어둠과 빛, 도망자와 추격자, 가난과 부, 양극단에 선 아이들은 부조리하고 불평등한 세상에 의문을 품고 차타나의 어둠을 걷어 내기 위한 발걸음을 내딛는데……. 평등과 정의를 바라는 이들의 목소리는 차타나의 어둠을 뚫고 빛날 수 있을까? 빅토르 위고의 『레 미제라블』을 떠올리게 하는 이 작품은 법과 정의의 차이를 생각하게 하며, 부조리하고 불평등한 세상을 바꾸는 힘이 우리 안에 있음을 일깨운다.

A 2021 Newbery Honor Book

A boy on the run. A girl determined to find him. A compelling fantasy looks at issues of privilege, protest, and justice.

All light in Chattana is created by one man - the Governor, who appeared after the Great Fire to bring peace and order to the city. For Pong, who was born in Namwon Prison, the magical lights represent freedom, and he dreams of the day he will be able to walk among them. But when Pong escapes from prison, he realizes that the world outside is no fairer than the one behind bars. The wealthy dine and dance under bright orb light, while the poor toil away in darkness. Worst of all, Pong’s prison tattoo marks him as a fugitive who can never be truly free.

Nok, the prison warden’s perfect daughter, is bent on tracking Pong down and restoring her family’s good name. But as Nok hunts Pong through the alleys and canals of Chattana, she uncovers secrets that make her question the truths she has always held dear. Set in a Thai-inspired fantasy world, Christina Soontornvat’s twist on Victor Hugo’s Les Miserables is a dazzling, fast-paced adventure that explores the difference between law and justice - and asks whether one child can shine a light in the dark.

-----

', 7623, 12100, 37, 0, 40, 0, 1000, '2021-09-07 21:22:00', '2023-02-13 21:22:43', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (53, 2, 3, 1, null, '9784837929314', 'ちびすけmeetsおおきい猫さんたち', '三笠書房', 112, '### 상품정보 안내
```
직수입외서의 경우, 해외거래처에서 제공하는 정보가 부족하여 제목, 표지, 가격, 유통상태 등의 정보가 미비하거나 변경되는 경우가 있습니다. 정확한 확인을 원하시는 경우, 일대일 상담으로 문의하여 주시면 답변 드리겠습니다.
(판형과 판수 등이 다양한 도서는 찾으시는 도서의 ISBN을 알려 주시면 보다 빠르고 정확한 안내가 가능합니다.)

해외거래처에서 품절인 경우, 2차 거래선을 통해 유럽과 미국 출판사로 직접 수입이 진행될 수 있습니다.
수입 진행 시점으로 부터 2~3주가 추가로 소요되며, 해외에서도 유통이 원활하지 않은 도서는 품절 안내가 지연될 수 있습니다.
해당 경우, 문자와 메일로 별도 안내를 드리고 있사오니 마이페이지에서 휴대전화번호와 메일주소를 다시 한번 확인해주시기 바랍니다.
```', 15363, 17070, 10, 0, 20, 0, 150, '2023-02-06 21:28:00', '2023-02-13 21:28:15', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (54, 2, 4, 1, null, '9791134867553', '극주부도', '학산문학사', 100, '### 소개
뒷세계에 수많은 전설을 남긴
흉악한 야쿠자, ''불사신 타츠''.
그런 그가 야쿠자를 은퇴하고 선택한 길은-.
「전업주부」였다!
가정적 임협 코미디, 여기에 개막!

GOKUSHUFUDO ?Kousuke Oono 2018 /SHINCHOSHA PUBLISHING CO.', 36000, 36000, 0, 0, 30, 0, 100, '2021-08-16 21:32:00', '2023-02-13 21:32:57', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (55, 2, 2, 1, null, '9791191825411', '세상에서 가장 짧은 한국사', '빅피시', 111, '### 소개
소설처럼 몰입해서 읽다 보면 역사의 흐름이 단박에 잡힌다

《세상에서 가장 짧은 한국사》는 고대부터 근현대까지 한국사의 가장 중요한 순간들을 소개하면서, 단 한 권으로 역사의 흐름을 단숨에 파악할 수 있도록 돕는다. 특히 120만 유튜브 채널 〈공부왕 찐천재〉 화제의 역사 선생님이자 저자 김재원은 과거와 현재를 끊임없이 연결하며 마치 한 편의 소설처럼 역사를 설명한다. 쉽지만 가볍지 않고, 재미있지만 잊히지 않는 그의 한국사 이야기를 듣다 보면 역사란 교과서에 갇힌 학문이 아닌 오늘의 나와 맞닿은 이야기라는 것을 깨닫게 된다.

이제 수천 년에 달하는 한국사를 한 권으로 읽어 볼 시간이다. 때때로 숨이 가쁠 때도 있고, 나도 모르게 몰입되어 시간 가는 줄 모를 때도 있을 테다. 하지만 찬찬히 오래전 이야기들을 하나의 맥락에서 이해하다 보면 어느 순간 마지막 장에 닿았을 때 지금의 우리를 만나게 될 것이다.

---

### 목차
프롤로그. 쉽게 그러나 가볍지 않게 떠나는 한국사 여행

1장. 고대

단군 신화가 실화냐고 묻는다면
‘부여’ 출신이라는 게 권력의 상징이던 시절
그곳에도 삶이 있었다: 옥저, 동예, 삼한
골목 대장 고구려, 광개토왕을 만나다
흑역사가 가득한 백제를 위한 변명
역전의 용사 신라가 써 내려간 배신의 서사시
평화가 아닌 힘을 선택한 가야의 생존 방식
본격 세계관의 격돌: 고구려 vs 중국 통일 왕조
백제의 최후를 만든 막장 인생, 의자왕
고구려의 위기를 부른 가문의 위기
삼국 통일, 그 분열과 통합의 역사

2장. 고려 시대

망국을 부활시킨 영웅들
고려, 사랑으로 새로운 나라를 빚다
환영받지 못한 ‘돗자리 임금님’ 혜종의 비밀
황제라 불린 왕, 광종의 대담한 도전
음탕한 여인에서 뛰어난 여걸이 되기까지
무시하기엔 너무도 강했던 북방의 나라들
고려를 움직였던 자들, 문벌
요승 묘청의 기묘한 이야기
무신 정변: 세상에 무시받아 마땅한 존재는 없다
세계를 정복한 대제국 몽골, 고려를 만나다
결혼이 정치를 움직이던 시절
개혁 군주와 문란한 실정가 사이에 선 인물, 공민왕

3장. 조선 시대

모든 것은 부동산에서 시작됐다
혁명의 최종 승리자 이방원, 그가 꿈꾼 나라
계유정난: 갓 태어난 국가에 평온은 사치다
폭군의 바이블이자 성군의 아들, 연산군
임진년에 일어난 동아시아 세계대전
전쟁은 모든 것을 바꿔놓았다
환국, 조선 정치의 판을 흔들다
아버지의 욕망이 빚은 정신질환자 세자
‘레트로’를 꿈꾼 왕의 아버지, 대원군
1년이 100년 같던 그때 그 시절, 왕이 된 남자 고종

4장. 근현대

1903년, 조선인이 하와이로 떠나야 했던 이유
목포는 왜 한국 도시의 역사를 응축한 곳일까?
한국인의 교육열은 일제 시대부터 시작됐다
강제 징용의 상징, 군함도에서 벌어진 일
사실 한국 전쟁은 1948년에 시작됐다
권력을 향한 강한 집착, 이승만과 자유당
혁명이 낳은 위기, 군인의 세상을 만들다
한국 경제 성장의 상징이 무너져 내린 날

참고 자료', 12460, 12460, 0, 0, 30, 0, 2000000099, '2022-06-03 21:38:00', '2023-02-13 21:38:42', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (56, 2, 2, 1, null, '9791191104578', '피타고라스 생각 수업 2', '유노라이프', 344, '### 책소개
```
MD 한마디
[수학자처럼 생각하기] 세상의 모든 일에는 규칙이 숨어있다. 이 규칙을 설명하거나 이해하기 위해선 수학이 필요하다. 명확한 선택과 기발한 상상 역시 수학에 답이 있다. 이 책은 피타고라스부터 허준이까지 수학자들의 생각을 살펴보며, 수학자의 사고로 세상을 발견하고 분석하고 활용하는 법을 소개한다. - 안현재 자연과학 PD
```

“빠른 두뇌 회전, 명확한 선택, 기발한 상상은
어떻게 하는 것일까?”
수학자들은 답을 알고 있다!
수학자처럼 세상을 발견하고, 분석하고, 활용하는 법!

우리는 일상에서 수학을 셀 수 없이 마주한다. 물건을 살 때, 게임 점수를 계산할 때, 화분에 물을 줄 때, 요리할 때, 자동차 연비를 계산할 때, 여행지에 가기 위해 집에서 출발 시간을 계산할 때 등 수없이 많다. 그렇기에 수학은 우리가 세상을 이해하고, 상황을 인식하고 결정하는 데 많은 영향을 미친다. 수학을 알면 알수록 두뇌가 빠르게 돌아가고, 결정도 빨라지며 선택이 명확해진다. 이러한 수학적 생각은 어떻게 하는 것일까?

이 책에서는 피타고라스, 유클리드, 페르미, 가우스, 힐베르트, 허준이 등 고대 수학자부터 현대 수학자까지 그들의 수학적 생각을 33가지로 다양하게 다뤘다. 그 가운데 일대일대응, 분수, 함수, 기하학, 피보나치수열, 페르미 추정, 프랙털, 리만 가설 등 초등 수학부터 고등 수학까지 개념과 이론을 두루 접할 수 있다.

피타고라스는 고대 수학자이자 위대한 철학자였다. 그는 철학을 하기 위해 수학을 사용했으며, 인생을 이해하는 데 수학을 반드시 배워야 한다고 많은 제자들에게 가르쳤다. 그가 말하는 수는 ‘나와 세상을 연결하고, 몰랐던 세상을 발견할 수 있는 지식’의 정점이었다. 그의 사상은 플라톤, 유클리드 등 후세의 많은 수학자들에게 영향을 끼쳤다. 문제를 명료하게 만드는 수학자이자 사상가로서 그는 절제하는 삶을 살았다. 그의 제자들은 그의 사상을 이어받아 수학으로 세상을 보고, 생각하고자 했던 그의 가르침을 따랐다.

이 책을 쓴 저자 역시 오랫동안 수학의 재미와 중요성을 강연과 책으로 설파해 온 수학자이다. 어릴 때부터 수학에 빠져 오랜 세월 수학자로 살면서 문제를 발견하고 생각을 확장하고, 논리적으로 풀어나가며, 상상하고 활용하는 데 탁월한 전문가이다. 피타고라스, 여러 수학자뿐만 아니라 저자의 수학적 생각도 이 책에 고스란히 녹아져 있다.

수학은 어렵지만 수학책은 읽고 싶은 사람, 어려운 수학 개념을 쉽고 재미있게 배우고 싶은 학생, 사회 속에서 겪는 갈등이나 문제를 논리적으로 해결하고 싶은 직장인, 일상의 복잡한 생각을 확장하고 명료하게 만들고 싶은 어른이라면 이 책을 꼭 읽기를 바란다. 《피타고라스 생각 수업》이 독자들의 인생을 수월하게 살도록 도움을 줄 것이다.

----
### 목차
들어가며 _ 피타고라스는 왜 세상을 ‘수’라고 했을까

1장_ 문제에 대한 생각, 보이지 않는 것을 발견하기

01. 세상을 문제로 보는 시선 - 외판원 문제
02. 때로는 추측이 문제를 해결한다 - 페르미 추정
03. 옛것을 알아야 새것을 안다 - 온고이지신
04. 80억 개의 생각을 1로 만드는 능력 - 축소
05. 점, 선, 면을 넘어 n차원으로 - 확장
· 피타고라스의 생각 - 보이지 않는 세계를 잇는 다리

2장_ 논리에 대한 생각, 일상을 분석하기

06. 일상을 문제별로 분류하는 법 - 기호와 분류
07. 방탄소년단도 이용한 메타버스 - 비트맵과 웨이브
08. 천재 수학자 허준이의 생각 - 연결과 구조
09. 가우스처럼 논리적으로 생각하는 법 - 생각의 끈
· 피타고라스의 생각 - 깨우치는 사람에게 필요한 것

3장_ 창의에 대한 생각, 상상하고 질문하기

10. 자동차 번호판을 보고 하는 상상 - 배수
11. 별은 얼마나 밝게 빛날까 - 역제곱의 법칙
12. 병뚜껑에 숨어 있는 각도 - 약수
13. 바이오리듬은 진짜일까? - 최소공배수
14. 60갑자의 비밀 - 진법
15. 문제 속 숨은 공통점 찾기 - 배열
16. 반복이 무한하면 무엇이 될까? - 프랙털
· 피타고라스의 생각 - 수로 세상을 알아가는 법

4장_ 발명에 대한 생각, 발상을 전환하기

17. 짝을 이루는 생각의 발견 - 일대일대응
18. 위대한 숫자 0, ''없음''의 발명 - 수
19. 곱하기를 나타내는 기발한 방법 - 곱셈
20. 공평함을 위한 수학적 생각 - 분수
21. 유클리드는 옳았고, 옳지 않았다 - 기하학
22. 오차 범위를 줄이는 법 - 작도
23. 아인슈타인의 사랑 방정식 - 위상수학
· 피타고라스의 생각 - 인생을 바꾸는 격언의 발견

5장_ 공부에 대한 생각, 기초에서 확장하기

24. 기초가 튼튼해야 완성된다 - 수리력
25. 개념만 알아도 반이다 - 계산능력
26. 수학은 어렵지 않다는 생각 - 추상화
27. 수학을 잘하는 의외의 방법 - 이해력
28. 하나를 알았다면 열이 보인다 - 규칙성
· 피타고라스의 생각 수학으로 철학을 했던 사람

6장_ 활용에 대한 생각, 수학자처럼 생각하기

29. 죄수의 딜레마와 치킨 게임 - 응용 수학
30. 이세돌이 알파고에게 진 이유 - 몬테카를로 탐색
31. 인구수를 예측하는 손쉬운 방법 - 지수함수
32. 평면을 완벽하게 채울 수 있을까? - 힐베르트 문제
33. 풀리지 않는 수학계 미제 사건 - 리만 가설
· 피타고라스의 생각 - 통합하고 적용하는 삶

나가며 _ 수로 세상을 읽을 때 꼭 필요한 생각
', 16650, 18500, 10, 0, 40, 0, 99, '2022-12-17 21:43:00', '2023-02-13 21:43:45', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (57, 2, 2, 1, null, '1158773129', '건강과 다이어트를 동시에 잡는 7대 3의 법칙 채소·과일식', '바이북스', 294, '## 책소개
한약사가 알려주는 채소·과일식 해독법. 다이어트 보좌관이자 피토테라피스트 한약사 조승우가 『건강과 다이어트를 동시에 잡는 채소·과일식』을 세상에 내놓는다. 다이어트의 핵심은 독소 청소인데, 이를 위해 단순하면서 자연스러운 가장 효과적인 식단인 채소·과일식을 소개한다. 이 책은 가공식품과 화학첨가제의 진실을 알려준다. 또한 채소·과일식을 손쉽게 할 수 있는 방법부터 3주 프로그램을 통해 식단관리하는 방법까지 담겨 있다. 저자는 채소·과일식을 70%, 가공식품을 30%로 식단관리를 하도록 권한다. 여러분의 건강하고 행복한 삶을 기원한다.

## 목차
머리말_단순하면서 자연스러운 방법이 가장 효과적인 다이어트

1. 채소·과일식을 해야 하는 이유

건강과 다이어트의 성공 비법 | 먹는 것만큼 중요한 소화 | 암과 심장병을 예방하려면? | 인간은 원래 채식동물 | 탄수화물 중독에서 벗어나는 법 | 진짜 음식을 먹자! | 우유는 완전식품일까? | 별로 도움이 되지 않는 건강기능식품 | 가짜 음식인 가공식품 | 몸을 해독하는 채소·과일식 | 자연치유력을 키우려면?

2. 채소·과일식 잘하는 방법

빈 속에 먹어야 하는 채소·과일식 | 오래 많이 씹는 것이 건강의 비결 | 올바른 아침 식사법 | 과일주스를 마시자 | 흰 가루 음식을 피하자 | 고기를 먹을 것인가 말 것인가 | 과일 알레르기가 있다면?

3. 채소·과일식을 잘하기 위해 알아야 할 지식들

음식을 가리지 말고 골고루 | 커피공화국에서 커피 없이 사는 법 | 좋은 호흡이 만드는 휼륭한 식사 | 물 한 잔 마시는 습관을 들이자 | 잠이 보약이다 | 가끔씩 햇빛을 쬐자 | 쾌변은 건강의 청신호

4. 채소·과일식 실전 케이스

다이어트를 할 때 꼭 피해야 하는 음식 | 만성질환을 막는 음식 섭취법 | 암을 이기는 자연치유력 회복 음식 | 임산부가 알아야 할 모든 것 | 다이어트를 하려면 제대로 하자

5. 다이어트를 위한 채소·과일식

다이어트를 위해 반드시 먹어야 하는 것 | 중금속과 미세플라스틱의 심각한 위험성 | 다이어트를 방해하는 음식들 | 다이어트에 성공하는 비결 | 건강한 다이어트는 이렇게 하라

6. 채소·과일식을 잘하기 위한 그 외 지식들

통증과 염증은 치료의 과정 | 음식 속에 든 독, 화학첨가제 | 설탕을 피하라 | 채소·과일식의 기본지식 | 영양성분표의 비밀

맺음말_포기하지 말고 매일 단 하나의 방법이라도 실천하자', 17100, 19000, 10, 0, 51, 0, 100, '2022-10-20 21:48:00', '2023-02-13 21:49:24', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (58, 1, 6, 1, null, '9791158363932', '숨지 말고 나와 봐', '책읽는곰', 36, '### 책소개
자신감이 부족한 아이들에게
보내는 무지갯빛 격려!

어느 화창한 날,
검은 구름 한 조각이 나타났어요.
그런데 검은 구름을 본 사람들이
모두 얼굴을 찌푸리지 뭐예요.
검은 구름은 얼른 몸을 숨겨 보지만,
마음이 무거워질수록 몸은 점점 더 커질 뿐이에요.
거대한 먹구름이 되어 버린 검은 구름을 어쩌면 좋을까요?

햇빛은 반짝, 바람은 살랑, 어느 화창한 날. 파란 하늘에 검은 구름 한 조각이 둥실 떠오른다. 사람들은 검은 구름을 발견하고는 얼굴을 찌푸린다. “에이. 모처럼 날이 좋아 소풍을 나왔는데.” 볼멘소리에 깜짝 놀란 검은 구름은 이리저리 몸을 숨겨 보지만 역부족이다. 게다가 마음이 무거워질수록 몸은 점점 더 커져만 간다. 결국 어디에도 숨을 수 없을 만큼 거대한 먹구름이 되고만 검은 구름은 꾹 참았던 눈물을 펑펑 쏟고 만다. 후드득후드득 빗줄기가 굵어지자, 사람들은 서둘러 집으로 돌아간다. 그런데 어디선가 알록달록 비옷을 입은 아이들이 하나둘 밖으로 나와 빗물 웅덩이에서 첨벙첨벙 뛰어오는 것이 아닌가!

---

### 출판사 리뷰
한껏 움츠러든 마음을 두드리는
한줄기 소나기 같은 이야기

햇빛은 반짝, 바람은 살랑, 공원에 놀러 나온 사람들이 기분 좋은 오후를 즐기고 있을 때입니다. 오리 연못에 수상한 그림자가 드리우더니, 검은 구름 한 조각이 나타납니다. 사람들은 검은 구름의 등장에 얼음땡 놀이라도 하듯 일제히 멈춰 서서 하늘을 올려다봅니다. “에이, 모처럼 날이 좋아 소풍을 나왔는데.” 여기저기서 볼멘소리가 터져 나옵니다.
당황한 검은 구름은 재빨리 사람들을 피해 몸을 숨겨 봅니다. 비행기 날개 뒤에, 무성한 나뭇잎 사이에, 까마귀들 틈에…. 하지만 비행기가 날아가는 바람에, 나뭇잎이 바람에 흔들리는 바람에, 까마귀들이 쪼아 대는 통에 금세 들통이 나고 맙니다. 검은 구름은 누구에게도 환영받지 못한다는 사실에 서글퍼집니다. 슬픈 마음을 누르려 하면 할수록 오히려 몸집만 점점 커질 뿐이지요. 어디에도 숨을 수 없을 만큼 거대한 먹구름이 되어 버린 검은 구름을 어쩌면 좋을까요?

세상 모두가 나를 반겨 주지 않더라도
기죽지 않고 나답게 살아가는 법!

“모든 사람은 예외 없이, 사람이라는 이유만으로, 다른 모든 사람들의 존중받아 마땅하다. 사람은 스스로를 존중하고, 다른 사람으로부터 존중받아야 한다.” 인본주의 심리학자 칼 로저스는 말합니다. 그러나 스스로를 존중하는 마음, 자존감을 갖기란 참 쉽지가 않습니다. 자존감은 ‘있는 그대로의 자신’을 긍정하는 데서부터 출발하는 까닭입니다. 자존감이 낮은 사람일수록 있는 그대로의 자신을 감추고 타인의 기준에 맞춰 자신을 포장하거나 가면 뒤에 숨으려고만 합니다. 마치 『숨지 말고 나와 봐』에서 검은 구름이 자신을 반겨 주지 않는 사람들을 피해 이리저리 숨어 다니는 것처럼 말이지요. 이런 상황이 반복되면 자존감은 점점 더 낮아질 뿐입니다.

아이들의 자존감을 높이기 위해서는 시간이 걸리더라도 있는 그대로의 자신을 받아들이고 사랑하는 연습이 필요합니다. 다른 사람의 말이나 태도에 쉽게 흔들리지 않는 단단한 마음을 기를 필요도 있지요. 모든 사람이 나를 있는 그대로 받아들여 주고 좋아해 준다면 더할 나위가 없겠지만, 아이들이 만날 세상에는 그런 사람들만 있는 것은 아닐 테니까요. 그럼에도 있는 나를 있는 그대로 받아들여 주고 좋아해 주는 사람이 분명히 있다는 믿음과 확신, 나에게도 아주 사소하더라도 남이 흉내 낼 수 없는 재능이나 장점이 분명히 있다는 믿음과 확신이 있다면 또 한 걸음 앞으로 나아갈 수 있을 것입니다. 검은 구름 곁에 비 오는 날만 손꼽아 기다렸던 어린 친구들이 나타나 준 것처럼 말이지요.
오늘도 제자리를 헤매고 있을 이들에게
건네는 무지갯빛 격려!

사람은 저마다 좋아하는 것이 다릅니다. 뜨거운 여름을 좋아하는 어린이가 있는가 하면, 추운 겨울을 좋아하는 어린이도 있습니다. 이 책의 등장하는 사람들처럼 비를 끔찍하게 싫어하는 어린이가 있는가 하면, 비가 내리기만을 간절히 바라는 어린이도 있지요. 백인백색, 천인천색의 세상에서 살아가려면 그 ‘다름’을 자신에 대한 공격으로 받아들이지 않고 차이로 받아들이는 연습이 필요합니다. 우리 어린이들도 검은 구름처럼 세상과 부딪치는 경험 속에서 그 점을 깨우쳐 나가겠지요. 『숨지 말고 나와 봐』는 앞으로 그런 상황을 수도 없이 맞닥뜨리게 될 어린이를 위한 예방 주사 같은 책이라 하겠습니다.

『숨지 말고 나와 봐』는 서지혜 작가가 어린 자신에게 건네는 편지와도 같은 책이기도 합니다. 작가는 어린 시절 내내 타인의 시선이나 평가에 휘둘리곤 했다고 합니다. 하지만 언제까지나 그렇게 살아갈 수는 없다는 생각을 하게 되었고, 비로소 조금씩 자신으로 살아갈 수 있게 되었다고 합니다. 이 책은 그런 자신에게, 또 자신과 비슷한 경험을 하고 있을 어린이들에게 보내는 응원이자 위로입니다. 타인의 부정적인 시선 때문에 자신이 빛나는 존재라는 사실을 잊지 않았으면 하는 마음을 가득 담은 책이지요. 있는 그대로의 자신을 받아들이고 사랑하게 된 서지혜 작가가 앞으로 들려줄 단단하고 반짝이는 이야기들이 벌써부터 기다려집니다.', 12600, 14000, 10, 0, 25, 0, 1000, '2023-02-13 22:02:00', '2023-02-13 22:02:36', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (59, 3, 5, 1, null, '9781933339009', 'History for the Classical Child', 'Peace Hill Press', 338, '### 책소개
Ancient Times는 기원전 5000년부터 서기 400년까지의 역사 이야기이다. 진시황제의 무덤에는 어떤 끔찍한 비밀이 묻힌 걸까? 유목민들은 도마뱀 스튜를 좋아했을까? 플랜튼 마을(the Village of the Plantains)의 거미 아난시(Anansi the Spider)에게 무슨 일이 있었을까? 어떻게 6살 꼬마가 로마 제국의 마지막 황제가 되었던 걸까?
...

아이들이 이해할 수 있는 언어와 사고방식으로 수많은 시간의 역사를 쉽고 재미있게 알려주는 일은 참 어려운 일이다. 어떤 방식으로 사회를 이루며 살았는지, 유적이나 유물로 알려진 고대인들의 생활은 어떠하였는지 역사적 사실들을 이해하기 쉽게 알려줄 수 있는 방법은 없을까? 역사를 가르친다기보다 재미있는 역사 이야기로 읽히고 들려줄 수 있어야 함은 어린이들에게 세계사에 대한 흥미를 심어주는 가장 자연스러운 방법일 것이다.

이 책은 인류 초기 유목민의 생활부터 로마 제국의 멸망까지를 다루고 있다. 유프라테스·티그리스 강, 인더스 강, 황허 강 유역의 인류 문명의 발생에서부터 이집트의 형성과 발달, 바빌로니아, 아시리아 등 메소포타미아 지역 국가들의 흥망성쇠, 고대 중국의 형성과 시황제의 천하통일, 고대 아프리카의 모습, 그리스와 페르시아 제국의 성장, 고대 아메리카, 로마의 흥망까지의 역사를 저자의 친근한설명으로 이해를 도와 준다. 또한 미라를 만드는 방법, 수메르의 길가메시의 이야기, 모헨조다로가 버려진 수수께끼, 비단의 제작, 고대 아프리카의 민담, 여자 파라오, 아시리아의 용맹한 왕들, 고대 문명의 불가사의, 미노타우로스와 미궁, 호메로스의 오디세이, 마라톤의 기원, 신비한 나스카 그림의 수수께끼, 로마의 검투사, 인도의 힌두교 신들, 로마의 영웅 시저, 시황제 무덤의 수수께끼, 네로 황제, 로마의 마지막 황제 이야기를 만나게 된다.

저자인 수잔 와이즈 바우어의 <세계 역사 이야기>는 그야말로 상당히 수준높은 지식과 정확한 정보를 쉽게 전달하는 획기적이며 세계 역사와 문화에 대한 풍부한 교양을 선사할 책이다.

+ 대상 : 9 - 12세 (미국기준)
+ 리딩레벨 : 5.0

What terrible secret was buried in Shi Huangdi''s tomb? Did nomads like lizard stew? What happened to Anansi the Spider in the Village of the Plantains? And how did a six-year-old become the last emperor of Rome?

Told in a straightforward, engaging style that has become Susan Wise Bauer''s trademark, The Story of the World series covers the sweep of human history from ancient times until the present. Africa, China, Europe, the Americas?find out what happened all around the world in long-ago times. This first revised volume begins with the earliest nomads and ends with the last Roman emperor. Newly revised and updated, The Story of the World, Volume 1 includes maps, a new timeline, more illustrations, and additional parental aids.

This read-aloud series is designed for parents to share with elementary-school children. Enjoy it together and introduce your child to the marvelous story of the world''s civilizations.', 16315, 25100, 35, 0, 20, 0, 100, '2023-02-01 22:09:00', '2023-02-13 22:09:40', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (60, 2, 6, 1, null, '9787532645596', ' 簡化字 繁體字 異體字 對照字典 간화자 번체자 이체자 대조자전', '上海辭書出版社', 666, '### 책소개
《簡化字 繁體字 異體字對照字典》特別是著重介紹了簡化字的部首、字形結構、構字方法、簡化方法，根據古代文獻介紹某些簡化字或簡化方法在漢字字體變遷史上的曆史依據。此外還對這些字的形音義諸方面作了辨析。', 14850, 16500, 10, 0, 20, 0, 100, '2023-02-09 22:12:00', '2023-02-13 22:12:12', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (61, 1, 6, 1, null, '9772586200990', '과학잡지 에피 (계간) : 22호 [2022]', '이음', 320, '## 책소개
과학잡지 에피 22호, “물, Everything Everywhere”는 우리를 둘러싼 모든 것에 연관된 물에 대한 이야기를 펼친다. 인간의 몸과 사회 그리고 우주 차원에서 물이 어떻게 존재하고 있는지 살피고, 아직 밝혀지지 않은 물의 자취를 찾고 이해하는 과정과 물이 인간과 사회와 맺는 관계를 조명한다.

## 목차
들어가며 - 물은 어디에 있는가 | 전치형

키워드-숨(Exhalation)
물의 화학적 성질 | 김성근
생명의 물, 피 땀 눈물 | 김상욱
바다, 물은 어디서 왔고 물 부족은 왜 생기는가 | 이강근
물의 순환과 인간 활동 | 감종훈
우주에서 물 찾기 | 이정은

뉴스-갓(Ansible)
이 계절의 새 책 | 수치심에 맞서 연대하자는 절절한 외침 | 정인경
과학뉴스전망대 | 인간 예술가와 예술 인공지능, 대결 아닌 공존의 길은? | 오철우
과학이슈돋보기 | 도심 녹지 형평성을 다시 생각해야 | 윤신영
브뤼노 라투르를 추모하며 | 그는 세상을 너무도 사랑했다… | 필리프 피냐르 (번역: 김명진)
브뤼노 라투르를 추모하며 | 브뤼노 라투르, 그의 사상의 궤적 | 홍성욱

컬처-터(Foundation)
에세이 | 북극의 얼음이 다 녹으면 다음 빙하기를 기다려야 하나? | 신방실
현대미술, 과학을 분광하다 | 어떤 것도 홀로 존재하거나 스스로 생성되지 않는다 - 아르코미술관 융복합 예술 페스티벌 「횡단하는 물질의 세계」에 대한 짧은 소회 | 차승주
SF | 그들이 보지 못할 밤은 아름다워 | 백사혜
물구나무과학사 | 동서양의 별자리와 별자리 관념 | 전용훈

이슈-길(Farcast)
가치 기반 의사결정과 주관적 합리성 | 정동일
지구온난화에 대응하는 최선의 방법을 둘러싼 열띤 논쟁 | 매들린 오스트랜더 (번역: 김명진)

인류세(Anthropocene)
제4기 고기후-고생태학과 인류세 | 김수현

INDEX', 13500, 15000, 10, 0, 51, 0, 100, '2022-12-01 22:13:00', '2023-02-13 22:14:06', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (62, 3, 4, 1, null, '9788956622538', '다크메이지', '북박스', 326, '## 책소개
김정률 퓨전 판타지 소설.

작가 김정률의 환상세계, 무협과 판타지의 공간 파괴 <소드 엠퍼러>의 전설이 <다크 메이지>로 부활한다!



드래곤에게 위협받는 대륙 트루베니야를 구하기 위해 납치되어 온 중원 사도 배교의 교주, 독고성

수하의 배신으로 단전마저 잃어버린 그에게 남은 것은 아무것도 없다.

이 세계 생존을 택한 최후의 길, 다크 메이지! 지금부터 복수를 위해 주원으로 귀환하려는 독고성의 처절한 사투가 시작된다!

## 저자정보
##### 김정률
『소드 엠페러』
『다크 메이지』
『하프 블러드』
『데이몬』
『트루베니아 연대기』
『블레이드 헌터』
『마왕 데이몬』...', 2560, 3200, 20, 0, 50, 0, 3000000, '2004-02-02 22:14:00', '2023-02-13 22:14:17', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (63, 3, 6, 1, null, '4910204860231', 'anan增刊 2023年2月號', 'マガジンハウス', 100, '### 상품정보 안내

```
직수입외서의 경우, 해외거래처에서 제공하는 정보가 부족하여 제목, 표지, 가격, 유통상태 등의 정보가 미비하거나 변경되는 경우가 있습니다. 정확한 확인을 원하시는 경우, 일대일 상담으로 문의하여 주시면 답변 드리겠습니다.
(판형과 판수 등이 다양한 도서는 찾으시는 도서의 ISBN을 알려 주시면 보다 빠르고 정확한 안내가 가능합니다.)

해외거래처에서 품절인 경우, 2차 거래선을 통해 유럽과 미국 출판사로 직접 수입이 진행될 수 있습니다.
수입 진행 시점으로 부터 2~3주가 추가로 소요되며, 해외에서도 유통이 원활하지 않은 도서는 품절 안내가 지연될 수 있습니다.
해당 경우, 문자와 메일로 별도 안내를 드리고 있사오니 마이페이지에서 휴대전화번호와 메일주소를 다시 한번 확인해주시기 바랍니다.
```', 8350, 8350, 0, 0, 20, 0, 100, '2023-01-25 22:16:00', '2023-02-13 22:16:19', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (64, 3, 6, 1, null, '9791140703319', '주식투자 무작정 따라하기 (개정판)', '길벗', 440, '## 책소개
2005년에 첫 출간된 이래 100만 부 넘는 판매고를 올린 《주식투자 무작정 따라하기》의 2023년 6차 최신개정판이 출간되었다. 이 책은 출간 후 18년 가까이 주식 분야 도서 검색어 1위, 추천도서 1위 타이틀을 놓치지 않았으며, 독자들의 열렬한 지지와 입소문을 통해 주식 분야 부동의 베스트 1위를 지켜왔다.

특히 2020년 코로나와 함께 주식 열풍이 불어 ‘동학개미운동’이 일어나자 수많은 개인투자자가 주식시장에 들어왔다. 이때 주식 공부를 시작한 초보 투자자들의 입소문을 타고 《주식투자 무작정 따라하기》는 명실상부 주식투자 입문서로서 그 위치를 공고히 하게 된다.

이번 6차 개정판에는 2022년까지의 시장 분석 자료와 기업 데이터를 최신의 자료로 업데이트했으며, 늘어나는 해외주식투자자들의 궁금증을 해결하기 위해 코너를 확대해 소개한다. 초보자뿐 아니라 중급자에게도 도움이 될 만한 정보와 원칙이 담겨있어 ‘주식투자의 정석’이라 말해도 손색이 없다.

## 저자정보
고려대학교 법과대학을 졸업하고 한국증권거래소를 거쳐 동서증권에서 20년간 근무했다. 동원증권 이사를 역임했으며 교보증권, 신한금융투자에서 투자상담가로, 하나대투증권에서 투자고문으로 활동했다. 우리나라 1세대 증권맨으로, 기관과 일반투자자 양쪽에서 40년 가까이 코스피 현장을 지킨 정통 주식 전문가다.
주식 분야 베스트셀러 저자로, 주식공부를 시작하는 초보자들의 필독서로 자리 잡은 《주식투자 무작정 따라하기》를 비롯해 《차트분석 무작정 따라하기》, 《주식 대세판단 무작정 따라하기》, 《만화 주식투자 무작정 따라하기》, 《돈이 보이는 주식의 역사》, 《소설로 배우는 주식투자》 등 다수의 저서를 집필했다.
개인투자자들이 체계적으로 주식공부를 할 수 있게 집필된 저자의 책으로 국내 주식투자 문화를 한층 더 끌어올렸다는 평가를 받고 있으며, 누적 판매부수가 100만부에 이른다.', 16560, 18400, 10, 0, 50, 0, 100, '2023-02-02 22:17:00', '2023-02-13 22:18:02', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (65, 3, 5, 1, null, '9780547577319', 'A Long Walk to Water', 'Sandpiper', 128, '### 책소개
```
MD 한마디
지친 살바를 격려했던 ''한 번에 한 걸음씩'' 삼촌의 말이 큰 울림으로 남는다. 한 걸음씩 하루를 견뎌낸 살바는 수단 내전의 희생자들을 위해 전쟁의 참상을 전 세계에 알리고 그들에게 필요한 우물을 만들어주는 일을 통해 그들에게 희망을 전달한다. - 외국도서 MD 이보영
```

2008년 현재, 수단 어느 마을의 소녀 니아는 가족이 마실 물을 긷기 위해 연못까지 하루에 여덟 시간을 걷습니다. 그러나 그렇게 길어 오는 물도 형편없이 적은 데다 더러운 흙탕물이라 니아의 어린 동생은 배앓이를 하기 일쑤입니다. 비가 오지 않는 건기가 되면 가족은 집을 떠나 마른 호수 바닥에 자리 잡고는 물이 솟을 때까지 진흙을 파서 그 물을 마시곤 합니다. 이런 상황이니, 니아와 니아네 형제들이 학교를 다니는 것은 꿈꾸기조차 힘듭니다.

그러던 어느 날 니아의 마을에 낯선 사람들이 나타나 우물을 파 주겠다고 합니다. 우물을 파는 비용은 머나먼 나라의 어느 초등학교 어린이들이 돈을 걷어 보내 준 것이라고. 우물이 생기면 물을 길러 오랜 시간 걸어갈 필요가 없고, 그러면 아이들이 학교에 갈 수 있다고합니다. 학교에 나가고 읽고 쓰는 법을 배울 수 있다니, 니아는 생각만 해도 설레입니다. 그렇지만 땅을 판다고 깨끗한 물이 나올까요? 그리고 우물 작업의 책임자는 니아의 마을 부족과 적대 관계인 딩카 족 사람이라는데 그 부족 사람이 왜 우리를 도울까요? 걱정 반, 기대 반인 니아의 눈앞에서 커다란 기계가 땅을 파기 시작하고 마침내 땅속에서 물이 쏟아져 나옵니다. 니아와 온 마을 사람은 환호성을 지릅니다. 그리고 니아는 우물 작업의 책임자인 딩카 부족 아저씨와 수줍게 인사를 합니다. 그의 이름은 살바입니다.

실화를 바탕으로 하였기에 더더욱 사실적으로 다가오는 이 이야기는 책장을 덮을 무렵에는 마음을 울리는 진한 감동을 전합니다. 오랜 세월 불화하던 두 부족이 우물을 통해 화해의 손길을 마주 잡는 마지막 장면에서는 미래의 희망도 엿볼 수 있습니다. 독자들은 이 책을 통해 고통 받는 수단의 현실과 그 너머 희망까지 함께 볼 수 있습니다.

From Newbery medalist Linda Sue Park, an emotional novel based on a true story.

Nya goes to the pond to fetch water for her family. She walks eight hours every day.

Salva walks away from his war-torn village. He is a “lost boy” refugee, destined to cover Africa on foot, searching for his family and safety.

Two young people . . . two stories.

One country: Sudan.

This mesmerizing dual narrative follows two threads?one unfolding in 2008 and one in 1985?with one hopeful message: that even in a troubled country, determined survivors may find the future they are hoping for.', 6527, 10700, 39, 0, 40, 0, 200, '2013-01-20 22:19:00', '2023-02-13 22:20:02', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (66, 1, 3, 1, null, '9791157526642', 'ENJOY 여행영어', '넥서스', 232, '## 책소개
ENJOY 여행영어는 여행서 같은 영어 책이다. 필수 여행영어 표현과 함께 인기 여행지 소개와 여행에 유용한 정보들을 담고 있으며, 여행지에서 필요한 표현들이 한눈에 들어오도록 가독성이 좋게 구성되어 있다. 책은 한 손에 쏙! 책 속의 표현은 한눈에 팍 들어온다. 발음듣기용 MP3와 회화연습용 MP3 파일을 넥서스 홈페이지(www.nexusbook.com)에서 무료로 제공한다.

## 목차

ENJOY 여행영어

Before you go_이것만은 알고 가자
- 여행 가서 자주 쓰는 표현 BEST 30
- 하고 싶은 말 다 하는 기초회화 Pattern 10
그곳에 가고 싶다_뉴욕

1. 초간단 기본 표현
인사하기 / 감사와 사과 / 긍정과 부정 / 도움 청하기 / 영어를 못해요 / 그곳에 가고 싶다_런던

2. 기내에서
자리 찾기 / 승무원에게 필요한 것 말하기 / 입국신고서 작성하기 / ★출입국신고서 작성하기 /
기내식 먹기 / 기내에서 아플 때 / 그곳에 가고 싶다_파리

3. 공항에서
★일반적인 입국 절차 / 비행기 갈아타기 / 입국 심사 / 수하물 찾기 / 세관 검사 / 환전하기 /
★여러 나라의 화폐 단위 / 그곳에 가고 싶다_로마

4. 호텔에서
체크인 하기 / ★해외 숙박 예약 사이트 / 숙소를 예약하지 않았을 때 /
룸서비스, 편의 시설 이용하기 / 문제가 생겼어요 / 체크아웃 하기 / 그곳에 가고 싶다_뮌헨

5. 거리에서
길 물어보기 / ★여행 시 유용한 스마트폰 어플 / 어디예요? / 어떻게 가요? / 길을 잃었어요 /
그곳에 가고 싶다_시드니

6. 교통 이용하기
지하철 이용하기 / 버스 타기 전에 / 버스표 구입하기 / 버스 안에서 / 고속버스 이용하기 /
기차표 구입하기 / 기차 좌석 정하기 / 기차 안에서 / 문제가 생겼어요 / 택시 타기 전에 /
택시의 출발과 도착 / 택시 기사에게 요청하기 / 문제가 생겼어요 / 문제가 생겼어요 /
렌터카 요금 물어보기 / 빌릴 차 고르기 / 렌트하기 / 주유소에서 / ★도로 표지판 익히기 /
그곳에 가고 싶다_바르셀로나

7. 식당·술집에서
식당 예약하기 / 식당에 도착했을 때 / 음식 주문하기 / 문제가 생겼어요 / ★메뉴판 읽기 /
계산하기 / 커피숍에서 / 패스트푸드점에서 / 술집에서 / 그곳에 가고 싶다_이스탄불

8. 관광 즐기기
관광하기 / 사진 찍기 / 박물관, 미술관 관람하기 / ★유럽에서 꼭 가 봐야 할 박물관 /
영화, 공연 관람하기 / ★강력 추천! 뮤지컬 / 스포츠 관람하기 / 그곳에 가고 싶다_하와이

9. 쇼핑하기
물건 살펴보기 / 물건 사기 / 물건값 흥정하기 / 기념품 사기 / 상점 찾기 / 옷 사기 /
신발 사기 / 화장품 사기 / 슈퍼마켓에서 / 면세점에서 / 교환과 환불 / 그곳에 가고 싶다_홍콩

10. 친구 만들기
말문 떼기 / 칭찬하기 / 자기소개하기 / 이메일, SNS 주고받기 / 그곳에 가고 싶다_방콕

11. 긴급 상황 발생
도움 청하기 / 도난당하거나 분실했을 때 / 여권을 잃어버렸어요 / 여행자 수표를 잃어버렸어요 /
신용카드, 항공권을 잃어버렸어요 / 교통사고가 났을 때 / 아플 때 / 병원에서 진찰받기 /
그곳에 가고 싶다_프라하

스피드 인덱스', 8100, 9000, 10, 0, 50, 0, 300, '2016-01-30 22:20:00', '2023-02-13 22:20:33', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (67, 3, 5, 1, null, '9791137333185', '스파이 패밀리', '학산문화사', 220, '## 책소개
능력자 스파이 <황혼>은, 보다 좋은 세상을 만들기 위해 매일 첩보임무를 하고 있었다. 어느 날, 새로운 곤란한 지령이 떨어지는데…임무를 위해, 가짜 가족을 만들어, 새로운 생활이 시작되지만?! 스파이X액션X특수가족 코미디! SPYＸFAMILY ⓒ 2019 Tatsuya Endo/SHUEISHA Inc.', 4500, 5000, 10, 0, 50, 0, 1000, '2022-11-24 22:23:00', '2023-02-13 22:23:28', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (68, 1, 6, 1, null, '9791158523824', '샤먼 바이블', '글로벌콘텐츠', 272, '## 책소개
『단군의 나라, 카자흐스탄』의 저자 김정민, 그가 7년 만에 내놓은 신작!
천문을 이용한 문명의 탄생 그리고 종교의 발전
전 세계로 흩어진 민족의 뿌리를 찾아 떠나는 여정

역사 연구에 있어 사료를 중심으로 하는 것은 기본이지만 사료 중심만으로는 역사를 제대로 이해할 수 없다. 『샤먼 바이블: 인류 문명과 종교의 기원을 찾아서』는 사료에 더하여 민속학, 풍습, 구전, 천문현상 등의 기록을 참고하여 쓴 책이다. 미개한 종교로 취급받는 ‘샤머니즘’에 대한 인식을 바로잡고, 정치?종교적 의도에 의해 왜곡되고 숨겨진 역사를 파헤친다. 저자는 고대 민족의 발자취를 직접 좇으며 확인한 사실을 바탕으로 사료만으로는 알 수 없던 역사의 이면을 들춰낸다. 이 책을 통해 기독교, 불교, 이슬람, 힌두교 등 현존하는 전 세계 모든 종교가 샤머니즘이라는 하나의 뿌리에서 기원했음을 알 수 있다.

책은 총 3장으로 구성되어 있다. 제1장 [문명의 새벽]에서는 문명이 탄생하기 전 인류가 어떻게 환경에 적응하고 극복했는지에 대한 내용을 담았다. 샤먼을 중심으로 발전하게 된 문명과 종교의 이야기를 시작한다. 제2장 [천문을 이용한 문명의 탄생]에서는 북극성 신앙을 숭배하던 고대 민족이 별자리를 따라 도시를 건설한 내용을 펼친다. 또 언어 비교를 통해 한국과 유대인, 엘람족, 드라비다족, 스키타이족의 연결고리를 찾아 간다. 제3장 [천문을 이용한 종교의 발전]에서는 재세이화와 천손강림 사상을 바탕으로 발전한 종교와 그 기원의 공통점을 밝힌다.


## 목차
시작하기에 앞서

제1장 문명의 새벽

1. 홍수신화
2. 여와(Yeowa)와 야훼(Yahweh)
3. 바벨탑 전설
4. 천산의 샤먼들
5. 저지대로 내려온 천산의 샤먼들(천손강림)
6. 에덴의 사과
7. 문명 전파자들은 사악한 존재인가?
8. 천신족의 하산과 저지대 민족과의 만남
9. 북극성 신앙은 마고숭배 신앙이며 모든 인류의공통 신앙
10. 북극성 신앙에서 태양숭배 사상으로

제2장 천문을 이용한 문명의 탄생

1. 별자리를 모방한 도시 건설(한양)
2. 별자리를 모방한 도시 건설(아스타나) 유대인-엘람-드라비다-스키타이-한국의 연결고리
3. 별자리를 모방한 도시 건설(12환국)
4. 한국인과 유대인의 연결고리 기자조선
5. 중국 공산당에 의한 아시아의 백인 지우기
6. 천산에서 동쪽으로 이동한 케레이들
7. 다시 서쪽으로 이동한 케레이족
8. 전 세계로 흩어진 케레이족
9. 중앙아시아의 케레이족

제3장 천문을 이용한 종교의 발전

1. 천손강림 사상과 기독교 메시아 사상의 유사성
2. 텡그리의 부활과 크리스마스
3. 올림픽과 고대 샤머니즘 축제의 관계
4. 밤과 낮의 균형자 플레이아데스 성인
5. 재세이화(在世理化)와 천손강림
6. 북극성을 따라 한반도로 이동한 문명 전파자들
7. 막달라 마리아와 사그라다 파밀리아 완성의 의미
8. 신은 시간이다 & 시간을 지배하는 자
9. 직각자와 컴퍼스를 들고 동방으로 온 문명 전파자들과 그레이트 리셋
10. 전 지구적 통합의 흐름 속 대한민국
', 19800, 22000, 10, 0, 50, 0, 100, '2023-01-20 22:25:00', '2023-02-13 22:26:07', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (69, 3, 1, 1, null, '9788960777330', '자바 ORM 표준 JPA 프로그래밍', '에이콘출판사', 736, '### 책소개

자바 ORM 표준 JPA는 SQL 작성 없이 객체를 데이터베이스에 직접 저장할 수 있게 도와주고, 객체와 관계형 데이터베이스의 차이도 중간에서 해결해준다. 이 책은 JPA 기초 이론과 핵심 원리, 그리고 실무에 필요한 성능 최적화 방법까지 JPA에 대한 모든 것을 다룬다. 또한, 스프링 프레임워크와 JPA를 함께 사용하는 방법을 설명하고, 스프링 데이터 JPA, QueryDSL 같은 혁신적인 오픈 소스를 활용해서 자바 웹 애플리케이션을 효과적으로 개발하는 방법을 다룬다.

---
### 출판사 리뷰
★ 이 책에서 다루는 내용 ★

■ JPA 기초 이론과 핵심 원리
■ JPA로 도메인 모델을 설계하는 과정을 예제 중심으로 설명
■ 다양한 객체 지향 쿼리 언어 설명
■ JPA와 스프링 프레임워크를 함께 사용해서 웹 애플리케이션을 개발하는 방법
■ 스프링 데이터 JPA, QueryDSL 소개 및 활용
■ 실무에서 JPA를 사용할 때 성능을 최적화하는 다양한 방법


★ 이 책의 대상 독자 ★

이 책은 JPA를 사용해서 엔터프라이즈 애플리케이션을 개발하려는 모든 자바 개발자를 대상으로 한다. 이 책의 내용을 이해하려면 자바 언어와 JDBC를 사용한 데이터베이스 프로그래밍, 그리고 객체지향 프로그래밍과 관계형 데이터베이스에 대해 어느 정도 알고 있어야 한다. 추가로 3부는 웹 개발과 스프링 프레임워크에 대한 기초 지식이 필요하며 JUnit을 다룰 수 있어야 한다. 그리고 예제 코드를 실행하려면 메이븐에 대해서도 약간의 지식이 필요하다.


★ 이 책의 구성 ★

JPA는 크게 객체와 테이블을 어떻게 매핑해야 하는지에 관한 설계 부분과 설계한 모델을 실제 사용하는 부분으로 나눌 수 있다. 책의 앞부분에서는 기초 이론과 설계 방법을 학습하고 뒷부분에서는 학습한 이론을 바탕으로 JPA를 활용해서 실제 웹 애플리케이션을 개발한다.

이 책은 크게 네 부분으로 나뉘어 있다.

1장에서 9장은 이론 편이다. 객체와 테이블을 매핑하는 방법과 JPA의 핵심 기능들을 알아본다. 4장부터 9장까지는 각 장의 마지막에 점진적으로 도메인 모델을 설계해 나가는 실전 예제가 있어서 학습한 내용을 실제로 적용해볼 수 있게 했다.

10장은 객체지향 쿼리 언어에 대한 내용이다. JPA가 제공하는 객체지향 쿼리 언어인 JPQL(Java Persistence Query Language)부터 직접 SQL을 작성하는 네이티브 SQL까지 알아본다.

11장과 12장은 실무에서 JPA를 사용하기 위한 활용편이다. 스프링 프레임워크와 JPA를 사용해서 어떻게 웹 애플리케이션을 개발하는지 학습하고 스프링 데이터 JPA와 QueryDSL이라는 혁신적인 오픈소스도 사용해본다.
13장에서 16장은 트랜잭션과 락, 캐시, 성능 최적화 등 JPA의 다양한 고급 주제들을 다룬다.


★ 온라인 강의 ★

지금까지 다양한 실무 프로젝트에 JPA를 도입했다. 작게는 단순한 웹 서비스부터 크게는 조 단위의 거래 금액을 처리하는 주문, 결제, 정산 시스템까지 JPA로 직접 설계하고 개발했다. JPA를 처음 실무에 도입할 때는 좌충우돌 했지만, 개발 생산성과 유지보수가 확연히 좋아졌고 코드 품질과 테스트에 더 많은 시간을 할애할 수 있었다. 무엇보다 JPA를 사용해본 동료들은 이전으로 돌아가고 싶어하지 않아 했다. 하지만 JPA에 관한 국내 자료가 부족해 어려움이 많았다. 그래서 2015년 직접 이 책을 썼다.
책과 함께 볼 수 있는 유료 온라인 강의를 제공한다. 책을 출간한 뒤 네이버, 카카오와 같은 인터넷 비즈니스 회사부터 우아한형제들, 11번가 등 e커머스 회사까지 JPA를 사용 중이거나 도입하려는 많은 회사에서 강연했다. 책에서 이해하기 어렵던 부분을 강의를 통해 쉽게 이해했다는 개발자들의 이야기를 듣고 온라인 강의를 개설했다. 참고로 강의는 최신 버전의 스프링 부트와 JPA를 사용하고, 코드로 쉽게 따라할 수 있다. 그리고 실무 노하우를 전달하는 데 더 많은 초점을 맞췄다.
여러분도 실무에서 JPA를 자신 있게 활용할 수 있기를 바란다.


다음 링크에서 온라인 강의를 수강할 수 있다.

■ 강의 링크: https://www.inflearn.com/roadmaps/149
■ 온라인 강의 목록
-자바 ORM 표준 JPA 프로그래밍 - 기본편: https://www.inflearn.com/course/ORM-JPA-Basic
-실전! 스프링 부트와 JPA 활용1 - 웹 애플리케이션 개발: https://www.inflearn.com/course/스프링부트-JPA-활용-1
-실전! 스프링 부트와 JPA 활용2 - API 개발과 성능 최적화: https://www.inflearn.com/course/스프링부트-JPA-API개발-성능최적화#
-실전! 스프링 데이터 JPA: https://www.inflearn.com/course/스프링-데이터-JPA-실전
-실전! Querydsl: https://www.inflearn.com/course/Querydsl-실전


★ 지은이의 말 ★

JPA를 처음 접했을 때의 놀라움은 아직도 잊혀지지 않는다. 지금까지 관계형 데이터베이스에서 객체를 관리하려고 작성했던 무수한 CRUD 코드와 SQL들이 머릿속을 스쳐 지나갔다. 마치 시골에서 직접 모내기를 하다가 최신 트랙터를 만난 기분이었다.

객체를 관계형 데이터베이스에 저장하려면 많은 시간과 코드를 소비해야 한다. 예를 들어 객체를 SQL로 변환하는 단순한 일부터, 객체의 상속 구조를 테이블에 저장하는 복잡한 일까지, 개발자는 객체와 데이터베이스 사이에서 무수한 매핑 코드와 SQL을 작성해야 한다. 자바 진영에서는 이런 문제를 해결하기 위해 JPA라는 표준 기술을 제공한다. 자바 ORM 표준 JPA는 SQL 작성 없이 객체를 데이터베이스에 직접 저장할 수 있게 도와주고, 객체와 관계형 데이터베이스의 차이도 중간에서 해결해준다.

그간 실무에 JPA를 도입하면서 처음에는 좌충우돌하기도 했지만, 개발 생산성과 유지보수가 확연히 좋아졌고, 남은 시간에 코드 품질과 테스트에 더 많은 시간을 쏟을 수 있었다. 그리고 JPA를 사용해본 동료들은 전으로 돌아가고 싶어하지 않았다. 하지만 JPA에 대한 국내 자료가 부족했고, 대부분이 원서여서 어려운 점이 많았다. 그래서 때가 되면 JPA에 대한 책을 쓰고 싶다고 어렴풋하게 생각했는데, 마침 『토비의 스프링 3』과 『토비의 스프링 3.1』을 저술하신 이일민 님께서 JPA에 관한 책 쓰기를 권유하셨다. 6개월 정도면 충분하겠지 생각하고 책을 쓰기로 했는데, 어느덧 시간이 화살처럼 빠르게 지나 2년이 지나버렸다.

이 책에서는 JPA 기초 이론과 핵심 원리, 그리고 실무에 필요한 성능 최적화 방법까지 JPA에 대한 모든 것을 다루는 데 주력했다. 또한, 스프링 프레임워크와 JPA를 함께 사용하는 방법을 설명하고, 스프링 데이터 JPA, QueryDSL 같은 혁신적인 오픈 소스를 활용해서 자바 웹 애플리케이션을 효과적으로 개발하는 방법을 설명했다.

돌이켜보니 보잘것없는 사람의 책을 기다리고 응원해주신 분들 덕분에 여기까지 온 것 같다. 진심으로 정말 큰 힘이 되었기에, 그 모든 분께 감사를 전한다. 이 책이 JPA를 시작하는 분들께 조금이나마 도움이 되길 바란다.', 38700, 43000, 10, 0, 10, 0, 100, '2015-07-28 00:48:00', '2023-02-14 00:48:39', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (70, 2, 6, 3, null, '9791190846523', '리얼 오사카', '한빛라이프', 316, '# 책소개
코로나19 이후 ‘진짜 최신 정보’로 찾아온
보고, 사고, 먹고 마시는 여행의 모든 것!

여행 가이드북의 대세, 리얼 시리즈의 오사카 편이 최신 정보를 가득 담아 돌아왔다. 코로나19 이후 약 3년 만에 선보이는 개정판인 만큼 출간 직전까지 이어진 취재를 통해 가장 발 빠른 정보를 담았으며, 최근 새로 생긴 쇼핑몰부터 가장 핫한 음식점, 핵심 명소와 이색 스폿까지 빠짐없이 소개한다. 특히 국내 최대 일본 여행 커뮤니티 [네일동]에서 20년 가까이 스태프로 활동해 온 저자와 오랜 현지 거주 경험으로 오사카에 빠삭한 저자가 힘을 모아 여행자들이 가장 궁금해 하는 것 위주로 구성했기 때문에 더욱 쉽고 재미있게 여행을 즐길 수 있다. 오사카의 핵심 정보를 둘러본 후 단계별로 가고 싶은 스폿과 원하는 코스, 이용할 교통 패스를 고르고 출국부터 입국, 시내로 이동하는 일련의 과정을 찬찬히 훑어보면 여행 준비 끝, 모든 궁금증 해결이다. 여기에 음식과 쇼핑에 관련된 상식과 재미난 팁도 가득 담았으니 『리얼 오사카』와 함께라면 오사카 여행, 이보다 더 좋을 수 없다!

---
', 16920, 18800, 10, 0, 40, 0, 0, '2022-12-12 02:46:00', '2023-02-14 02:47:03', 0);

INSERT INTO product (product_number, product_policy_number, product_type_code_number, product_sale_code_number, product_relation_number, product_isbn, product_title, product_publisher, product_page_count, product_description, product_sales_price, product_price, product_sales_rate, product_view_count, product_priority, product_deleted, product_stock, product_published_at, created_at, product_subscribed) VALUES (71, 1, 2, 1, null, '9788952767028', '스파이더맨/데드풀', '시공사', 400, '### 소개
스파이더맨이 말합니다,
이건 팀업이 아니야

데드풀은 스파이더맨과 친해지고 싶습니다. 하지만 스파이더맨은 데드풀이 영 마땅찮아요. 돈이면 뭐든 하는 용병. 살인자. 과격하고 마이웨이에, 언제고 저질 드립을 던지는 데드풀. 입담이라면 스파이더맨도 지지 않지만, 대상이 누구건 살인은 안 된다는 확실한 윤리적 가치를 지키고 있어요. 데드풀은 스파이더맨의 그런 영웅적인 면을 동경하고, 또 모두에게 사랑받는 그를 내심 부러워하면서, 한 팀으로 어울리고 싶어합니다. 하지만 스파이더맨은 필사적으로 그를 밀어내죠. 이런 그들도 자연스럽게 어울리는 날이 올까요?
「데드풀」(1997) #11, 「케이블 & 데드풀」 #24, 「어메이징 스파이더맨」(1963) #611, 「데드풀」(2008) #19-21, 「어벤징 스파이더맨」 #12-13, 「데드풀」(2012) #10, 「데드풀 애뉴얼」#2 수록.

* 같이 보면 좋은 책
『데드풀』 1-3권
『스파이더맨/데드풀』 1-3권
『데드풀 vs. 타노스』
『데드풀 & 케이블 얼티밋 컬렉션』 1-2권

* 0권?
0권은 『데드풀』, 『케이블 & 데드풀』, 『어메이징 스파이더맨』, 『어벤징 스파이더맨』, 『데드풀 애뉴얼』까지 여러 타이틀에서 두 캐릭터가 함께 등장하는 이슈만 골라 한데 모은 단행본이다. 한 권을 관통하는 큰 스토리 없이 타이틀별로 내용이 다르고, 둘이 함께 등장한다는 것이 유일한 공통점이다. 더불어 2권도 각각 다른 작가가 이슈 단위로 스토리를 완결 짓는 ‘게스트 이슈’만 수록됐기 때문에 스토리상으로 1권과 이어지지 않으며, 1권의 스토리는 곧장 3권으로 이어진다. 따라서 0권과 2권은 1권, 3권과 함께 보지 않아도 내용을 이해하는 데는 무리가 없다. 0권과 2권은 다양한 시기를 배경으로 한 여러 에피소드가 이어지고, 1권과 3권에서는 조금 더 긴 호흡으로 시끄러운 콤비의 관계를 자세히 들여다볼 수 있다.', 15400, 15400, 0, 0, 20, 0, 98, '2020-02-14 13:11:00', '2023-02-14 13:11:57', 0);



INSERT INTO product_and_author (author_number, product_number)
VALUES (1, 1);

INSERT INTO product_and_author (author_number, product_number)
VALUES (23, 2);

INSERT INTO product_and_author (author_number, product_number)
VALUES (24, 2);

INSERT INTO product_and_author (author_number, product_number)
VALUES (6, 3);

INSERT INTO product_and_author (author_number, product_number)
VALUES (25, 4);

INSERT INTO product_and_author (author_number, product_number)
VALUES (26, 5);

INSERT INTO product_and_author (author_number, product_number)
VALUES (4, 6);

INSERT INTO product_and_author (author_number, product_number)
VALUES (7, 7);

INSERT INTO product_and_author (author_number, product_number)
VALUES (12, 8);

INSERT INTO product_and_author (author_number, product_number)
VALUES (3, 9);

INSERT INTO product_and_author (author_number, product_number)
VALUES (28, 10);

INSERT INTO product_and_author (author_number, product_number)
VALUES (8, 11);

INSERT INTO product_and_author (author_number, product_number)
VALUES (27, 12);

INSERT INTO product_and_author (author_number, product_number)
VALUES (4, 13);

INSERT INTO product_and_author (author_number, product_number)
VALUES (29, 14);

INSERT INTO product_and_author (author_number, product_number)
VALUES (30, 14);

INSERT INTO product_and_author (author_number, product_number)
VALUES (9, 15);

INSERT INTO product_and_author (author_number, product_number)
VALUES (31, 16);

INSERT INTO product_and_author (author_number, product_number)
VALUES (10, 17);

INSERT INTO product_and_author (author_number, product_number)
VALUES (32, 18);

INSERT INTO product_and_author (author_number, product_number)
VALUES (2, 19);

INSERT INTO product_and_author (author_number, product_number)
VALUES (33, 20);

INSERT INTO product_and_author (author_number, product_number)
VALUES (11, 21);

INSERT INTO product_and_author (author_number, product_number)
VALUES (34, 22);

INSERT INTO product_and_author (author_number, product_number)
VALUES (35, 23);

INSERT INTO product_and_author (author_number, product_number)
VALUES (13, 24);

INSERT INTO product_and_author (author_number, product_number)
VALUES (36, 25);

INSERT INTO product_and_author (author_number, product_number)
VALUES (14, 26);

INSERT INTO product_and_author (author_number, product_number)
VALUES (15, 26);

INSERT INTO product_and_author (author_number, product_number)
VALUES (37, 27);

INSERT INTO product_and_author (author_number, product_number)
VALUES (39, 28);

INSERT INTO product_and_author (author_number, product_number)
VALUES (16, 29);

INSERT INTO product_and_author (author_number, product_number)
VALUES (38, 30);

INSERT INTO product_and_author (author_number, product_number)
VALUES (40, 31);

INSERT INTO product_and_author (author_number, product_number)
VALUES (41, 32);

INSERT INTO product_and_author (author_number, product_number)
VALUES (8, 33);

INSERT INTO product_and_author (author_number, product_number)
VALUES (42, 34);

INSERT INTO product_and_author (author_number, product_number)
VALUES (43, 35);

INSERT INTO product_and_author (author_number, product_number)
VALUES (5, 36);

INSERT INTO product_and_author (author_number, product_number)
VALUES (45, 37);

INSERT INTO product_and_author (author_number, product_number)
VALUES (44, 38);

INSERT INTO product_and_author (author_number, product_number)
VALUES (47, 39);

INSERT INTO product_and_author (author_number, product_number)
VALUES (46, 40);

INSERT INTO product_and_author (author_number, product_number)
VALUES (18, 41);

INSERT INTO product_and_author (author_number, product_number)
VALUES (48, 42);

INSERT INTO product_and_author (author_number, product_number)
VALUES (35, 43);

INSERT INTO product_and_author (author_number, product_number)
VALUES (50, 44);

INSERT INTO product_and_author (author_number, product_number)
VALUES (19, 45);

INSERT INTO product_and_author (author_number, product_number)
VALUES (49, 46);

INSERT INTO product_and_author (author_number, product_number)
VALUES (20, 47);

INSERT INTO product_and_author (author_number, product_number)
VALUES (52, 48);

INSERT INTO product_and_author (author_number, product_number)
VALUES (51, 49);

INSERT INTO product_and_author (author_number, product_number)
VALUES (21, 50);

INSERT INTO product_and_author (author_number, product_number)
VALUES (22, 51);

INSERT INTO product_and_author (author_number, product_number)
VALUES (53, 52);

INSERT INTO product_and_author (author_number, product_number)
VALUES (54, 53);

INSERT INTO product_and_author (author_number, product_number)
VALUES (55, 54);

INSERT INTO product_and_author (author_number, product_number)
VALUES (56, 55);

INSERT INTO product_and_author (author_number, product_number)
VALUES (57, 56);

INSERT INTO product_and_author (author_number, product_number)
VALUES (58, 57);

INSERT INTO product_and_author (author_number, product_number)
VALUES (59, 58);

INSERT INTO product_and_author (author_number, product_number)
VALUES (60, 59);

INSERT INTO product_and_author (author_number, product_number)
VALUES (62, 60);

INSERT INTO product_and_author (author_number, product_number)
VALUES (63, 61);

INSERT INTO product_and_author (author_number, product_number)
VALUES (61, 62);

INSERT INTO product_and_author (author_number, product_number)
VALUES (64, 63);

INSERT INTO product_and_author (author_number, product_number)
VALUES (65, 64);

INSERT INTO product_and_author (author_number, product_number)
VALUES (67, 65);

INSERT INTO product_and_author (author_number, product_number)
VALUES (66, 66);

INSERT INTO product_and_author (author_number, product_number)
VALUES (68, 67);

INSERT INTO product_and_author (author_number, product_number)
VALUES (69, 68);

INSERT INTO product_and_author (author_number, product_number)
VALUES (70, 69);

INSERT INTO product_and_author (author_number, product_number)
VALUES (71, 70);

INSERT INTO product_and_author (author_number, product_number)
VALUES (72, 70);

INSERT INTO product_and_author (author_number, product_number)
VALUES (73, 71);



INSERT INTO product_and_category (category_number, product_number) VALUES (2, 1);

INSERT INTO product_and_category (category_number, product_number) VALUES (30, 1);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 2);

INSERT INTO product_and_category (category_number, product_number) VALUES (28, 2);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 3);

INSERT INTO product_and_category (category_number, product_number) VALUES (47, 3);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 4);

INSERT INTO product_and_category (category_number, product_number) VALUES (33, 4);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 5);

INSERT INTO product_and_category (category_number, product_number) VALUES (25, 5);

INSERT INTO product_and_category (category_number, product_number) VALUES (39, 5);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 6);

INSERT INTO product_and_category (category_number, product_number) VALUES (21, 6);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 7);

INSERT INTO product_and_category (category_number, product_number) VALUES (39, 7);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 8);

INSERT INTO product_and_category (category_number, product_number) VALUES (7, 8);

INSERT INTO product_and_category (category_number, product_number) VALUES (23, 8);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 9);

INSERT INTO product_and_category (category_number, product_number) VALUES (21, 9);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 10);

INSERT INTO product_and_category (category_number, product_number) VALUES (35, 10);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 11);

INSERT INTO product_and_category (category_number, product_number) VALUES (30, 11);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 12);

INSERT INTO product_and_category (category_number, product_number) VALUES (20, 12);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 13);

INSERT INTO product_and_category (category_number, product_number) VALUES (30, 13);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 14);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 15);

INSERT INTO product_and_category (category_number, product_number) VALUES (20, 15);

INSERT INTO product_and_category (category_number, product_number) VALUES (39, 15);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 16);

INSERT INTO product_and_category (category_number, product_number) VALUES (34, 16);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 17);

INSERT INTO product_and_category (category_number, product_number) VALUES (25, 17);

INSERT INTO product_and_category (category_number, product_number) VALUES (31, 17);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 18);

INSERT INTO product_and_category (category_number, product_number) VALUES (5, 18);

INSERT INTO product_and_category (category_number, product_number) VALUES (23, 18);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 19);

INSERT INTO product_and_category (category_number, product_number) VALUES (8, 19);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 20);

INSERT INTO product_and_category (category_number, product_number) VALUES (31, 20);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 21);

INSERT INTO product_and_category (category_number, product_number) VALUES (9, 21);

INSERT INTO product_and_category (category_number, product_number) VALUES (19, 21);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 22);

INSERT INTO product_and_category (category_number, product_number) VALUES (12, 22);

INSERT INTO product_and_category (category_number, product_number) VALUES (21, 22);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 23);

INSERT INTO product_and_category (category_number, product_number) VALUES (19, 23);

INSERT INTO product_and_category (category_number, product_number) VALUES (21, 23);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 24);

INSERT INTO product_and_category (category_number, product_number) VALUES (15, 24);

INSERT INTO product_and_category (category_number, product_number) VALUES (19, 24);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 25);

INSERT INTO product_and_category (category_number, product_number) VALUES (32, 25);

INSERT INTO product_and_category (category_number, product_number) VALUES (38, 25);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 26);

INSERT INTO product_and_category (category_number, product_number) VALUES (26, 26);

INSERT INTO product_and_category (category_number, product_number) VALUES (27, 26);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 27);

INSERT INTO product_and_category (category_number, product_number) VALUES (12, 27);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 28);

INSERT INTO product_and_category (category_number, product_number) VALUES (49, 28);

INSERT INTO product_and_category (category_number, product_number) VALUES (50, 28);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 29);

INSERT INTO product_and_category (category_number, product_number) VALUES (5, 29);

INSERT INTO product_and_category (category_number, product_number) VALUES (9, 29);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 30);

INSERT INTO product_and_category (category_number, product_number) VALUES (25, 30);

INSERT INTO product_and_category (category_number, product_number) VALUES (33, 30);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 31);

INSERT INTO product_and_category (category_number, product_number) VALUES (5, 31);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 32);

INSERT INTO product_and_category (category_number, product_number) VALUES (12, 32);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 33);

INSERT INTO product_and_category (category_number, product_number) VALUES (26, 33);

INSERT INTO product_and_category (category_number, product_number) VALUES (31, 33);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 34);

INSERT INTO product_and_category (category_number, product_number) VALUES (10, 34);

INSERT INTO product_and_category (category_number, product_number) VALUES (21, 34);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 35);

INSERT INTO product_and_category (category_number, product_number) VALUES (40, 35);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 36);

INSERT INTO product_and_category (category_number, product_number) VALUES (7, 36);

INSERT INTO product_and_category (category_number, product_number) VALUES (11, 36);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 37);

INSERT INTO product_and_category (category_number, product_number) VALUES (19, 37);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 38);

INSERT INTO product_and_category (category_number, product_number) VALUES (27, 38);

INSERT INTO product_and_category (category_number, product_number) VALUES (40, 38);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 39);

INSERT INTO product_and_category (category_number, product_number) VALUES (20, 39);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 40);

INSERT INTO product_and_category (category_number, product_number) VALUES (17, 40);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 41);

INSERT INTO product_and_category (category_number, product_number) VALUES (7, 41);

INSERT INTO product_and_category (category_number, product_number) VALUES (11, 41);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 42);

INSERT INTO product_and_category (category_number, product_number) VALUES (8, 42);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 43);

INSERT INTO product_and_category (category_number, product_number) VALUES (10, 43);

INSERT INTO product_and_category (category_number, product_number) VALUES (21, 43);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 44);

INSERT INTO product_and_category (category_number, product_number) VALUES (34, 44);

INSERT INTO product_and_category (category_number, product_number) VALUES (39, 44);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 45);

INSERT INTO product_and_category (category_number, product_number) VALUES (15, 45);

INSERT INTO product_and_category (category_number, product_number) VALUES (17, 45);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 46);

INSERT INTO product_and_category (category_number, product_number) VALUES (11, 46);

INSERT INTO product_and_category (category_number, product_number) VALUES (23, 46);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 47);

INSERT INTO product_and_category (category_number, product_number) VALUES (25, 47);

INSERT INTO product_and_category (category_number, product_number) VALUES (26, 47);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 48);

INSERT INTO product_and_category (category_number, product_number) VALUES (24, 48);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 49);

INSERT INTO product_and_category (category_number, product_number) VALUES (45, 49);

INSERT INTO product_and_category (category_number, product_number) VALUES (52, 49);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 50);

INSERT INTO product_and_category (category_number, product_number) VALUES (12, 50);

INSERT INTO product_and_category (category_number, product_number) VALUES (14, 50);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 51);

INSERT INTO product_and_category (category_number, product_number) VALUES (31, 51);

INSERT INTO product_and_category (category_number, product_number) VALUES (39, 51);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 52);

INSERT INTO product_and_category (category_number, product_number) VALUES (29, 52);

INSERT INTO product_and_category (category_number, product_number) VALUES (40, 52);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 53);

INSERT INTO product_and_category (category_number, product_number) VALUES (38, 53);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 54);

INSERT INTO product_and_category (category_number, product_number) VALUES (44, 54);

INSERT INTO product_and_category (category_number, product_number) VALUES (46, 54);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 55);

INSERT INTO product_and_category (category_number, product_number) VALUES (45, 55);

INSERT INTO product_and_category (category_number, product_number) VALUES (48, 55);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 56);

INSERT INTO product_and_category (category_number, product_number) VALUES (9, 56);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 57);

INSERT INTO product_and_category (category_number, product_number) VALUES (4, 57);

INSERT INTO product_and_category (category_number, product_number) VALUES (17, 57);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 58);

INSERT INTO product_and_category (category_number, product_number) VALUES (12, 58);

INSERT INTO product_and_category (category_number, product_number) VALUES (18, 58);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 59);

INSERT INTO product_and_category (category_number, product_number) VALUES (32, 59);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 60);

INSERT INTO product_and_category (category_number, product_number) VALUES (41, 60);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 61);

INSERT INTO product_and_category (category_number, product_number) VALUES (6, 61);

INSERT INTO product_and_category (category_number, product_number) VALUES (24, 61);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 62);

INSERT INTO product_and_category (category_number, product_number) VALUES (43, 62);

INSERT INTO product_and_category (category_number, product_number) VALUES (54, 62);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 63);

INSERT INTO product_and_category (category_number, product_number) VALUES (37, 63);

INSERT INTO product_and_category (category_number, product_number) VALUES (38, 63);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 64);

INSERT INTO product_and_category (category_number, product_number) VALUES (42, 64);

INSERT INTO product_and_category (category_number, product_number) VALUES (53, 64);

INSERT INTO product_and_category (category_number, product_number) VALUES (2, 65);

INSERT INTO product_and_category (category_number, product_number) VALUES (36, 65);

INSERT INTO product_and_category (category_number, product_number) VALUES (39, 65);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 66);

INSERT INTO product_and_category (category_number, product_number) VALUES (13, 66);

INSERT INTO product_and_category (category_number, product_number) VALUES (16, 66);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 67);

INSERT INTO product_and_category (category_number, product_number) VALUES (47, 67);

INSERT INTO product_and_category (category_number, product_number) VALUES (51, 67);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 68);

INSERT INTO product_and_category (category_number, product_number) VALUES (14, 68);

INSERT INTO product_and_category (category_number, product_number) VALUES (22, 68);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 69);

INSERT INTO product_and_category (category_number, product_number) VALUES (7, 69);

INSERT INTO product_and_category (category_number, product_number) VALUES (23, 69);

INSERT INTO product_and_category (category_number, product_number) VALUES (1, 70);

INSERT INTO product_and_category (category_number, product_number) VALUES (13, 70);

INSERT INTO product_and_category (category_number, product_number) VALUES (3, 71);

INSERT INTO product_and_category (category_number, product_number) VALUES (44, 71);

INSERT INTO product_and_category (category_number, product_number) VALUES (46, 71);



INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 1);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (2, 2);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 2);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 3);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (4, 3);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 3);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 4);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (2, 5);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 5);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 6);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 7);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 8);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 9);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 10);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 10);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 11);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 12);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 12);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 13);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 14);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 14);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 15);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 15);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 16);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 16);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 17);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 17);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 18);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 18);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 19);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 19);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 21);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (2, 23);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 23);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (4, 23);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 23);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 24);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 24);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 24);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 26);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (2, 27);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 28);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (4, 28);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 28);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 29);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 30);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 31);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 31);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 32);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 32);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 33);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 33);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 34);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 34);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 35);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 36);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 37);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 38);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 39);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 40);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 41);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 41);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 41);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (4, 42);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 42);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (2, 43);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 43);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (4, 43);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 43);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 45);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 46);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 47);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 49);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 49);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 49);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 51);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 51);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (3, 52);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 52);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 53);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 54);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 55);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 55);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 56);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 57);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (6, 58);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 59);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 60);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 61);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 62);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 63);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 64);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 64);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 64);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (9, 65);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 66);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 66);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (8, 67);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 67);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 68);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 68);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 68);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (5, 69);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (1, 70);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (7, 70);

INSERT INTO product_and_tag (tag_number, product_number)
VALUES (10, 71);








INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (1, 1, 3000, 100, '2023-02-13 22:03:33');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (2, 2, 40000, 100, '2023-02-13 22:04:33');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (3, 3, 8200, 100, '2023-02-13 22:04:46');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (4, 4, 21500, 100, '2023-02-13 22:05:10');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (5, 5, 5500, 100, '2023-02-13 22:05:19');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (6, 6, 7800, 100, '2023-02-13 22:05:32');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (7, 7, 19000, 100, '2023-02-13 22:05:42');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (8, 8, 15000, 100, '2023-02-13 22:05:50');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (9, 9, 7900, 10, '2023-02-13 22:06:02');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (10, 10, 10000, 5, '2023-02-13 22:06:13');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (11, 11, 9000, 100, '2023-02-13 23:33:43');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (12, 12, 9250, 100, '2023-02-13 23:36:59');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (13, 13, 7900, 100, '2023-02-13 23:37:13');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (14, 14, 15000, 100, '2023-02-13 23:37:23');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (15, 15, 7500, 100, '2023-02-13 23:37:34');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (16, 16, 31500, 100, '2023-02-13 23:37:43');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (17, 17, 16000, 100, '2023-02-13 23:37:54');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (18, 18, 6500, 100, '2023-02-13 23:38:05');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (19, 19, 10000, 100, '2023-02-13 23:38:15');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (20, 20, 8000, 100, '2023-02-13 23:38:31');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (21, 21, 12200, 100, '2023-02-13 23:38:41');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (22, 22, 5000, 100, '2023-02-13 23:38:50');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (23, 23, 7000, 100, '2023-02-13 23:38:59');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (24, 24, 11000, 100, '2023-02-13 23:41:15');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (25, 25, 25930, 100, '2023-02-13 23:41:32');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (26, 26, 9000, 100, '2023-02-13 23:41:58');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (27, 27, 5000, 100, '2023-02-13 23:42:13');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (28, 28, 6300, 100, '2023-02-13 23:42:26');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (29, 29, 8200, 100, '2023-02-13 23:42:39');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (30, 30, 20000, 100, '2023-02-13 23:43:02');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (31, 31, 9000, 100, '2023-02-13 23:43:20');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (32, 32, 5500, 100, '2023-02-13 23:43:27');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (33, 33, 7400, 100, '2023-02-13 23:43:34');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (34, 34, 6500, 100, '2023-02-13 23:43:47');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (35, 35, 5000, 100, '2023-02-13 23:44:05');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (36, 36, 14000, 100, '2023-02-13 23:44:20');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (37, 37, 12000, 100, '2023-02-13 23:44:29');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (38, 38, 3800, 200, '2023-02-13 23:44:51');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (39, 39, 5400, 100, '2023-02-13 23:45:00');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (40, 40, 14400, 100, '2023-02-13 23:45:13');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (41, 41, 22000, 300, '2023-02-13 23:45:28');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (42, 42, 8000, 150, '2023-02-13 23:45:38');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (43, 43, 7000, 100, '2023-02-13 23:45:55');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (44, 44, 8200, 100, '2023-02-13 23:46:13');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (45, 45, 7400, 50, '2023-02-13 23:47:30');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (46, 46, 10000, 100, '2023-02-13 23:48:14');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (47, 47, 11400, 400, '2023-02-13 23:48:40');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (48, 48, 2500, 100, '2023-02-13 23:49:29');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (49, 49, 8400, 100, '2023-02-13 23:50:05');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (50, 50, 16000, 100, '2023-02-13 23:50:39');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (51, 51, 4000, 100, '2023-02-13 23:50:47');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (52, 52, 6500, 1000, '2023-02-13 23:51:02');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (53, 53, 8500, 150, '2023-02-13 23:51:17');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (54, 54, 18000, 100, '2023-02-13 23:51:31');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (55, 55, 6230, 100, '2023-02-13 23:51:41');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (56, 56, 9250, 100, '2023-02-13 23:51:51');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (57, 57, 9500, 100, '2023-02-13 23:52:00');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (58, 58, 7000, 1000, '2023-02-13 23:52:10');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (59, 59, 12500, 100, '2023-02-13 23:52:21');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (60, 60, 8250, 100, '2023-02-13 23:52:32');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (61, 61, 7500, 100, '2023-02-13 23:52:43');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (62, 62, 1600, 3000000, '2023-02-13 23:53:19');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (63, 63, 4200, 100, '2023-02-13 23:54:00');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (64, 64, 9200, 100, '2023-02-13 23:54:13');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (65, 65, 5350, 200, '2023-02-13 23:54:27');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (66, 66, 4400, 300, '2023-02-13 23:54:38');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (67, 67, 2500, 1000, '2023-02-13 23:54:56');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (68, 68, 11000, 100, '2023-02-13 23:55:10');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (69, 71, 10000, 100, '2023-02-14 13:37:51');

INSERT INTO purchase (purchase_number, product_number, purchase_price, purchase_amount, created_at) VALUES (70, 69, 10000, 100, '2023-02-14 15:26:25');





INSERT INTO coupon_template (coupon_policy_number, coupon_type_number,
                                               product_number, category_number,
                                               coupon_state_code_number, coupon_template_name,
                                               coupon_template_finished_at, coupon_template_bundled) VALUES (1, 1, null, null, 1, '생일쿠폰', null, 1);
insert into coupon_template values(null, 1, 1, NULL, NULL, 1, '회원가입 축하 쿠폰', NULL, 0);
INSERT INTO coupon_template (coupon_policy_number, coupon_type_number,
                                               product_number, category_number,
                                               coupon_state_code_number, coupon_template_name,
                                               coupon_template_finished_at, coupon_template_bundled) VALUES (3, 1, null, null, 1, '이달의 쿠폰 ( 10% 할인 )', null, 1);

INSERT INTO coupon_template (coupon_policy_number, coupon_type_number,
                                               product_number, category_number,
                                               coupon_state_code_number, coupon_template_name,
                                               coupon_template_finished_at, coupon_template_bundled) VALUES (4, 1, null, null, 1, '이달의 쿠폰 ( 5000원 할인 )', null, 1);

INSERT INTO coupon_template (coupon_policy_number, coupon_type_number,
                                               product_number, category_number,
                                               coupon_state_code_number, coupon_template_name,
                                               coupon_template_finished_at, coupon_template_bundled) VALUES (5, 1, null, null, 1, '이달의 쿠폰 ( 5% 할인 )', null, 1);

         
		 
INSERT INTO coupon_month (coupon_template_number, coupon_month_opened_at, coupon_month_quantity) VALUES (3, '2023-02-14 00:00:00', 50);

INSERT INTO coupon_month (coupon_template_number, coupon_month_opened_at, coupon_month_quantity) VALUES (4, '2023-02-14 00:00:00', 50);

INSERT INTO coupon_month (coupon_template_number, coupon_month_opened_at, coupon_month_quantity) VALUES (5, '2023-02-15 00:00:00', 50);   





INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (1, null, null, 1, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/06dc20a5-78ee-460e-a78e-5ef5da7723bc.png', '.png', '스크린샷 2023-02-13 오후 6.52.51', '06dc20a5-78ee-460e-a78e-5ef5da7723bc', '2023-02-13 20:35:42');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (2, null, null, 1, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/2205c8ca-9557-449d-bdd7-17ceaf3e9496.png', '.png', '스크린샷 2023-02-13 오후 6.53.24', '2205c8ca-9557-449d-bdd7-17ceaf3e9496', '2023-02-13 20:35:42');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (3, null, null, 2, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/6710d1c5-e6d1-4233-b84f-ac258e06c234.png', '.png', 'Screenshot 2023-02-13 at 8.13.00 PM', '6710d1c5-e6d1-4233-b84f-ac258e06c234', '2023-02-13 20:36:41');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (4, null, null, 3, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/33e7f1c0-f65d-404d-8732-1efe32d1479f.jpeg', '.jpeg', 'thumbnail_flower', '33e7f1c0-f65d-404d-8732-1efe32d1479f', '2023-02-13 20:37:38');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (5, null, null, 3, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/2082773e-f53c-40f3-a919-06dc0629e073.jpeg', '.jpeg', 'details_flower', '2082773e-f53c-40f3-a919-06dc0629e073', '2023-02-13 20:37:38');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (6, null, null, 3, null, null, null, 'ebook', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/ebook/2ad8a678-9d7a-4d88-b250-5ce0c8c8d09a.pdf', '.pdf', 'ebook_flower', '2ad8a678-9d7a-4d88-b250-5ce0c8c8d09a', '2023-02-13 20:37:38');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (7, null, null, 4, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/9b79883f-8543-45cf-b259-846e0ef0ccc4.jpeg', '.jpeg', 'masterPizza', '9b79883f-8543-45cf-b259-846e0ef0ccc4', '2023-02-13 20:39:32');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (8, null, null, 5, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/490d3d77-d311-49f4-a9f8-260dca9d7d02.png', '.png', 'Screenshot 2023-02-13 at 8.37.47 PM', '490d3d77-d311-49f4-a9f8-260dca9d7d02', '2023-02-13 20:41:03');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (9, null, null, 6, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/2308fb11-effd-4842-87b6-66f09db1b831.png', '.png', '스크린샷 2023-02-13 오후 8.36.51', '2308fb11-effd-4842-87b6-66f09db1b831', '2023-02-13 20:41:58');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (10, null, null, 7, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/71cd14c7-2856-492f-8141-543e159d5a21.jpeg', '.jpeg', '말의자연사_thumbnail', '71cd14c7-2856-492f-8141-543e159d5a21', '2023-02-13 20:43:49');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (11, null, null, 7, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/71f9fd8d-85f0-45a1-bff2-ab6ac8188728.jpeg', '.jpeg', '말의자연사_detail', '71f9fd8d-85f0-45a1-bff2-ab6ac8188728', '2023-02-13 20:43:49');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (12, null, null, 8, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/0c717110-a4df-4901-967f-18a94bc17d4d.png', '.png', 'Screenshot 2023-02-13 at 6.53.14 PM', '0c717110-a4df-4901-967f-18a94bc17d4d', '2023-02-13 20:44:27');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (13, null, null, 9, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/a617c563-b8a8-45dc-94df-4c16dded04d7.png', '.png', '스크린샷 2023-02-13 오후 8.42.14', 'a617c563-b8a8-45dc-94df-4c16dded04d7', '2023-02-13 20:45:27');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (14, null, null, 10, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/4aafa3b7-92b3-4f89-b021-f9e70bf826b9.jpeg', '.jpeg', 'iwrongThumb', '4aafa3b7-92b3-4f89-b021-f9e70bf826b9', '2023-02-13 20:45:44');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (15, null, null, 10, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/d88488f1-1756-45fd-8103-d12425ad1b97.jpeg', '.jpeg', 'i may be wrong', 'd88488f1-1756-45fd-8103-d12425ad1b97', '2023-02-13 20:45:45');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (16, null, null, 11, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/fa561eef-43f8-4917-bf9a-38b0fdffa979.jpeg', '.jpeg', '희망의끈_thumbnail', 'fa561eef-43f8-4917-bf9a-38b0fdffa979', '2023-02-13 20:46:13');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (17, null, null, 12, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/a9e4d8af-2644-4128-8547-dcb628de2980.png', '.png', 'pitagoras_thumbnail', 'a9e4d8af-2644-4128-8547-dcb628de2980', '2023-02-13 20:47:22');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (18, null, null, 12, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/9ccade20-5dae-452a-9f21-13e6fd0bcbb3.jpg', '.jpg', 'pitagoras_detailimage', '9ccade20-5dae-452a-9f21-13e6fd0bcbb3', '2023-02-13 20:47:23');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (19, null, null, 13, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/f0540058-2c6d-4808-9edc-7a3afdf68c2e.png', '.png', '스크린샷 2023-02-13 오후 8.45.46', 'f0540058-2c6d-4808-9edc-7a3afdf68c2e', '2023-02-13 20:48:09');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (20, null, null, 14, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/adca866c-ad8e-443c-8f2c-8b201dbfdf34.png', '.png', 'Screenshot 2023-02-13 at 8.45.08 PM', 'adca866c-ad8e-443c-8f2c-8b201dbfdf34', '2023-02-13 20:48:15');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (21, null, null, 14, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/27441134-f322-4727-b3a0-8aa728a399f8.jpg', '.jpg', '408085257', '27441134-f322-4727-b3a0-8aa728a399f8', '2023-02-13 20:48:15');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (22, null, null, 15, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/bfe88fcf-327a-4aaf-9eda-a3a37a1fda64.jpeg', '.jpeg', '쓰는직업_thumbnail', 'bfe88fcf-327a-4aaf-9eda-a3a37a1fda64', '2023-02-13 20:48:46');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (23, null, null, 15, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/c1637d3c-7a33-497a-be94-10c2dd8fa5b1.jpeg', '.jpeg', '쓰는직업_detail', 'c1637d3c-7a33-497a-be94-10c2dd8fa5b1', '2023-02-13 20:48:46');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (24, null, null, 16, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/de59c998-90ee-4cd0-bd3a-1ee4bbcf05a5.jpeg', '.jpeg', 'securityThumb', 'de59c998-90ee-4cd0-bd3a-1ee4bbcf05a5', '2023-02-13 20:49:34');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (25, null, null, 17, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/d0321257-473c-4bf3-8cca-e3448ef25e39.jpeg', '.jpeg', '서양코스튬_thumbnail', 'd0321257-473c-4bf3-8cca-e3448ef25e39', '2023-02-13 20:50:50');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (26, null, null, 18, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/001e591c-b3d3-431d-82d6-ae065cd75300.png', '.png', 'Screenshot 2023-02-13 at 8.49.19 PM', '001e591c-b3d3-431d-82d6-ae065cd75300', '2023-02-13 20:52:15');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (27, null, null, 18, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/9a78f8dd-63cf-4097-bb52-5cde73e107ab.jpg', '.jpg', '409999657', '9a78f8dd-63cf-4097-bb52-5cde73e107ab', '2023-02-13 20:52:15');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (28, null, null, 19, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/baee97f8-79f4-4a25-b21a-f3e1703c36aa.png', '.png', '스크린샷 2023-02-13 오후 8.49.39', 'baee97f8-79f4-4a25-b21a-f3e1703c36aa', '2023-02-13 20:53:16');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (29, null, null, 19, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/ee01c2f0-ca01-4df8-b233-66da1140f4ce.jpg', '.jpg', 'i9791169794930', 'ee01c2f0-ca01-4df8-b233-66da1140f4ce', '2023-02-13 20:53:16');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (30, null, null, 20, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/be340ee0-1e94-49f3-b591-e7907c60bb81.jpeg', '.jpeg', 'koreaThumb', 'be340ee0-1e94-49f3-b591-e7907c60bb81', '2023-02-13 20:53:40');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (31, null, null, 20, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/f32c1302-fb14-4536-ab3b-8048707fa22d.jpeg', '.jpeg', 'koreaDetail', 'f32c1302-fb14-4536-ab3b-8048707fa22d', '2023-02-13 20:53:40');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (32, null, null, 21, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/3b600578-dc4c-403c-92e5-1f1fefa6732d.jpeg', '.jpeg', '작별들_thumbnail', '3b600578-dc4c-403c-92e5-1f1fefa6732d', '2023-02-13 20:53:49');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (33, null, null, 21, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/f1b5a93a-043b-4cb4-93b6-ccb539cc0c71.jpeg', '.jpeg', '작별들_detail', 'f1b5a93a-043b-4cb4-93b6-ccb539cc0c71', '2023-02-13 20:53:50');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (34, null, null, 22, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/a1388e65-33e2-4113-9660-b18b64445651.png', '.png', 'badoogi_thumbnail', 'a1388e65-33e2-4113-9660-b18b64445651', '2023-02-13 20:55:32');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (35, null, null, 22, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/295b4d70-fcd3-4e5b-b7bc-678f62449fac.jpg', '.jpg', 'badoogi_detailimage', '295b4d70-fcd3-4e5b-b7bc-678f62449fac', '2023-02-13 20:55:32');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (36, null, null, 23, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/351a0061-8616-4032-9701-2cf3d82ebdd1.png', '.png', 'Screenshot 2023-02-13 at 8.53.05 PM', '351a0061-8616-4032-9701-2cf3d82ebdd1', '2023-02-13 20:56:34');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (37, null, null, 23, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/7e76a5bf-105f-4076-8f54-7e9a8c39bafa.jpg', '.jpg', '350327925', '7e76a5bf-105f-4076-8f54-7e9a8c39bafa', '2023-02-13 20:56:35');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (38, null, null, 24, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/d5060208-2120-4a8a-9c49-3878771542a3.jpeg', '.jpeg', '결정하는뇌_thumbnail', 'd5060208-2120-4a8a-9c49-3878771542a3', '2023-02-13 20:56:38');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (39, null, null, 25, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/50ed2e62-36b5-4c34-92aa-3243d8ee57a2.png', '.png', '스크린샷 2023-02-13 오후 8.54.15', '50ed2e62-36b5-4c34-92aa-3243d8ee57a2', '2023-02-13 20:56:43');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (40, null, null, 26, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/04d174a0-d5fd-496b-85f0-8d9f1cb26cec.jpeg', '.jpeg', 'food_thumbnail', '04d174a0-d5fd-496b-85f0-8d9f1cb26cec', '2023-02-13 20:58:47');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (41, null, null, 26, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/bd3286cc-782e-4607-8286-04c65b09a69c.jpeg', '.jpeg', 'food_detail', 'bd3286cc-782e-4607-8286-04c65b09a69c', '2023-02-13 20:58:48');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (42, null, null, 27, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/dccb2b71-7d47-4eb1-bf0e-dee2260b2306.jpeg', '.jpeg', 'thumb', 'dccb2b71-7d47-4eb1-bf0e-dee2260b2306', '2023-02-13 20:59:56');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (43, null, null, 28, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/f071d27c-2bea-4093-b66d-164edd148c9f.png', '.png', 'Screenshot 2023-02-13 at 8.57.53 PM', 'f071d27c-2bea-4093-b66d-164edd148c9f', '2023-02-13 21:01:17');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (44, null, null, 28, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/6b0d02f4-3672-45b3-847d-820dabc1e7ee.jpg', '.jpg', '389345322', '6b0d02f4-3672-45b3-847d-820dabc1e7ee', '2023-02-13 21:01:18');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (45, null, null, 28, null, null, null, 'ebook', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/ebook/9a32aa04-da64-49da-9d37-7baad70a4712.pdf', '.pdf', 'Book_Pub_EBook', '9a32aa04-da64-49da-9d37-7baad70a4712', '2023-02-13 21:01:18');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (46, null, null, 29, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/1e106b7e-0c14-46b5-a03f-028b5868d3cd.jpeg', '.jpeg', 'iLikeMoney_thumbnail', '1e106b7e-0c14-46b5-a03f-028b5868d3cd', '2023-02-13 21:01:35');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (47, null, null, 29, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/dbcb7d8c-16be-4590-a1e0-61021c272db1.jpeg', '.jpeg', 'iLikeMoney_detail', 'dbcb7d8c-16be-4590-a1e0-61021c272db1', '2023-02-13 21:01:35');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (48, null, null, 30, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/706ca5cc-e457-4b4f-900e-aad4fd3c9fe9.png', '.png', 'fallout_cook_thumbnail', '706ca5cc-e457-4b4f-900e-aad4fd3c9fe9', '2023-02-13 21:02:19');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (49, null, null, 30, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/b0ea61bf-5d36-4877-bf45-012789478cdd.jpg', '.jpg', 'fallout_cook_detailimage', 'b0ea61bf-5d36-4877-bf45-012789478cdd', '2023-02-13 21:02:20');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (50, null, null, 31, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/bdce85fc-b074-4165-875b-6bef65feeb68.png', '.png', '스크린샷 2023-02-13 오후 8.59.01', 'bdce85fc-b074-4165-875b-6bef65feeb68', '2023-02-13 21:02:40');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (51, null, null, 32, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/71618399-f866-4220-8eca-dfc38247a847.jpeg', '.jpeg', 'spider', '71618399-f866-4220-8eca-dfc38247a847', '2023-02-13 21:02:55');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (52, null, null, 33, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/4c98ea44-0bed-40da-9a55-36708f9a2ce6.jpeg', '.jpeg', '나미야_thumbnail', '4c98ea44-0bed-40da-9a55-36708f9a2ce6', '2023-02-13 21:04:29');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (53, null, null, 34, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/c4f919a3-e63b-46b2-be5c-1ad93c9b17e6.png', '.png', 'Screenshot 2023-02-13 at 9.02.20 PM', 'c4f919a3-e63b-46b2-be5c-1ad93c9b17e6', '2023-02-13 21:05:09');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (54, null, null, 35, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/a9437514-2d8a-4462-900a-af01503d42e9.jpeg', '.jpeg', 'kid', 'a9437514-2d8a-4462-900a-af01503d42e9', '2023-02-13 21:06:01');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (55, null, null, 35, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/9fdb9a42-d673-427f-b7d9-8892db2175a2.jpeg', '.jpeg', 'kid2', '9fdb9a42-d673-427f-b7d9-8892db2175a2', '2023-02-13 21:06:02');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (56, null, null, 36, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/%E1%84%89%E1%85%AD%E1%84%91%E1%85%B5%E1%86%BC%E1%84%86%E1%85%A9%E1%86%AF%E1%84%8B%E1%85%A8%E1%84%8C%E1%85%A6_thumbnail.jpeg', '.jpeg', '스프링_thumbnail', '3fbdd259-a102-4764-a33e-8fcff0014d67', '2023-02-13 21:07:46');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (58, null, null, 37, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/66a34ad3-59f6-46f6-ad20-677cdd27f7a3.png', '.png', '스크린샷 2023-02-13 오후 9.05.05', '66a34ad3-59f6-46f6-ad20-677cdd27f7a3', '2023-02-13 21:07:48');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (59, null, null, 38, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/66ef2b9b-cba8-4cc6-91fe-5633f1b662eb.png', '.png', 'why_excercies_do', '66ef2b9b-cba8-4cc6-91fe-5633f1b662eb', '2023-02-13 21:07:55');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (60, null, null, 39, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/281364af-3348-47de-88c6-1c6b12a270e5.jpeg', '.jpeg', '1', '281364af-3348-47de-88c6-1c6b12a270e5', '2023-02-13 21:08:10');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (61, null, null, 40, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/fdcf2cc5-d6ec-452c-ad9a-ca9ccfe3a507.png', '.png', 'Screenshot 2023-02-13 at 9.05.41 PM', 'fdcf2cc5-d6ec-452c-ad9a-ca9ccfe3a507', '2023-02-13 21:08:11');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (62, null, null, 40, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/36d83141-7819-4fcd-9e57-f87a27aa5e69.jpg', '.jpg', '22881943(1)', '36d83141-7819-4fcd-9e57-f87a27aa5e69', '2023-02-13 21:08:12');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (63, null, null, 41, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/5f1948aa-f98a-4c08-91a4-2db43f94babb.jpeg', '.jpeg', '스프링_thumbnail', '5f1948aa-f98a-4c08-91a4-2db43f94babb', '2023-02-13 21:10:04');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (64, null, null, 41, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/d3bc76a5-1ff6-4e52-ac1a-d867a5aa377f.jpeg', '.jpeg', '스프링_detail', 'd3bc76a5-1ff6-4e52-ac1a-d867a5aa377f', '2023-02-13 21:10:05');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (65, null, null, 42, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/d1507554-f378-4fc4-b27c-cfbe13e3bb0f.png', '.png', '스크린샷 2023-02-13 오후 9.08.25', 'd1507554-f378-4fc4-b27c-cfbe13e3bb0f', '2023-02-13 21:12:36');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (66, null, null, 42, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/dba54351-091e-489d-b864-c1cb725e05d3.jpg', '.jpg', 'i9791167790231', 'dba54351-091e-489d-b864-c1cb725e05d3', '2023-02-13 21:12:36');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (67, null, null, 43, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/b8c5a771-8a45-454f-8eb2-11137ad53aac.png', '.png', 'Screenshot 2023-02-13 at 9.10.02 PM', 'b8c5a771-8a45-454f-8eb2-11137ad53aac', '2023-02-13 21:12:53');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (68, null, null, 43, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/cd93aa7e-f3aa-4826-90a3-3e588045cafc.jpg', '.jpg', '389626070', 'cd93aa7e-f3aa-4826-90a3-3e588045cafc', '2023-02-13 21:12:53');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (70, null, null, 45, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/7dc0008a-0918-47f8-9aa0-a1b6d5a4dcc3.jpeg', '.jpeg', '내게남은사랑을드릴게요_detail', '7dc0008a-0918-47f8-9aa0-a1b6d5a4dcc3', '2023-02-13 21:14:45');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (71, null, null, 46, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/bbb15f2d-cf6f-4ec9-9f4c-22ada6436f84.png', '.png', 'information_gisa_thumbnail', 'bbb15f2d-cf6f-4ec9-9f4c-22ada6436f84', '2023-02-13 21:14:56');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (72, null, null, 46, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/6eaa58ea-bbda-4ea9-9516-bca9dcc61dff.jpg', '.jpg', 'information_gisa_detailimage', '6eaa58ea-bbda-4ea9-9516-bca9dcc61dff', '2023-02-13 21:14:56');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (73, null, null, 47, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/e07e318d-89f6-40e8-abaf-a2c180102ef2.jpeg', '.jpeg', 'TheRobots_thumbnail', 'e07e318d-89f6-40e8-abaf-a2c180102ef2', '2023-02-13 21:17:21');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (74, null, null, 48, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/0b3c1da7-0048-461c-b0a0-741b90fb2cfc.png', '.png', '스크린샷 2023-02-13 오후 9.14.35', '0b3c1da7-0048-461c-b0a0-741b90fb2cfc', '2023-02-13 21:18:26');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (75, null, null, 49, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/762ce76a-e1ff-4286-a260-966fa577a503.png', '.png', 'Screenshot 2023-02-13 at 9.14.50 PM', '762ce76a-e1ff-4286-a260-966fa577a503', '2023-02-13 21:18:30');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (76, null, null, 49, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/91f8b446-af8f-4b7e-87a5-f6cf0d424799.jpg', '.jpg', '405330840', '91f8b446-af8f-4b7e-87a5-f6cf0d424799', '2023-02-13 21:18:30');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (77, null, null, 49, null, null, null, 'ebook', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/ebook/8210a64c-4ea6-400d-878b-bd9262cdce6b.pdf', '.pdf', 'Book_Pub_EBook', '8210a64c-4ea6-400d-878b-bd9262cdce6b', '2023-02-13 21:18:30');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (79, null, null, null, null, null, 1, 'subscribe', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/subscribe/034ff643-fe12-4cec-8636-52648bb9176c.png', '.png', '스크린샷 2023-02-13 오후 9.14.35', '034ff643-fe12-4cec-8636-52648bb9176c', '2023-02-13 21:20:45');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (80, null, null, 51, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/51351592-3d39-4921-acf1-988cd5fe74b8.jpeg', '.jpeg', '파인만_thumbnail', '51351592-3d39-4921-acf1-988cd5fe74b8', '2023-02-13 21:22:13');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (81, null, null, 52, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/2fb44dc2-8f20-4f40-9e5f-87496605966c.png', '.png', 'Screenshot 2023-02-13 at 9.20.01 PM', '2fb44dc2-8f20-4f40-9e5f-87496605966c', '2023-02-13 21:22:44');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (83, null, null, 53, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/f8d32241-8dd6-4914-9d97-5fa262b804c6.png', '.png', 'Screenshot 2023-02-13 at 9.26.06 PM', 'f8d32241-8dd6-4914-9d97-5fa262b804c6', '2023-02-13 21:28:16');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (84, null, null, 54, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/c84105d2-71ff-45cd-aadd-bfd1cedf69ca.png', '.png', 'Screenshot 2023-02-13 at 9.30.47 PM', 'c84105d2-71ff-45cd-aadd-bfd1cedf69ca', '2023-02-13 21:32:57');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (85, null, null, 55, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/24eb3ab6-5897-4367-8bab-17a06d42428e.png', '.png', 'Screenshot 2023-02-13 at 9.35.50 PM', '24eb3ab6-5897-4367-8bab-17a06d42428e', '2023-02-13 21:38:43');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (86, null, null, 55, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/5382f76f-8786-45bb-b587-c24be280220b.jpg', '.jpg', '385168894', '5382f76f-8786-45bb-b587-c24be280220b', '2023-02-13 21:38:44');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (87, null, null, 55, null, null, null, 'ebook', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/ebook/46103aad-fabb-453b-b6ff-d9050e3013ab.pdf', '.pdf', 'Book_Pub_EBook', '696967da-cfc0-4a99-ae89-6341b92334d6', '2023-02-13 21:01:18');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (88, null, null, 56, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/8e451534-2c3f-4d0c-a188-b36542f66f9b.png', '.png', 'Screenshot 2023-02-13 at 9.41.09 PM', '8e451534-2c3f-4d0c-a188-b36542f66f9b', '2023-02-13 21:43:46');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (89, null, null, 56, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/40d7ecef-2ebc-4e81-99a4-9ca15b0be7d4.jpg', '.jpg', '407439500', '40d7ecef-2ebc-4e81-99a4-9ca15b0be7d4', '2023-02-13 21:43:46');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (90, null, null, 57, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/8d421a7e-3a13-4756-8ff2-ea43b031be60.png', '.png', 'health7dae3policy_thumbnail', '8d421a7e-3a13-4756-8ff2-ea43b031be60', '2023-02-13 21:49:25');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (91, null, null, 57, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/a53a5e47-ed79-47f1-b4f7-ff81a2b9f63b.jpg', '.jpg', 'health7dae3policy_detailimage', 'a53a5e47-ed79-47f1-b4f7-ff81a2b9f63b', '2023-02-13 21:49:26');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (92, null, null, 58, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/4094a600-36fd-43dd-b5fc-805361c87ea2.png', '.png', 'Screenshot 2023-02-13 at 9.57.55 PM', '4094a600-36fd-43dd-b5fc-805361c87ea2', '2023-02-13 22:02:37');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (93, null, null, 58, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/2b197202-bdf6-4169-a342-e20ce1fab263.jpg', '.jpg', '410333894', '2b197202-bdf6-4169-a342-e20ce1fab263', '2023-02-13 22:02:37');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (94, null, null, 59, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/b6c202a3-1fa6-4153-a33b-6d04849d4244.png', '.png', 'Screenshot 2023-02-13 at 10.07.02 PM', 'b6c202a3-1fa6-4153-a33b-6d04849d4244', '2023-02-13 22:09:41');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (95, null, null, 60, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/f4b3f4fa-b01a-41c3-b696-c4a335489515.png', '.png', 'Screenshot 2023-02-13 at 10.10.39 PM', 'f4b3f4fa-b01a-41c3-b696-c4a335489515', '2023-02-13 22:12:12');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (96, null, null, 61, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/9565200f-cf47-4ef4-8738-c744945fe003.png', '.png', 'sciencemagagineeppi_thumbnail', '9565200f-cf47-4ef4-8738-c744945fe003', '2023-02-13 22:14:07');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (97, null, null, 61, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/2dff0624-34b5-4aff-b9c6-2c38186d6232.jpg', '.jpg', 'sciencemagagineeppi_detailimage', '2dff0624-34b5-4aff-b9c6-2c38186d6232', '2023-02-13 22:14:08');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (98, null, null, 62, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/eec5b2b4-f4ba-48dc-88c5-6546c05437e0.jpeg', '.jpeg', '다크메이지_thumbnail', 'eec5b2b4-f4ba-48dc-88c5-6546c05437e0', '2023-02-13 22:14:17');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (100, null, null, 64, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/274781a7-6468-4a8a-8a20-0e7c61fa3b9c.jpeg', '.jpeg', '주식투자_thumbnail', '274781a7-6468-4a8a-8a20-0e7c61fa3b9c', '2023-02-13 22:18:03');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (101, null, null, 64, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/38be1781-a0bf-42e9-94fc-4722a03f880c.jpeg', '.jpeg', '쓰는직업_detail', '38be1781-a0bf-42e9-94fc-4722a03f880c', '2023-02-13 22:18:03');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (102, null, null, 65, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/349b88ec-2c13-441f-b77c-a3211dd5ff04.png', '.png', 'Screenshot 2023-02-13 at 10.17.57 PM', '349b88ec-2c13-441f-b77c-a3211dd5ff04', '2023-02-13 22:20:03');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (103, null, null, 66, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/8d4957e0-d1fc-4f8a-895b-56a832859945.png', '.png', 'journeyenglish_thumbnail', '8d4957e0-d1fc-4f8a-895b-56a832859945', '2023-02-13 22:20:33');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (104, null, null, 66, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/e558be3e-943a-4ec1-aa65-11df174c1076.jpg', '.jpg', 'journeyenglish_detailimage', 'e558be3e-943a-4ec1-aa65-11df174c1076', '2023-02-13 22:20:34');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (105, null, null, 63, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/5e3d6128-86a9-42a7-9178-538cf5e5878f.png', '.png', 'Screenshot 2023-02-13 at 10.22.28 PM', '5e3d6128-86a9-42a7-9178-538cf5e5878f', '2023-02-13 22:22:38');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (106, null, null, 67, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/7f91aee3-9565-49ee-a534-f99d8628038a.jpeg', '.jpeg', '스파이_thumbnail', '7f91aee3-9565-49ee-a534-f99d8628038a', '2023-02-13 22:23:29');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (108, null, 1, null, null, null, null, 'coupon', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/coupon_template/9de57e7a-798f-4a9c-a53b-d5d0fca6293a.png', '.png', '생일쿠폰', '9de57e7a-798f-4a9c-a53b-d5d0fca6293a', '2023-02-13 22:24:59');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (109, null, null, 68, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/2b3421aa-13a6-4cbe-99a1-299597a5ef99.png', '.png', 'shamenbible_thumbnail', '2b3421aa-13a6-4cbe-99a1-299597a5ef99', '2023-02-13 22:26:08');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (113, null, 2, null, null, null, null, 'coupon', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/coupon_template/73c30fae-2968-41d9-94cd-90b86453beb7.png', '.png', '회원가입 축하 쿠폰', '73c30fae-2968-41d9-94cd-90b86453beb7', '2023-02-09 22:13:55');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (114, null, null, 45, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/92b838c9-ab89-47cd-b603-a50cbafa0ce1.png', '.png', 'Screenshot 2023-02-13 at 11.47.14 PM', '92b838c9-ab89-47cd-b603-a50cbafa0ce1', '2023-02-13 23:47:44');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (124, null, 3, null, null, null, null, 'coupon', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/coupon_template/0d3cc704-1f73-49e8-a0d9-a988e18e8c6d.png', '.png', '이달의 쿠폰1', '0d3cc704-1f73-49e8-a0d9-a988e18e8c6d', '2023-02-14 00:44:26');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (125, null, 5, null, null, null, null, 'coupon', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/coupon_template/17d4d7d0-4f4f-40e5-80b7-344ab474ec1e.png', '.png', '이달의 쿠폰3', '17d4d7d0-4f4f-40e5-80b7-344ab474ec1e', '2023-02-14 00:44:45');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (126, null, 4, null, null, null, null, 'coupon', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/coupon_template/3c559e2f-c429-4ddb-af77-52df1df49c7b.png', '.png', '이달의 쿠폰2', '3c559e2f-c429-4ddb-af77-52df1df49c7b', '2023-02-14 00:46:49');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (127, null, null, 69, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/4152cb20-ee89-4e75-9c51-a491f136d433.png', '.png', 'Screenshot 2023-02-14 at 12.45.34 AM', '4152cb20-ee89-4e75-9c51-a491f136d433', '2023-02-14 00:48:40');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (128, null, null, null, 1, null, null, 'review', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/review/e0b407ad-b845-41f7-ba6c-cad907570d40.jpeg', '.jpeg', '26ce0acaba8140b00746a4356da1a45880dfabd74dd6392f1a3e0441fd0173d538068b05cd8aaf98ff7a9b9e286abc6aa088d5af23f3d46ca46f9676b387d07a4c754b2faf58e268e863d6bf04074ba8', 'e0b407ad-b845-41f7-ba6c-cad907570d40', '2023-02-14 00:55:03');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (135, null, null, 70, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/ee266c7b-d1b2-4990-9b62-c5898f5f0d93.png', '.png', 'Screenshot 2023-02-14 at 2.42.55 AM', 'ee266c7b-d1b2-4990-9b62-c5898f5f0d93', '2023-02-14 02:47:04');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (136, null, null, 70, null, null, null, 'detail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/detail/2bf9c99f-0082-458d-9e78-0466aaef5c57.jpg', '.jpg', '403779435', '2bf9c99f-0082-458d-9e78-0466aaef5c57', '2023-02-14 02:47:04');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (137, 1, null, null, null, null, null, 'inquiry', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/inquiry/550b7648-ca99-476f-ba9e-d04bbcbd63d2.jpeg', '.jpeg', '26ce0acaba8140b00746a4356da1a45880dfabd74dd6392f1a3e0441fd0173d538068b05cd8aaf98ff7a9b9e286abc6aa088d5af23f3d46ca46f9676b387d07a4c754b2faf58e268e863d6bf04074ba8', '550b7648-ca99-476f-ba9e-d04bbcbd63d2', '2023-02-14 09:44:27');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (138, null, null, 71, null, null, null, 'thumbnail', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/product/thumbnail/7a7cc6c4-8fa9-4570-8e2f-c82deac19d6b.png', '.png', 'Screenshot 2023-02-14 at 1.08.39 PM', '7a7cc6c4-8fa9-4570-8e2f-c82deac19d6b', '2023-02-14 13:11:58');

INSERT INTO file (file_number, inquiry_number, coupon_template_number, product_number, review_number, customer_service_number, subscribe_number, file_category, file_path, file_extension, file_name_origin, file_name_saved, created_at) VALUES (139, null, null, 71, null, null, null, 'ebook', 'https://api-storage.cloud.toast.com/v1/AUTH_fcb81f74e379456b8ca0e091d351a7af/bookpub/ebook/83444018-868a-4714-b722-d45456f6d47c.pdf', '.pdf', 'Book_Pub_EBook', '83444018-868a-4714-b722-d45456f6d47c', '2023-02-14 13:11:58');


        
        
        
-- --
-- ALTER TABLE coupon_policy AUTO_INCREMENT = 1;
-- delete from coupon_policy where coupon_policy_number=1;
-- select * from coupon_policy;

-- select * from author;
-- select * from tier;
-- select * from authority;
-- select * from category;
-- select * from product_and_category;
-- desc category;
-- select * from tag;
-- select * from member;











