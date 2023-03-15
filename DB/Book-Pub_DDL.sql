DROP TABLE IF EXISTS `coupon`;
DROP TABLE IF EXISTS `payment_type_state_code`;
DROP TABLE IF EXISTS `order_state_code`;
DROP TABLE IF EXISTS `order_product_state_code`;
DROP TABLE IF EXISTS `payment_state_code`;
DROP TABLE IF EXISTS `product_sale_state_code`;
DROP TABLE IF EXISTS `inquiry_state_code`;

DROP TABLE IF EXISTS `order_subscribe_state_code`;
DROP TABLE IF EXISTS `customer_service_state_code`;
DROP TABLE IF EXISTS `coupon_state_code`;
DROP TABLE IF EXISTS `product_type_state_code`;
DROP TABLE IF EXISTS `order_and_subscribe`;
DROP TABLE IF EXISTS `subscribe_product_list`;
DROP TABLE IF EXISTS `subscribe`;
DROP TABLE IF EXISTS `customer_service`;
DROP TABLE IF EXISTS `price_policy`;
DROP TABLE IF EXISTS `file`;
DROP TABLE IF EXISTS `purchase`;
DROP TABLE IF EXISTS `card`;
DROP TABLE IF EXISTS `product_and_author`;
DROP TABLE IF EXISTS `author`;
DROP TABLE IF EXISTS `personal_inquiry_answer`;
DROP TABLE IF EXISTS `personal_inquiry`;
DROP TABLE IF EXISTS `inquiry`;
DROP TABLE IF EXISTS `product_review_policy`;
DROP TABLE IF EXISTS `product_and_tag`;
DROP TABLE IF EXISTS `tag`;
DROP TABLE IF EXISTS `point_history`;
DROP TABLE IF EXISTS `review`;
DROP TABLE IF EXISTS `product_and_category`;
DROP TABLE IF EXISTS `category`;
DROP TABLE IF EXISTS `wishlist`;
DROP TABLE IF EXISTS `tier_and_coupon`;
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `product_policy`;
DROP TABLE IF EXISTS `coupon_month`;
DROP TABLE IF EXISTS `coupon_type`;
DROP TABLE IF EXISTS `coupon_policy`;
DROP TABLE IF EXISTS `coupon_template`;
DROP TABLE IF EXISTS `tier`;
DROP TABLE IF EXISTS `address`;
DROP TABLE IF EXISTS `payment`;
DROP TABLE IF EXISTS `order_and_product`;
DROP TABLE IF EXISTS `bookpub_order`;
DROP TABLE IF EXISTS `member_and_authority`;
DROP TABLE IF EXISTS `authority`;
DROP TABLE IF EXISTS `member`;



CREATE TABLE `member` (
	`member_number`	bigint	NOT NULL,
	`tier_number`	int	NOT NULL,
	`member_id`	varchar(40)	NOT NULL UNIQUE,
	`member_nickname`	varchar(8)	NOT NULL UNIQUE,
	`member_name`	varchar(200)	NOT NULL,
	`member_gender`	varchar(2)	NOT NULL,
	`member_birth_year`	int	NOT NULL,
	`member_birth_month`	int	NOT NULL,
	`member_pwd`	varchar(255)	NOT NULL,
	`member_phone`	varchar(20)	NOT NULL,
	`member_email`	varchar(200)	NOT NULL,
	`member_deleted`	boolean	NOT NULL	DEFAULT 0,
	`member_blocked`	boolean	NOT NULL	DEFAULT 0,
	`member_blocked_at`	datetime	NULL,
	`member_point`	bigint	NOT NULL	DEFAULT 0,
	`member_social_joined`	boolean	NOT NULL	DEFAULT 0,
    `created_at` datetime NOT NULL
);

CREATE TABLE `authority` (
	`authority_number`	int	NOT NULL,
    `authority_name` varchar(20) NOT NULL UNIQUE
);


CREATE TABLE `member_and_authority` (
	`member_number`	bigint	NOT NULL,
	`authority_number`	int	NOT NULL
);


CREATE TABLE `bookpub_order` (
	`order_number`	bigint	NOT NULL,
	`member_number`	bigint	NULL,
	`price_policy_delivery_number`	int	NOT NULL,
	`price_policy_packaging_number`	int	NOT NULL,
	`order_state_code_number`	int	NOT NULL,
    `order_id` varchar(64) NOT NULL UNIQUE,
	`order_recipient`	varchar(200)	NOT NULL,
	`order_recipient_phone`	varchar(20)	NOT NULL,
	`order_buyer`	varchar(200)	NOT NULL,
	`order_buyer_phone`	varchar(20)	NOT NULL,
	`order_received_at`	date	NOT NULL,
	`order_invoice_number`	varchar(40)	NULL,
	`order_price`	bigint	NOT NULL	DEFAULT 0,
	`order_point_amount`	bigint	NOT NULL	DEFAULT 0,
    `order_point_save`	bigint NOT NULL,
	`order_packaged`	boolean	NOT NULL	DEFAULT 0,
	`order_request`	varchar(100)	NULL,
	`order_coupon_discount`	bigint	NOT NULL	DEFAULT 0,
    `order_address_detail` varchar(100) not null,
	`order_road_address` varchar(100) not null,
	`created_at` datetime NOT NULL,
    `order_name` varchar(200) NULL
);


CREATE TABLE `order_and_product` (
	`order_product_number`	bigint	NOT NULL,
	`product_number`	bigint	NOT NULL,
	`order_number`	bigint	NOT NULL,
	`order_product_code_number`	int	NOT NULL,
	`order_product_amount`	int	NOT NULL	DEFAULT 1,
	`order_product_coupon_amount`	bigint	DEFAULT 0,
	`order_product_price`	bigint	NOT NULL,
	`order_product_reason_name`	varchar(10)	NULL,
	`order_product_point_save` bigint NULL,
	`order_product_exchange_reason` varchar(200) NULL
);



CREATE TABLE `payment` (
	`payment_number`	bigint	NOT NULL,
	`order_number`	bigint	NOT NULL,
	`payment_state_code_number`	int	NOT NULL,
	`payment_type_state_code_number`	int	NOT NULL,
    `payment_key` varchar(100) NOT NULL,
    `created_at` datetime NOT NULL,
    `approved_at` datetime NULL,
    `payment_cancel_reason` varchar(200) NULL,
    `receipt` varchar(150) NOT NULL
);
 

CREATE TABLE `wishlist` (
	`member_number`	bigint	NOT NULL,
	`product_number`	bigint	NOT NULL,
	`wishlist_applied`	boolean	NOT NULL	DEFAULT 0
);

CREATE TABLE `address` (
	`address_number`	bigint	NOT NULL,
	`member_number`		bigint NOT NULL,
    `address_member_based` boolean NOT NULL DEFAULT 0,
	`road_address`	varchar(100)	NOT NULL,
    `address_detail` varchar(100) NOT NULL
);  


CREATE TABLE `tier` (
	`tier_number`	int	NOT NULL,
	`tier_name`	varchar(10)	NOT NULL UNIQUE,
    `tier_value` int NOT NULL,
    `tier_price` bigint NOT NULL,
    `tier_point` bigint NOT NULL
); 


CREATE TABLE `coupon_template` (
	`coupon_template_number`	bigint	NOT NULL,
	`coupon_policy_number`	int	NOT NULL,
	`coupon_type_number`	bigint	NOT NULL,
	`product_number`	bigint	NULL,
	`category_number`	int	NULL,
	`coupon_state_code_number`	int	NOT NULL,
	`coupon_template_name`	varchar(50)	NOT NULL,
	`coupon_template_finished_at`	datetime	NULL,
	`coupon_template_bundled`	boolean	NOT NULL	DEFAULT 0
);



CREATE TABLE `coupon_policy` (
	`coupon_policy_number`	int	NOT NULL,
	`coupon_policy_fixed`	boolean	NOT NULL	DEFAULT 1,
	`coupon_policy_price`	bigint	NOT NULL,
	`coupon_policy_minimum`	bigint	NOT NULL,
	`coupon_policy_max_discount`	bigint
);


CREATE TABLE `coupon_type` (
	`coupon_type_number`	bigint	NOT NULL,
	`coupon_type_name`	varchar(10)	NOT NULL UNIQUE
);



CREATE TABLE `coupon_month` (
	`coupon_month_number`	bigint	NOT NULL,
	`coupon_template_number`	bigint	NOT NULL,
	`coupon_month_opened_at`	datetime	NOT NULL,
	`coupon_month_quantity`	int	NOT NULL
);



CREATE TABLE `product_policy` (
	`product_policy_number`	int	NOT NULL,
	`product_policy_method`	varchar(10)	NOT NULL,
	`product_policy_saved`	boolean	NOT NULL	DEFAULT 1,
	`product_policy_save_rate`	int	NULL
);


CREATE TABLE `product` (
	`product_number`	bigint	NOT NULL,
	`product_policy_number`	int	NOT NULL,
	`product_type_code_number`	int	NOT NULL,
	`product_sale_code_number`	int	NOT NULL,
    `product_relation_number` bigint,
	`product_isbn`	varchar(13)	NOT NULL,
	`product_title`	varchar(100)	NOT NULL,
	`product_publisher`	varchar(50)	NOT NULL,
	`product_page_count`	int	NULL,
	`product_description`	varchar(5000)	NULL,
	`product_sales_price`	bigint	NOT NULL,
	`product_price`	bigint	NOT NULL,
	`product_sales_rate`	int	NOT NULL	DEFAULT 0,
	`product_view_count`	bigint	NOT NULL	DEFAULT 0,
	`product_priority`	int	NOT NULL	DEFAULT 0,
	`product_deleted`	boolean	NOT NULL	DEFAULT 0,
	`product_stock`	int	NOT NULL,
	`product_published_at`	datetime	NOT NULL,
    `created_at` datetime NOT NULL,
	`product_subscribed`	boolean	NOT NULL	DEFAULT 0
);


CREATE TABLE `category` (
	`category_number`	int	NOT NULL,
	`category_parent_number`	int	NULL,
	`category_name`	varchar(10)	NOT NULL,
	`category_priority`	int	NOT NULL	DEFAULT 0,
	`category_displayed`	boolean	NOT NULL	DEFAULT 1
);


CREATE TABLE `product_and_category` (
	`category_number`	int	NOT NULL,
	`product_number`	bigint	NOT NULL
);


CREATE TABLE `review` (
	`review_number`	bigint	NOT NULL,
	`member_number`	bigint	NOT NULL,
	`product_number`	bigint	NOT NULL,
	`product_review_policy_number`	int	NOT NULL,
	`review_star`	int	NOT NULL	DEFAULT 5,
	`review_content`	varchar(500)	NOT NULL,
    `created_at` datetime NOT NULL,
    `review_deleted` boolean NOT NULL DEFAULT 0
);


CREATE TABLE `point_history` (
	`point_history_number`	bigint	NOT NULL,
	`member_number`	bigint	NOT NULL,
	`point_history_amount`	bigint	NOT NULL,
	`point_history_reason`	varchar(10)	NOT NULL,
    `point_history_increased` boolean NOT NULL,
    `created_at` datetime NOT NULL
);


CREATE TABLE `tag` (
	`tag_number` int NOT NULL,
	`tag_name`	varchar(20)	NOT NULL UNIQUE,
	`tag_color_code`	varchar(7)	NOT NULL
);



CREATE TABLE `product_and_tag` (
	`tag_number`	int	NOT NULL,
	`product_number`	bigint	NOT NULL
);



CREATE TABLE `product_review_policy` (
	`product_review_policy_number`	int	NOT NULL,
	`product_review_policy_send_point`	bigint	NOT NULL,
    `product_review_policy_used` boolean NOT NULL DEFAULT 0
);


CREATE TABLE `inquiry` (
	`inquiry_number`	bigint	NOT NULL,
	`inquiry_parent_number`	bigint	NULL,
	`member_number`	bigint	NOT NULL,
	`product_number`	bigint	NOT NULL,
	`inquiry_state_code_number`	int	NOT NULL,
    `inquiry_title` varchar(50) NOT NULL,
	`inquiry_content`	varchar(1000)	NOT NULL,
	`inquiry_displayed`	boolean	NOT NULL	DEFAULT 1,
	`inquiry_answered`	boolean	NOT NULL	DEFAULT 0,
    `created_at` datetime NOT NULL
);


CREATE TABLE `personal_inquiry` (
	`personal_inquiry_number`	bigint	NOT NULL,
	`member_number`	bigint	NOT NULL,
	`personal_inquiry_title`	varchar(100)	NOT NULL,
	`personal_inquiry_content`	varchar(2000)	NOT NULL,
	`personal_inquiry_image_path`	varchar(200)	NULL,
    `created_at` datetime NOT NULL,
	`personal_inquiry_answered`	boolean	NOT NULL	DEFAULT 0,
	`personal_inquiry_deleted`	boolean	NOT NULL	DEFAULT 0
);



CREATE TABLE `personal_inquiry_answer` (
	`personal_inquiry_answer_number`	bigint	NOT NULL,
	`personal_inquiry_number`	bigint	NOT NULL,
	`personal_inquiry_content`	varchar(200)	NOT NULL,
    `created_at` datetime NOT NULL
);



CREATE TABLE `author` (
	`author_number`	int	NOT NULL,
	`author_name`	varchar(200)	NOT NULL,
    `author_main_book` varchar(100) NULL
);



CREATE TABLE `product_and_author` (
	`author_number`	int	NOT NULL,
	`product_number`	bigint	NOT NULL
);



CREATE TABLE `card` (
	`payment_number`	bigint	NOT NULL,
	`card_company`	varchar(20)	NOT NULL,
	`card_number`	varchar(16)	NOT NULL,
	`card_installment_month`	int	NULL
);


CREATE TABLE `purchase` (
	`purchase_number`	bigint	NOT NULL,
	`product_number`	bigint	NOT NULL,
	`purchase_price`	bigint	NOT NULL,
	`purchase_amount`	bigint	NOT NULL,
    `created_at` datetime NOT NULL
);



CREATE TABLE `file` (
	`file_number`	bigint	NOT NULL,
	`inquiry_number`	bigint	NULL,
	`coupon_template_number`	bigint	NULL,
	`product_number`	bigint	NULL,
	`review_number`	bigint	NULL,
	`customer_service_number`	int	NULL,
    `subscribe_number` bigint NULL,
	`file_category`	varchar(20)	NOT NULL,
	`file_path`	varchar(255)	NOT NULL,
	`file_extension`	varchar(10)	NOT NULL,
	`file_name_origin`	varchar(255)	NOT NULL,
	`file_name_saved`	varchar(255)	NOT NULL,
    `created_at` datetime NOT NULL
);


CREATE TABLE `price_policy` (
	`price_policy_number`	int	NOT NULL,
	`price_policy_name`	varchar(10)	NOT NULL,
	`price_policy_fee`	bigint	NOT NULL,
    `created_at` datetime not null
);


CREATE TABLE `customer_service` (
	`customer_service_number`	int	NOT NULL,
	`customer_service_code_number`	int	NOT NULL,
	`member_number`	bigint	NOT NULL,
	`customer_service_category`	varchar(30)	NOT NULL,
	`customer_service_title`	varchar(100)	NOT NULL,
	`customer_service_content`	varchar(5000)	NOT NULL,
    `created_at` datetime NOT NULL
);



CREATE TABLE `subscribe` (
	`subscribe_number`	bigint	NOT NULL,
	`subscribe_name`	varchar(50)	NOT NULL,
	`subscribe_sales_price`	bigint	NOT NULL,
	`subscribe_price`	bigint	NOT NULL,
	`subscribe_sales_rate`	int	NOT NULL	DEFAULT 0,
	`subscribe_view_count`	bigint	NOT NULL	DEFAULT 0,
	`subscribe_deleted`	boolean	NOT NULL	DEFAULT 0,
	`subscribe_renewed`	boolean	NOT NULL	DEFAULT 0
);


CREATE TABLE `subscribe_product_list` (
	`subscribe_product_list_number`	bigint	NOT NULL,
	`subscribe_number`	bigint	NOT NULL,
	`product_number`	bigint	NOT NULL
);


CREATE TABLE `order_and_subscribe` (
	`order_subscribe_number`	bigint	NOT NULL,
	`subscribe_number`	bigint	NOT NULL,
	`order_number`	bigint	NOT NULL,
	`order_subscribe_state_code_number`	int	NOT NULL,
	`order_subscribe_coupon_amount`	bigint	NOT NULL DEFAULT 0,
	`order_subscribe_product_price`	bigint	NOT NULL,
    `created_at` datetime NOT NULL,
	`order_subscribe_finished_at`	date	NULL
);


CREATE TABLE `product_type_state_code` (
	`product_type_state_code_number`	int	NOT NULL,
	`product_type_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`product_type_state_code_used`	boolean	NOT NULL DEFAULT 1,
	`product_type_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `coupon_state_code` (
	`coupon_state_code_number`	int	NOT NULL,
	`coupon_state_code_target`	varchar(5)	NOT NULL UNIQUE,
	`coupon_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`coupon_state_code_info`	varchar(100)
);



CREATE TABLE `customer_service_state_code` (
	`customer_service_state_code_number`	int	NOT NULL,
	`customer_service_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`customer_service_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`customer_service_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `order_subscribe_state_code` (
	`order_subscribe_state_code_number`	int	NOT NULL,
	`order_subscribe_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`order_subscribe_state_used`	boolean	NOT NULL	DEFAULT 1,
	`order_subscribe_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `inquiry_state_code` (
	`inquiry_state_code_number`	int	NOT NULL,
	`inquiry_state_code_name`	varchar(20)	NULL UNIQUE,
	`inquiry_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`inquiry_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `product_sale_state_code` (
	`product_sale_state_code_number`	int	NOT NULL,
	`product_sale_state_code_category`	varchar(20)	NOT NULL UNIQUE,
	`product_sale_state_code_used`	boolean	NOT NULL DEFAULT 1,
	`product_sale_state_code_info`	varchar(100)	NULL
);


CREATE TABLE `payment_state_code` (
	`payment_state_code_number`	int	NOT NULL,
	`payment_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`payment_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`payment_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `order_product_state_code` (
	`order_product_state_code_number`	int	NOT NULL,
	`order_product_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`order_product_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`order_product_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `order_state_code` (
	`order_state_code_number`	int	NOT NULL,
	`order_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`order_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`order_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `payment_type_state_code` (
	`payment_type_state_code_number`	int	NOT NULL,
	`payment_type_state_code_name`	varchar(20)	NOT NULL UNIQUE,
	`payment_type_state_code_used`	boolean	NOT NULL	DEFAULT 1,
	`payment_type_state_code_info`	varchar(100)	NULL
);



CREATE TABLE `coupon` (
	`coupon_number`	bigint	NOT NULL,
	`coupon_template_number`	bigint	NOT NULL,
	`member_number`	bigint	NOT NULL,
	`order_number`	bigint	NULL,
	`order_product_number`	bigint	NULL,
	`coupon_used`	boolean	NOT NULL	DEFAULT 0,
	`coupon_used_at`	datetime	NULL
);

CREATE TABLE `tier_and_coupon` (
	`coupon_template_number`	bigint	NOT NULL,
	`tier_number`	int	NOT NULL
);

ALTER TABLE `member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`member_number`
);
ALTER TABLE `member` MODIFY `member_number` bigint NOT NULL auto_increment;

ALTER TABLE `authority` ADD CONSTRAINT `PK_AUTHORITY` PRIMARY KEY (
	`authority_number`
);
ALTER TABLE `authority` MODIFY `authority_number` int NOT NULL auto_increment;

ALTER TABLE `member_and_authority` ADD CONSTRAINT `PK_MEMBER_AND_AUTHORITY` PRIMARY KEY (
	`member_number`,
	`authority_number`
);

ALTER TABLE `bookpub_order` ADD CONSTRAINT `PK_ORDER` PRIMARY KEY (
	`order_number`
);
ALTER TABLE `bookpub_order` MODIFY `order_number` bigint NOT NULL auto_increment;

ALTER TABLE `order_and_product` ADD CONSTRAINT `PK_ORDER_AND_PRODUCT` PRIMARY KEY (
	`order_product_number`
);
ALTER TABLE `order_and_product` MODIFY `order_product_number` bigint NOT NULL auto_increment;

ALTER TABLE `payment` ADD CONSTRAINT `PK_PAYMENT` PRIMARY KEY (
	`payment_number`
);
ALTER TABLE `payment` MODIFY `payment_number` bigint NOT NULL auto_increment;

ALTER TABLE `wishlist` ADD CONSTRAINT `PK_WISHLIST` PRIMARY KEY (
	`member_number`,
	`product_number`
);

ALTER TABLE `address` ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
	`address_number`
);
ALTER TABLE `address` MODIFY `address_number` bigint NOT NULL auto_increment;

ALTER TABLE `tier` ADD CONSTRAINT `PK_TIER` PRIMARY KEY (
	`tier_number`
);
ALTER TABLE `tier` MODIFY `tier_number` int NOT NULL auto_increment;


ALTER TABLE `coupon_template` ADD CONSTRAINT `PK_COUPON_TEMPLATE` PRIMARY KEY (
	`coupon_template_number`
);
ALTER TABLE `coupon_template` MODIFY `coupon_template_number` bigint NOT NULL auto_increment;

ALTER TABLE `coupon_policy` ADD CONSTRAINT `PK_COUPON_POLICY` PRIMARY KEY (
	`coupon_policy_number`
);
ALTER TABLE `coupon_policy` MODIFY `coupon_policy_number` int NOT NULL auto_increment;

ALTER TABLE `coupon_type` ADD CONSTRAINT `PK_COUPON_TYPE` PRIMARY KEY (
	`coupon_type_number`
);
ALTER TABLE `coupon_type` MODIFY `coupon_type_number` bigint NOT NULL auto_increment;

ALTER TABLE `coupon_month` ADD CONSTRAINT `PK_COUPON_MONTH` PRIMARY KEY (
	`coupon_month_number`
);
ALTER TABLE `coupon_month` MODIFY `coupon_month_number` bigint NOT NULL auto_increment;

ALTER TABLE `product_policy` ADD CONSTRAINT `PK_PRODUCT_POLICY` PRIMARY KEY (
	`product_policy_number`
);
ALTER TABLE `product_policy` MODIFY `product_policy_number` int NOT NULL auto_increment;

ALTER TABLE `product` ADD CONSTRAINT `PK_PRODUCT` PRIMARY KEY (
	`product_number`
);
ALTER TABLE `product` MODIFY `product_number` bigint NOT NULL auto_increment;

ALTER TABLE `category` ADD CONSTRAINT `PK_CATEGORY` PRIMARY KEY (
	`category_number`
);
ALTER TABLE `category` MODIFY `category_number` int NOT NULL auto_increment;

ALTER TABLE `product_and_category` ADD CONSTRAINT `PK_PRODUCT_AND_CATEGORY` PRIMARY KEY (
	`category_number`,
	`product_number`
);

ALTER TABLE `review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`review_number`
);
ALTER TABLE `review` MODIFY `review_number` bigint NOT NULL auto_increment;

ALTER TABLE `point_history` ADD CONSTRAINT `PK_POINT_HISTORY` PRIMARY KEY (
	`point_history_number`
);
ALTER TABLE `point_history` MODIFY `point_history_number` bigint NOT NULL auto_increment;

ALTER TABLE `tag` ADD CONSTRAINT `PK_TAG` PRIMARY KEY (
	`tag_number`
);
ALTER TABLE `tag` MODIFY `tag_number` int NOT NULL auto_increment;

ALTER TABLE `product_and_tag` ADD CONSTRAINT `PK_PRODUCT_AND_TAG` PRIMARY KEY (
	`tag_number`,
	`product_number`
);

ALTER TABLE `product_review_policy` ADD CONSTRAINT `PK_PRODUCT_REVIEW_POLICY` PRIMARY KEY (
	`product_review_policy_number`
);
ALTER TABLE `product_review_policy` MODIFY `product_review_policy_number` int NOT NULL auto_increment;

ALTER TABLE `inquiry` ADD CONSTRAINT `PK_INQUIRY` PRIMARY KEY (
	`inquiry_number`
);
ALTER TABLE `inquiry` MODIFY `inquiry_number` bigint NOT NULL auto_increment;

ALTER TABLE `personal_inquiry` ADD CONSTRAINT `PK_PERSONAL_INQUIRY` PRIMARY KEY (
	`personal_inquiry_number`
);
ALTER TABLE `personal_inquiry` MODIFY `personal_inquiry_number` bigint NOT NULL auto_increment;

ALTER TABLE `personal_inquiry_answer` ADD CONSTRAINT `PK_PERSONAL_INQUIRY_ANSWER` PRIMARY KEY (
	`personal_inquiry_answer_number`
);
ALTER TABLE `personal_inquiry_answer` MODIFY `personal_inquiry_answer_number` bigint NOT NULL auto_increment;

ALTER TABLE `author` ADD CONSTRAINT `PK_AUTHOR` PRIMARY KEY (
	`author_number`
);
ALTER TABLE `author` MODIFY `author_number` int NOT NULL auto_increment;

ALTER TABLE `product_and_author` ADD CONSTRAINT `PK_PRODUCT_AND_AUTHOR` PRIMARY KEY (
	`author_number`,
	`product_number`
);

ALTER TABLE `card` ADD CONSTRAINT `PK_CARD` PRIMARY KEY (
	`payment_number`
);

ALTER TABLE `purchase` ADD CONSTRAINT `PK_PURCHASE` PRIMARY KEY (
	`purchase_number`
);
ALTER TABLE `purchase` MODIFY `purchase_number` bigint NOT NULL auto_increment;

ALTER TABLE `file` ADD CONSTRAINT `PK_FILE` PRIMARY KEY (
	`file_number`
);
ALTER TABLE `file` MODIFY `file_number` bigint NOT NULL auto_increment;

ALTER TABLE `price_policy` ADD CONSTRAINT `PK_PRICE_POLICY` PRIMARY KEY (
	`price_policy_number`
);
ALTER TABLE `price_policy` MODIFY `price_policy_number` int NOT NULL auto_increment;

ALTER TABLE `customer_service` ADD CONSTRAINT `PK_CUSTOMER_SERVICE` PRIMARY KEY (
	`customer_service_number`
);
ALTER TABLE `customer_service` MODIFY `customer_service_number` int NOT NULL auto_increment;

ALTER TABLE `subscribe` ADD CONSTRAINT `PK_SUBSCRIBE` PRIMARY KEY (
	`subscribe_number`
);
ALTER TABLE `subscribe` MODIFY `subscribe_number` bigint NOT NULL auto_increment;

ALTER TABLE `subscribe_product_list` ADD CONSTRAINT `PK_SUBSCRIBE_PRODUCT_LIST` PRIMARY KEY (
	`subscribe_product_list_number`
);
ALTER TABLE `subscribe_product_list` MODIFY `subscribe_product_list_number` bigint NOT NULL auto_increment;

ALTER TABLE `order_and_subscribe` ADD CONSTRAINT `PK_ORDER_AND_SUBSCRIBE` PRIMARY KEY (
	`order_subscribe_number`
);
ALTER TABLE `order_and_subscribe` MODIFY `order_subscribe_number` bigint NOT NULL auto_increment;

ALTER TABLE `product_type_state_code` ADD CONSTRAINT `PK_PRODUCT_TYPE_STATE_CODE` PRIMARY KEY (
	`product_type_state_code_number`
);
ALTER TABLE `product_type_state_code` MODIFY `product_type_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `coupon_state_code` ADD CONSTRAINT `PK_COUPON_STATE_CODE` PRIMARY KEY (
	`coupon_state_code_number`
);
ALTER TABLE `coupon_state_code` MODIFY `coupon_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `customer_service_state_code` ADD CONSTRAINT `PK_CUSTOMER_SERVICE_STATE_CODE` PRIMARY KEY (
	`customer_service_state_code_number`
);
ALTER TABLE `customer_service_state_code` MODIFY `customer_service_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `order_subscribe_state_code` ADD CONSTRAINT `PK_ORDER_SUBSCRIBE_STATE_CODE` PRIMARY KEY (
	`order_subscribe_state_code_number`
);
ALTER TABLE `order_subscribe_state_code` MODIFY `order_subscribe_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `inquiry_state_code` ADD CONSTRAINT `PK_INQUIRY_STATE_CODE` PRIMARY KEY (
	`inquiry_state_code_number`
);
ALTER TABLE `inquiry_state_code` MODIFY `inquiry_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `product_sale_state_code` ADD CONSTRAINT `PK_PRODUCT_SALE_STATE_CODE` PRIMARY KEY (
	`product_sale_state_code_number`
);
ALTER TABLE `product_sale_state_code` MODIFY `product_sale_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `payment_state_code` ADD CONSTRAINT `PK_PAYMENT_STATE_CODE` PRIMARY KEY (
	`payment_state_code_number`
);
ALTER TABLE `payment_state_code` MODIFY `payment_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `order_product_state_code` ADD CONSTRAINT `PK_ORDER_PRODUCT_STATE_CODE` PRIMARY KEY (
	`order_product_state_code_number`
);
ALTER TABLE `order_product_state_code` MODIFY `order_product_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `order_state_code` ADD CONSTRAINT `PK_ORDER_STATE_CODE` PRIMARY KEY (
	`order_state_code_number`
);
ALTER TABLE `order_state_code` MODIFY `order_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `payment_type_state_code` ADD CONSTRAINT `PK_PAYMENT_TYPE_STATE_CODE` PRIMARY KEY (
	`payment_type_state_code_number`
);
ALTER TABLE `payment_type_state_code` MODIFY `payment_type_state_code_number` int NOT NULL auto_increment;

ALTER TABLE `coupon` ADD CONSTRAINT `PK_COUPON` PRIMARY KEY (
	`coupon_number`
);
ALTER TABLE `coupon` MODIFY `coupon_number` bigint NOT NULL auto_increment;

ALTER TABLE `tier_and_coupon` ADD CONSTRAINT `PK_TIER_AND_COUPON` PRIMARY KEY (
	`coupon_template_number`,
	`tier_number`
);

ALTER TABLE `member_and_authority` ADD CONSTRAINT `FK_member_TO_member_and_authority_1` FOREIGN KEY (
	`member_number`
)
REFERENCES `member` (
	`member_number`
);

ALTER TABLE `member_and_authority` ADD CONSTRAINT `FK_authority_TO_member_and_authority_1` FOREIGN KEY (
	`authority_number`
)
REFERENCES `authority` (
	`authority_number`
);

ALTER TABLE `wishlist` ADD CONSTRAINT `FK_member_TO_wishlist_1` FOREIGN KEY (
	`member_number`
)
REFERENCES `member` (
	`member_number`
);

ALTER TABLE `wishlist` ADD CONSTRAINT `FK_product_TO_wishlist_1` FOREIGN KEY (
	`product_number`
)
REFERENCES `product` (
	`product_number`
);

ALTER TABLE `product_and_category` ADD CONSTRAINT `FK_category_TO_product_and_category_1` FOREIGN KEY (
	`category_number`
)
REFERENCES `category` (
	`category_number`
);

ALTER TABLE `product_and_category` ADD CONSTRAINT `FK_product_TO_product_and_category_1` FOREIGN KEY (
	`product_number`
)
REFERENCES `product` (
	`product_number`
);

ALTER TABLE `product_and_tag` ADD CONSTRAINT `FK_tag_TO_product_and_tag_1` FOREIGN KEY (
	`tag_number`
)
REFERENCES `tag` (
	`tag_number`
);

ALTER TABLE `product_and_tag` ADD CONSTRAINT `FK_product_TO_product_and_tag_1` FOREIGN KEY (
	`product_number`
)
REFERENCES `product` (
	`product_number`
);

ALTER TABLE `product_and_author` ADD CONSTRAINT `FK_author_TO_product_and_author_1` FOREIGN KEY (
	`author_number`
)
REFERENCES `author` (
	`author_number`
);

ALTER TABLE `product_and_author` ADD CONSTRAINT `FK_product_TO_product_and_author_1` FOREIGN KEY (
	`product_number`
)
REFERENCES `product` (
	`product_number`
);


ALTER TABLE `tier_and_coupon` ADD CONSTRAINT `FK_coupon_template_TO_tier_and_coupon_1` FOREIGN KEY (
	`coupon_template_number`
)
REFERENCES `coupon_template` (
	`coupon_template_number`
);

ALTER TABLE `tier_and_coupon` ADD CONSTRAINT `FK_tier_TO_tier_and_coupon_1` FOREIGN KEY (
	`tier_number`
)
REFERENCES `tier` (
	`tier_number`
);
