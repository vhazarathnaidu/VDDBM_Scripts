SQL_UP = u"""
create table books (
    id integer not null,
    created datetime,
    modified datetime,
    author_names varchar(200) not null,
    description longtext
);
create table authors (
    id integer not null,
    created datetime,
    modified datetime,
    first_name varchar(100),
    last_name varchar(100) not null,
    primary key (id)
);
create table book_authors (
    main bit not null,
    type integer,
    author_id integer not null,
    book_id integer not null,
    primary key (author_id, book_id)
);
insert into books values(1, CURDATE(), CURDATE(), 'vuedata Challenges','Technical challenges');
insert into books values(2, CURDATE(), CURDATE(), 'VS','Visual Studio');
insert into books values(3, CURDATE(), CURDATE(), 'Big Data','Hadoop Big Data');
insert into books values(4, CURDATE(), CURDATE(), 'Python','Python Programming');
insert into books values(5, CURDATE(), CURDATE(), 'Java','Java Technical questions');
"""

SQL_DOWN = u"""
delete from books where id in (1, 2, 3, 4, 5);
DROP TABLE book_authors;
DROP TABLE authors;
DROP TABLE books;
"""
