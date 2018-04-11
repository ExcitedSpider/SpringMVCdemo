package com.myseu.service;

import com.myseu.domain.Book;
import com.myseu.domain.User;

import java.util.List;

public interface BookService {
    /**
     * 查询用户书籍
     * @param user
     * @return
     */
    List<Book> checkBook(User user);


    /**
     **按条件查询书籍
     * @param book
     * @return
     */
    List<Book> findBook(Book book);

    /**
     * 操作完成  check 更新List
     * @param book
     * @return
     */
    boolean borrowBook(Book book);

    /**
     * @param book
     * @return
     */
    boolean returnBook(Book book);
}
