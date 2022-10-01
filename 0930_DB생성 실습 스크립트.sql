#table
select * from Book;
select * from Customer;
select * from Orders;

#desc table
desc Book;
desc Customer;
desc Orders;

#where condition
select bookid, bookname from Book;
select phone from Customer;
select phone from Customer where name = 'Kim Yuna';
select bookname from Book where bookid = '5'; 
select * from Customer where name='park jisung'; 
select * from Orders where custid =4; 
select * from Orders where bookid =8; 

#count
select count(*) from Orders where custid = 3;
select count(*) from Orders;
select count(*) from Orders where bookid =2; 
select count(*) from Customer;



