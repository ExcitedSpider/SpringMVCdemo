package com.myseu.controller;

import com.myseu.domain.User;
import com.myseu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.Date;

@Controller
@RequestMapping(value="/")
public class UserController {

    //private static final Log logger = LogFactory.getLog(UserController.class);

    //将服务依赖注入属性 userService
    @Autowired
    public UserService userService;

    /**
     * @author 1-riverfish
     * @param map
     * @return String
     *   url   localhost:8080/     index.jsp
     */
    @RequestMapping()
    public String printIndex(ModelMap map)
    {
        return "index";
    }

    /**
     * @author 1-riverfish
     * @return
     *   url   localhost:8080/login/     login.jsp
     */
    @RequestMapping(value="/login")
    public String printLogin(@ModelAttribute("user") User user, HttpSession session, ModelMap model)
    {
        //System.out.print(user.getRemember());
        if(userService.login(user)){
            session.setAttribute("user",user);
            //这边考虑一下要不要用  printHome
            return "home";
        }else{
            //model.addAttribute("tips","账户名或密码错误");
            return "login";
        }

    }

    @RequestMapping(value="/home")
    public String printHome()
    {
        return "home";
    }

    /**
     * @author 1-riverfish
     * @param
     * @return
     *   url   localhost:8080/register/     register.jsp
     */
    @RequestMapping(value="/register")
    public String printRegister(@ModelAttribute("user") User user, ModelMap model)
    {
        // 拦截url
        if(user.getUname() == null)
            return "register";

        if(userService.register(user))
            return "login";
        else
            return "register";
    }

}
