package com.concretepage.dao;

import com.concretepage.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class OrderDAO {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    public void addOrder(Integer bookId) {
        Order order = new Order();
        order.setBookId(bookId);
        hibernateTemplate.save(order);
    }

    public Order getOrderByBookId(Integer bookId) {
        Order order = new Order();
        List<?> list = hibernateTemplate.find("FROM Order WHERE bookId=?", bookId);

        if (!list.isEmpty()) {
            order = (Order) list.get(0);
        }

        return order;
    }
}
