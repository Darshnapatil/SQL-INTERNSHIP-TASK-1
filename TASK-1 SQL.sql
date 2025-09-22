CREATE DATABASE Librarydb;
USE Librarydb;

-- Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    first_name VARCHAR(10) NOT NULL,
    phone VARCHAR(15)
);

INSERT INTO Members (member_id, first_name, phone)
VALUES 
(101, "adam", "1234567880"), 
(102, "bob", "1234567809"), 
(103, "casey", "1234567890");

SELECT * FROM Members;


-- Librarians Table
CREATE TABLE Librarians (
    librarian_id INT PRIMARY KEY,
    lib_name VARCHAR(10) NOT NULL,
    phone VARCHAR(15)
);

INSERT INTO Librarians (librarian_id, lib_name, phone)
VALUES 
(201, "Raj", "1200000000"), 
(202, "Ruhul", "0004567809"), 
(203, "Rakul", "1234507890");

SELECT * FROM Librarians;


-- Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    author VARCHAR(100),
    librarian_id INT,
    FOREIGN KEY (librarian_id) REFERENCES Librarians(librarian_id)
);

INSERT INTO Books (book_id, author, librarian_id)
VALUES 
(111, "J. K. Rowling", 201), 
(222, "J. K.", 202), 
(333, "Shankaram Q.K.", 203);

SELECT * FROM Books;
