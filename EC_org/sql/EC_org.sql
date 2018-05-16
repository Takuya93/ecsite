drop database if exists EC_org;
create database if not exists EC_org;
use EC_org;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16),
login_pass varchar(16),
user_name varchar(50),
user_furigana varchar(50),
gender enum('male','female'),
email varchar(30),
insert_date datetime,
updated_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_furigana varchar(30),
item_image varchar(30),
item_price int,
item_stock int,
company varchar(30),
release_date varchar(30),
item_info varchar(255),
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
dalete_date datetime
);

drop table if exists cart;

create table cart(
id int primary key not null auto_increment,
user_id varchar(16),
item_id int,
total_price int,
pay varchar(16),
buy_count int,
insert_date datetime,
update_date datetime
);

INSERT login_user_transaction(login_id,login_pass,user_name,user_furigana,gender)
VALUE("takuya","1124","大川拓也","おおかわたくや","male");
INSERT item_info_transaction(item_name,item_image,item_price,item_stock,company)
VALUE("PEN","./image/item1.jpg","100","40","ookawa"),
	("toothbrush","./image/item2.jpg","120","20","ookawa"),
	("dog","./image/item3.jpg","60000","5","ookawa");

