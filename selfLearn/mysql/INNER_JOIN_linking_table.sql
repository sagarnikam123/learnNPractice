-- INNER JOIN the linking table

create databse shabda;
show databases;
use shabda;



-- Books table
create table books(
BookID smallint not null primary key,
BookTitle varchar(60) not null,
Copyrith year not null
);

insert into books values
(12786,'java',1934),
(13331, 'MySQL',          1919),
(14356, 'PHP',            1966),
(15729, 'PERL',           1932),
(16284, 'Oracle',         1996),
(17695, 'Pl/SQL',         1980),
(19264, 'JavaScript',     1992),
(19354, 'www.java2s.com', 1993);

-- Authors table
create table authors(
AuthID smallint not null primary key,
AuthFN varchar(20),
AuthMN varchar(20),
AuthLN varchar(20));

insert into authors values
(1006, 'H', 'S.', 'T'),
(1007, 'J', 'C',  'O'),
(1008, 'B', NULL, 'E'),
(1009, 'R', 'M',  'R'),
(1010, 'J', 'K',  'T'),
(1011, 'J', 'G.', 'N'),
(1012, 'A', NULL, 'P'),
(1013, 'A', NULL, 'W'),
(1014, 'N', NULL, 'A') ;

create table authorBook(
AuthID smallint not null,
BookID smallint not null,
primary key(AuthID,BookID),
foreign key(AuthID) references authors(AuthID),
foreign key(BookID) references books (BookID) 
)
engine=innodb;


INSERT INTO authorBook VALUES (1006, 14356),
(1008, 15729),
(1009, 12786),
(1010, 17695),
(1011, 15729),
(1012, 19264),
(1012, 19354),
(1014, 16284);


show tables;

select * from authors;
select * from aooks;
select * from authorBook;

-- inner join & linking table
select BookTitle,AuthID from books inner join authorBook;


drop table  authors;
drop table  books ;
drop table  buthorBook ;

drop database shabda;
