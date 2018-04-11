package com.myseu.controller;

import com.myseu.domain.Book;
import com.myseu.service.AdminService;
import com.myseu.service.AdminServiceImpl;
import com.myseu.service.BookService;
import com.myseu.service.BookServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class adminController {

    public AdminService adminService = new AdminServiceImpl();
    public BookService bookService = new BookServiceImpl();

    @RequestMapping(value="/add_book_form")
    String printAddBookForm(){
        return "add_book_form";
    }

    @RequestMapping("/index")
    String printAdmin(){
        return "admin";
    }

    @RequestMapping("/add_book_action")
    void addBook(@ModelAttribute("book") Book book, HttpServletResponse response){
        response.setContentType("text/html;charset=gb2312");
        if(adminService.addBook(book)){
            try(PrintWriter writer = response.getWriter()) {
                writer.println("<script language=\"javascript\">alert('添加成功');window.location.href='/admin/add_book_form'</script>");
            }catch (IOException e){
                e.printStackTrace();
            }
        }else {
            try(PrintWriter writer = response.getWriter()) {
                writer.println("<script language=\"javascript\">alert('添加失败');window.location.href='/admin/add_book_form'</script>");
            }catch (IOException e){
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("/delete_book_search_form")
    String printBookSearch(){
        return "delete_book_search";
    }

    @RequestMapping("/delete_book_search_action")
    public String printSearch(@ModelAttribute("book")Book book, Model model){


        Book bbook = new Book();
        //System.out.print(book.getBname());
        bbook.setBname(book.getBname());

        List<Book> listbook = bookService.findBook(bbook);
        model.addAttribute("booklist",listbook);

        return "delete_book_search";
    }

    @RequestMapping("/delete_book_action")
    void deleteBook(@ModelAttribute("book") Book book, HttpServletResponse response){
        response.setContentType("text/html;charset=gb2312");

        if(adminService.deleteBook(book)){
            try(PrintWriter writer = response.getWriter()) {
                writer.println("<script language=\"javascript\">alert('删除成功');window.location.href='/admin/delete_book_search_form'</script>");
            }catch (IOException e){
                e.printStackTrace();
            }
        }else {
            try(PrintWriter writer = response.getWriter()) {
                writer.println("<script language=\"javascript\">alert('删除失败');window.location.href='/admin/delete_book_search_form'</script>");
            }catch (IOException e){
                e.printStackTrace();
            }
        }
    }
}
