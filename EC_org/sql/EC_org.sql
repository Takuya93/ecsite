drop database if exists EC_org;
create database if not exists EC_org;
use EC_org;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16),
login_pass varchar(16),
user_firstname varchar(50),
user_familyname varchar(50),
user_first_furigana varchar(50),
user_family_furigana varchar(50),
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
item_image int,
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
buy_count int,
insert_date datetime,
update_date datetime
);

INSERT login_user_transaction(login_id,login_pass,user_firstname,user_familyname,user_first_furigana,user_family_furigana,gender)
VALUE("takuya","1124","拓也","大川","たくや","おおかわ","male");
INSERT item_info_transaction(item_name,item_image,item_price,item_stock,company)
VALUE("PEN","1","100","40","ookawa"),
	("toothbrush","2","120","20","ookawa"),
	("dog","3","60000","5","ookawa");

