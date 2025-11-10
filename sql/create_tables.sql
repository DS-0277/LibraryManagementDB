CREATE DATABASE library_management_db;

USE library_management_db;

-- 1️⃣ Create database and use it
CREATE DATABASE IF NOT EXISTS library_management_simple;
USE library_management_simple;

-- =====================================================
-- 2️⃣ Create Authors Table
-- =====================================================
CREATE TABLE IF NOT EXISTS authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

-- =====================================================
-- 3️⃣ Create Publishers Table
-- =====================================================
CREATE TABLE IF NOT EXISTS publishers (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100)
);

-- =====================================================
-- 4️⃣ Create Status Table
-- =====================================================
CREATE TABLE IF NOT EXISTS status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(30) NOT NULL
);

-- =====================================================
-- 5️⃣ Create Books Table
-- =====================================================
CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    published_year YEAR,
    author_id INT,
    publisher_id INT,
    status_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id),
    FOREIGN KEY (status_id) REFERENCES status(status_id)
);

-- =====================================================
-- 6️⃣ Insert Sample Data
-- =====================================================

-- Authors
INSERT INTO authors (first_name, last_name)
VALUES
('J.K.', 'Rowling'),
('George', 'Orwell'),
('Jane', 'Austen');

-- Publishers
INSERT INTO publishers (publisher_name, contact_email)
VALUES
('Penguin Random House', 'info@penguin.com'),
('HarperCollins', 'contact@harpercollins.com');

-- Status
INSERT INTO status (status_name)
VALUES
('Available'),
('Borrowed'),
('Lost');

-- Books
INSERT INTO books (title, genre, published_year, author_id, publisher_id, status_id)
VALUES
('Harry Potter and the Sorcerer\'s Stone', 'Fantasy', 1997, 1, 1, 1),
('1984', 'Dystopian', 1949, 2, 1, 2),
('Pride and Prejudice', 'Romance', 1813, 3, 2, 1);

-- =====================================================
-- 7️⃣ Check Data
-- =====================================================
SELECT * FROM authors;
SELECT * FROM publishers;
SELECT * FROM status;
SELECT * FROM books;