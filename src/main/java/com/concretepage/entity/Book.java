package com.concretepage.entity;

import javax.persistence.*;

@Entity
@Table(name="books")
public class Book {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="book_id", unique=true, nullable=false)
    private Integer bookId;
    @Column(name="book_name")
    private String bookName;
    @Column(name="book_author")
    private String bookAuthor;
    @Column(name="book_storage")
    private String bookStorage;

    public Book() {
    }
    public Book(String bookName, String bookAuthor, String bookStorage) {
        this.bookName = bookName;
        this.bookAuthor = bookAuthor;
        this.bookStorage = bookStorage;
    }
    public Integer getBookId() {
        return bookId;
    }
    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }
    public String getBookName() {
        return bookName;
    }
    public void setBookName(String bookName) {
        this.bookName = bookName;
    }
    public String getBookAuthor() {
        return bookAuthor;
    }
    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }
    public String getBookStorage() {
        return bookStorage;
    }
    public void setBookStorage(String bookStorage) {
        this.bookStorage = bookStorage;
    }
}
