CREATE DATABASE IF NOT EXISTS `bookstore`;

USE `bookstore`;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` mediumint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `bookstore`.`users` (`user_id`, `username`, `password`, `role`) VALUES ('1', 'admin', '$2a$10$1FSnuVhi3B/7hKZe7d7v/e7fXuVy4K6zKbHvavRgnh3bMtVCdwsDa', 'ROLE_ADMIN');

CREATE TABLE IF NOT EXISTS `books` (
  `book_id` mediumint NOT NULL AUTO_INCREMENT,
  `book_name` varchar(100),
  `bookAuthor` varchar(100),
  `book_storage` varchar(100),
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `bookstore`.`books` (`book_id`, `book_name`, `bookAuthor`, `book_storage`) VALUES ('1', 'Книга №1', 'Автор №1', 'Детская библиотека №2');
INSERT INTO `bookstore`.`books` (`book_id`, `book_name`, `bookAuthor`, `book_storage`) VALUES ('2', 'Книга №2', 'Автор №2', 'Детская библиотека №5');

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` mediumint NOT NULL AUTO_INCREMENT,
  `book_id` mediumint NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;