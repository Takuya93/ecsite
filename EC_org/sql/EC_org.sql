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
item_price int,
total_price int,
pay varchar(16),
buy_count int,
insert_date datetime,
update_date datetime
);

create table inquiry(name varchar(255),mail varchar(255),qtype varchar(255),body varchar(255),master_id varchar(50));

INSERT login_user_transaction(login_id,login_pass,user_name,user_furigana,gender)
VALUE("takuya","1124","大川拓也","おおかわたくや","male"),
	("taro","1234","山田太郎","やまだたろう","male");
INSERT item_info_transaction(item_name,item_image,item_price,item_stock,company)
VALUE("dogfood_adult","./image/item1.jpg","750","20","ookawa"),
	("dogfood_small","./image/item2.jpg","750","20","ookawa"),
	("dogfood_senior","./image/item3.jpg","750","20","ookawa"),
	("bowl_silver","./image/item4.jpg","400","30","ookawa"),
	("bowl_pink","./image/item5.jpg","300","30","ookawa"),
	("bowl_double","./image/item6.jpg","500","30","ookawa"),
	("harnes_small","./image/item7.jpg","1000","10","ookawa"),
	("harnes_middle","./image/item8.jpg","1000","10","ookawa"),
	("harnes_large","./image/item9.jpg","1000","10","ookawa");


