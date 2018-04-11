package com.myseu.service;

import com.myseu.dao.BookDAO;
import com.myseu.domain.Book;
import com.myseu.domain.User;
import com.myseu.tools.DBTools;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{

    @Override
    public List<Book> checkBook(User user) {
        //实现具体功能
        Book book = new Book();
        book.setBorrower(user.getId());
        //可以用这个book去查询

        SqlSession sqlSession = DBTools.getSession();
        BookDAO dao  = sqlSession.getMapper(BookDAO.class);
        List<Book> bookList= dao.selectBooks(book);
        sqlSession.close();
        return bookList;
    }

    @Override
    public List<Book> findBook(Book book) {
        List<Book> booklist;

        SqlSession sqlSession = DBTools.getSession();
        BookDAO dao = sqlSession.getMapper(BookDAO.class);
        booklist = dao.selectBooks(book);
        sqlSession.close();

        return booklist;
    }

    @Override
    public boolean borrowBook(Book book){
        System.out.println(book);
        SqlSession sqlSession = DBTools.getSession();
        BookDAO dao = sqlSession.getMapper(BookDAO.class);
        dao.borrowBook(book);

        sqlSession.commit();
        sqlSession.close();
        return true;
    }

    @Override
    public boolean returnBook(Book book) {
        SqlSession sqlSession = DBTools.getSession();
        BookDAO dao = sqlSession.getMapper(BookDAO.class);
        dao.returnBook(book);
        sqlSession.commit();
        sqlSession.close();
        return true;
    }
}
