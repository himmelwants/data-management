CREATE TABLE Book (
  bookid      INTEGER PRIMARY KEY,
  bookname    VARCHAR(40),
  publisher   VARCHAR(40),
  price       INTEGER 
);

CREATE TABLE  Customer (
  custid      INTEGER PRIMARY KEY,  
  name        VARCHAR(40),
  address     VARCHAR(50), 
  phone       VARCHAR(20) 
);

CREATE TABLE Orders (
  orderid INTEGER PRIMARY KEY, 
  custid  INTEGER , 
  bookid  INTEGER , 
  saleprice INTEGER ,
  orderdate DATE,
  FOREIGN KEY (custid) REFERENCES Customer(custid),
  FOREIGN KEY (bookid) REFERENCES Book(bookid)
); 
복붙 후 f5
Book, Customer 테이블의 bookid,custid 데이터를를 PRIMARY KEY로 설정->Order 테이블 bookid,custid 데이터의 FOREIGN KEY 

INSERT INTO Book VALUES(1, 'History of football', 'good sports', 7000);
INSERT INTO Book VALUES(2, 'Soccer girl', 'Namusoo', 13000);
INSERT INTO Book VALUES(3, 'Understanding of Football', 'DaeHan Media', 22000);
INSERT INTO Book VALUES(4, 'Golf Bible', 'DaeHan Media', 35000);
INSERT INTO Book VALUES(5, 'Figure skating Book', 'Good sports', 8000);
INSERT INTO Book VALUES(6, 'Weightlifting step-by-step', 'Good sports', 6000);
INSERT INTO Book VALUES(7, 'Memories of baseball', 'IsangMedia', 20000);
INSERT INTO Book VALUES(8, 'Play baseball', 'IsangMedia', 13000);
INSERT INTO Book VALUES(9, 'Olympic Story', 'SamsungDang', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, 'Park JiSung', 'England Manchester', '000-5000-0001');
INSERT INTO Customer VALUES (2, 'Kim Yuna', 'SouthKorea Seoul', '000-6000-0001');  
INSERT INTO Customer VALUES (3, 'Jang Miran', 'SouthKorea Gangwondo', '000-7000-0001');
INSERT INTO Customer VALUES (4, 'Choo Sinsu', 'Cleveland, USA', '000-8000-0001');
INSERT INTO Customer VALUES (5, 'Park Seri', 'SouthKorea Daejeon',  NULL);

INSERT INTO Orders VALUES (1, 1, 1, 6000, STR_TO_DATE('2014-07-01','%Y-%m-%d')); 
INSERT INTO Orders VALUES (2, 1, 3, 21000, STR_TO_DATE('2014-07-03','%Y-%m-%d'));
INSERT INTO Orders VALUES (3, 2, 5, 8000, STR_TO_DATE('2014-07-03','%Y-%m-%d')); 
INSERT INTO Orders VALUES (4, 3, 6, 6000, STR_TO_DATE('2014-07-04','%Y-%m-%d')); 
INSERT INTO Orders VALUES (5, 4, 7, 20000, STR_TO_DATE('2014-07-05','%Y-%m-%d'));
INSERT INTO Orders VALUES (6, 1, 2, 12000, STR_TO_DATE('2014-07-07','%Y-%m-%d'));
INSERT INTO Orders VALUES (7, 4, 8, 13000, STR_TO_DATE( '2014-07-07','%Y-%m-%d'));
INSERT INTO Orders VALUES (8, 3, 10, 12000, STR_TO_DATE('2014-07-08','%Y-%m-%d')); 
INSERT INTO Orders VALUES (9, 2, 10, 7000, STR_TO_DATE('2014-07-09','%Y-%m-%d')); 
INSERT INTO Orders VALUES (10, 3, 8, 13000, STR_TO_DATE('2014-07-10','%Y-%m-%d'));
복붙 후 f5

# 테이블 출력
select * from 테이블명; f9
ex) 
select * from Book;
select * from Customer;
select * from Orders;

#데이터 항목 출력
desc 테이블명; f9
ex) desc customer;

#데이터 출력
select 데이터명 from 테이블명; f9
ex) select bookid, bookname from Book;

#데이터 조건 출력
select 데이터명 from 테이블명 [where 조건(데이터명=smth)]; f9
ex)
select phone from Customer where name = 'Kim Yuna';
select * from Customer where name='park jisung'; -> Customer 테이블에서 park jisung의 데이터를 검색하라.
select bookname from Book where bookid = '5'; -> Book 테이블에서 bookid가 5인 책의 이름을 검색하라.
select * from Orders where custid =4; -> Orders 테이블에서 custid가 4인 테이터를 검색하라(custid가 4인 모든 데이터들을 출력함.)
select * from Orders where bookid =8; -> Orders 테이블에서 bookid가 8인 테이터를 검색하라(bookid가 8인 모든 데이터들을 출력함.)

#데이터 카운트
select count(*) from 테이블명 [where 조건(데이터명=smth)]; f9
ex)
select count(*) from Orders where custid = 3; -> Order 테이블에서 custid가 3인 테이터의 개수를 세라
select count(*) from Orders; -> Orders 테이블의 데이터 개수를 세라.
select count(*) from Orders where bookid =2; -> Orders 테이블에서 bookid가 2인 데이터의 개수를 세라.

