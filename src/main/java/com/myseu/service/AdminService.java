package com.myseu.service;

import com.myseu.domain.Book;

public interface AdminService {

    /**
     * 添加书籍
     * @param book 欲添加的书籍
     * @return 成功->true,失败->false.
     */
    boolean addBook(Book book);

    /**
     * 通过id删除书籍
     * @param book 带id的书籍
     * @return 成功->true,失败->false
     */
    boolean deleteBook(Book book);
}
