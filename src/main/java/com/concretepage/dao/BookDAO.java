package com.concretepage.dao;

import com.concretepage.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class BookDAO {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    public Book getBookById(Integer bookId) {
        Book book = new Book();
        List<?> list = hibernateTemplate.find("FROM Book WHERE bookId=?",
                bookId);
        if(!list.isEmpty()) {
            book = (Book)list.get(0);
        }
        return book;
    }

    public List<Book> getAllBooks() {
        List<?> list = hibernateTemplate.find("FROM Book");
        return (List<Book>) list;
    }

    public List<Book> getBookListByName(String name) {
        List<?> list = hibernateTemplate.findByNamedParam("FROM Book WHERE bookName LIKE :name", "name", '%'+name+'%');
        return (List<Book>) list;
    }

    public void deleteBook(Integer bookId) {
        hibernateTemplate.delete(getBookById(bookId));
    }

    public void addBook(Book book) {
        hibernateTemplate.save(book);
    }
}
