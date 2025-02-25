show databases;
DROP SCHEMA IF EXISTS LibraryManagement;
CREATE SCHEMA LibraryManagement;
use LibraryManagement;
CREATE TABLE Authors (
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(50)
);
create table Genres (
genre_id int auto_increment primary key,
genre_name varchar(50)
);
create table Books (
book_id int auto_increment primary key,
title varchar(50),
pubblication_year year,
author_id int,
foreign key (author_id) references Authors (author_id),
genre_id int,
foreign key (genre_id) references Genres (genre_id)
);
create table Users (
user_id int auto_increment primary key,
username varchar(50),
email varchar(255)
);
create table Borrowed_books (
borrow_id int auto_increment primary key,
book_id int,
foreign key (book_id) references Books (book_id),
user_id int,
foreign key (user_id) references Users (user_id),
borrow_date date,
return_date date
);

insert INTO Authors(author_name) values ("Stiven King");
insert into Authors(author_name) values ("Aisek Asimov");
insert into Genres (genre_name) values ("horror");
insert into Genres (genre_name) values ("fantasy");
insert into Books(title, pubblication_year, author_id, genre_id) values ("Misery", 1984, 1, 1);
insert into Books(title, pubblication_year, author_id, genre_id) values ("IRobot", 1986, 2, 2);

insert into Borrowed_books(book_id, user_id, borrow_date, return_date) VALUES (1, 1, '2002-06-15', '2023-07-15');
insert into Borrowed_books(book_id, user_id, borrow_date, return_date) Values (2, 2, '2023-04-17', '2023-05-19');

insert into Users (username, email) VALUES ("Bubby", "bubby@gmail.com");
insert into Users (username, email) VALUES ("John", "john@gmail.com");










