package com.myseu.dao;

import com.myseu.domain.Book;
import com.myseu.tools.DBTools;
import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.sql.Date;
import java.util.List;

import static org.junit.Assert.*;

public class BookDAOTest {
    SqlSession sqlSession;
    @Before
    public void setUp() throws Exception {
        sqlSession = DBTools.getSession();

    }

    @After
    public void tearDown() throws Exception {
        sqlSession.commit();
    }

    @Test
    public void selectBooks() {
        BookDAO dao= sqlSession.getMapper(BookDAO.class);
        Book book = new Book();
        book.setId(1);

        List<Book> list = dao.selectBooks(book);
        System.out.println(list);


    }

    @Test
    public void borrowBook() {
        BookDAO dao= sqlSession.getMapper(BookDAO.class);
        Book book = new Book();

        book.setId(5);
        book.setBorrower(12);
        book.setDueDate(new Date(System.currentTimeMillis()+2678400*1000));

        dao.borrowBook(book);
    }
}