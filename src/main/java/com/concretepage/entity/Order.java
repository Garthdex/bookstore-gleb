package com.concretepage.entity;

import javax.persistence.*;

@Entity
@Table(name="orders")
public class Order {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="order_id", unique=true, nullable=false)
    private Integer orderId;
    @Column(name="book_id")
    private Integer bookId;

    public Order() {
    }
    public Order(Integer bookId) {
        this.bookId = bookId;
    }
    public Integer getOrderId() {
        return orderId;
    }
    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }
    public Integer getBookId() {
        return bookId;
    }
    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }
}
