package com.myseu.controller;

import com.myseu.domain.Book;
import com.myseu.domain.User;
import com.myseu.service.BookService;
import com.myseu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    public BookService bookservice;

    @RequestMapping("/check")
    public String printCheck(Model model, HttpSession session ){

        List<Book> booklist =bookservice.checkBook((User)session.getAttribute("user"));
        model.addAttribute("booklist",booklist);
        return "check";
    }

    @RequestMapping("/search_form")
    public String printSearchForm(){
        return "search";
    }

    @RequestMapping("/search")
    public String printSearch(Book book,Model model){

        Book bbook = new Book();
        //System.out.print(book.getBname());
        bbook.setBname(book.getBname());

        List<Book> listbook = bookservice.findBook(bbook);
        model.addAttribute("booklist",listbook);

        return "search";
    }

    @RequestMapping("/return")
    public String Return( Book book)
    {
        //Integer id = Integer.parseInt(name);
        //System.out.print(book.getId());
        Book bbook = new Book();
        bbook.setId(book.getId());

        bookservice.returnBook(bbook);

        return "check";
    }

    @RequestMapping("/borrow")
    public String Borrow( Book book,HttpSession session)
    {
        //
        User user = (User)session.getAttribute("user");
        //Integer iid = Integer.parseInt(id);
        Book bbook = new Book();
        bbook.setId(book.getId());
        bbook.setBorrower(user.getId());
        bbook.setDueDate(new Date(System.currentTimeMillis()+604800*1000));
        bookservice.borrowBook(bbook);

        return "check";
    }


}
