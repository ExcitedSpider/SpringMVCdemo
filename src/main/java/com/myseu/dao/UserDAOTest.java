package com.myseu.dao;

import com.myseu.dao.UserDAO;
import com.myseu.domain.User;
import com.myseu.tools.DBTools;
import com.myseu.tools.DateTools;
import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.sql.Date;

import static org.junit.Assert.*;

public class UserDAOTest {

    SqlSession sqlSession;
    @Before
    public void setUp() throws Exception {
        sqlSession = DBTools.getSession();
    }

    @After
    public void tearDown() throws Exception {
        sqlSession.commit();
        sqlSession.close();
    }



    @Test
    public void insertUser(){

        UserDAO userdao = sqlSession.getMapper(UserDAO.class);
        Date date = DateTools.getDate("2018-01-01");

        User user = new User();

        user.setUname("root");
        user.setUpass("1234");
        user.setBirthday(date);
        user.setContact("1020072294");
        user.setGender(1);

        userdao.insertUser(user);
    }

    }
