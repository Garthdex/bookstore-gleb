package com.concretepage.controller;

import com.concretepage.dao.BookDAO;
import com.concretepage.dao.OrderDAO;
import com.concretepage.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    @Autowired
    BookDAO bookDAO;
    @Autowired
    OrderDAO orderDAO;

    @RequestMapping({"/", "/main"})
    public String getMainPage() {

        return "/view/main";
    }

    @RequestMapping("/login")
    public String getLoginPage() {

        return "login";
    }

    @RequestMapping("/info")
    public String getInfoPage() {

        return "/view/Information";
    }

    @RequestMapping("/contacts")
    public String getContactsPage() {

        return "/view/contacts";
    }

    @RequestMapping("/order")
    public String getOrderPage(ModelMap model) {
        model.addAttribute("books", bookDAO.getAllBooks());
        return "/view/order2";
    }

    @RequestMapping("/searchBook")
    public String getBookByName(ModelMap modelMap, @RequestParam("book_name") String name) {
        modelMap.addAttribute("books", bookDAO.getBookListByName(name));
        return "/view/order2";
    }

    @RequestMapping("/booking")
    public String getBookingPage1(ModelMap modelMap, @RequestParam("book_id") Integer bookId) {

        modelMap.addAttribute("bookId", bookId);
        return "/view/booking";
    }

    @RequestMapping("/booking2")
    public String getBookingPage2(ModelMap modelMap, @RequestParam("book_id") Integer bookId) {
        if (orderDAO.getOrderByBookId(bookId).getOrderId() != null) {
            return "/view/errorOrder";
        }
        orderDAO.addOrder(bookId);
        modelMap.addAttribute("orderId", orderDAO.getOrderByBookId(bookId).getOrderId());
        return "/view/booking2";
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(ModelMap model, @RequestParam("book_id") Integer bookId) {
        bookDAO.deleteBook(bookId);
        model.addAttribute("books", bookDAO.getAllBooks());
        return "/view/order2";
    }

    @RequestMapping("/addBook")
    public String getAddBookPage() {

        return "/view/addBookForm";
    }

    @RequestMapping("/addBookProcess")
    public String addBook(ModelMap model,
                          @RequestParam("book_name") String bookName,
                          @RequestParam("book_author") String bookAuthor,
                          @RequestParam("book_storage") String bookStorage) {
        Book book = new Book(bookName, bookAuthor, bookStorage);
        bookDAO.addBook(book);
        model.addAttribute("books", bookDAO.getAllBooks());
        return "/view/order2";
    }

    @RequestMapping("/bookedBooks")
    public String getOrders(ModelMap model) {

        model.addAttribute("orders", orderDAO.getOrders());
        return "/view/bookedBooks";
    }

    @RequestMapping(value="/error")
    public String error() {
        return "/view/error";
    }
}
