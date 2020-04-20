 drop table if exists catalogs;
 create table catalogs (
 id int unsigned,
 name varchar(255) comment '�������� �������'
 ) comment = '������� ��������-��������';
 
drop table if exists users;
 create table users (
 id int unsigned,
 name varchar(255) comment '��� ����������'
 ) comment = '����������';
 
drop table if exists products;
 create table products (
 id int unsigned,
 name varchar(255) comment '��������',
 description text comment '��������',
 price decimal (11,2) comment '����',
 catalog_id int unsigned
 ) comment = '�������� �������';
 
drop table if exists orders;
 create table orders (
 id int unsigned,
 user_id int unsigned
 ) comment = '������';
 
drop table if exists orders_products;
 create table orders_products (
 id int unsigned,
 order_id int unsigned,
 product_id int unsigned,
 total int unsigned default 1 comment '���������� ���������� �������� �������'
 ) comment = '������ ������';

drop table if exists discounts;
 create table discounts (
 id int unsigned,
 user_id int unsigned,
 product_id int unsigned,
 discount float unsigned comment '�������� ������ �� 0.0 �� 1.0'
 ) comment = '������';

drop table if exists storehouses_products;
 create table storehouses_products (
 id int unsigned,
 storehouse_id int unsigned,
 product_id int unsigned,
 value int unsigned comment '����� �������� ������� �� ������'
 ) comment = '������ �� ������';

