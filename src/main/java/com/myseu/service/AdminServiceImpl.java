package com.myseu.service;

import com.myseu.dao.BookDAO;
import com.myseu.domain.Book;
import com.myseu.tools.DBTools;
import org.apache.ibatis.session.SqlSession;

public class AdminServiceImpl implements AdminService {

    @Override
    public boolean addBook(Book book) {
        if(book.getBname() == null || book.getAuthor() == null || book.getPublisher() == null){
            return false;
        }
        try{
            SqlSession session = DBTools.getSession();
            BookDAO dao = session.getMapper(BookDAO.class);

            dao.insertBookAndSetId(book);

            session.commit();
            session.close();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteBook(Book book) {
        if(book.getId()==-1){
            return false;
        }
        try{
            SqlSession session = DBTools.getSession();
            BookDAO dao = session.getMapper(BookDAO.class);

            dao.deleteBookById(book);
            //与上面那个只有这句不一样而已！

            session.commit();
            session.close();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

}
