package com.myseu.service;

import com.myseu.domain.User;
import com.myseu.tools.DBTools;
import com.myseu.tools.DateTools;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import com.myseu.dao.UserDAO;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.List;

/**
 * @author Ginger
 * 将服务逻辑从控制层抽离
 */

@Service
public class UseServiceImpl implements UserService{


    @Override
    public boolean login(User user){
        //我把  控制层  的逻辑  分离到  service
        //getDao();

        SqlSession session = DBTools.getSession()  ;
        UserDAO udao = session.getMapper(UserDAO.class);
       List<User> ulist= udao.selectUser(user);
       session.close();
       if(ulist.size() == 0){
           return false;
       }else if(ulist.get(0).getUpass().equals(user.getUpass()))
       {
           user.setId(ulist.get(0).getId());
           return true;
       }else
           return false;


    }

    @Override
    public boolean register(User user) {
        SqlSession session = DBTools.getSession()  ;
        UserDAO udao = session.getMapper(UserDAO.class);

        user.setBirthday(new Date(System.currentTimeMillis()));
        List<User> ulist = udao.selectUser(user);

        session.close();

        if(ulist.size()!=0) {
            return false;
        }
        else
        {
            session = DBTools.getSession()  ;
            udao = session.getMapper(UserDAO.class);
            udao.insertUser(user);
            session.commit();
            session.close();
            return true;
        }
    }
}
