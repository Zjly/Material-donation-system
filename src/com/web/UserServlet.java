package com.web;

import com.pojo.Check;
import com.pojo.User;
import com.pojo.detail;
import com.service.CheckService;
import com.service.DetailService;
import com.service.UserService;
import com.service.impl.DetailServiceImpl;
import com.service.impl.CheckServiceImpl;
import com.service.impl.UserServiceImpl;
import com.utils.ImageUtils;
import com.utils.WebUtils;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

public class UserServlet extends BaseServlet {

    private UserService userService = new UserServiceImpl();
    private CheckService checkService = new CheckServiceImpl();
    private DetailService detailService = new DetailServiceImpl();
    /**
     *登录
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取参数
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //处理业务
        User loingUser = userService.login(new User(username,password));
        if(loingUser == null){
            //将错误信息和回显的表单信息，保存到Request域中
            req.setAttribute("errorMsg","用户名或密码错误!");
            req.setAttribute("loginUsername",username);
            //登录失败
            //跳到登录页面
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }else{
            //登录成功
            //保存用户信息到session中
            req.getSession().setAttribute("user",loingUser);
            //跳到登录成功页面
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }
    //退出登录
    protected void loginout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect(req.getContextPath() + "/login.jsp");
    }

    /**
     *注册
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token = (String)req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String nickname = req.getParameter("nickname");
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        String genpassword = req.getParameter("genpassword");
        String code = req.getParameter("itxt");
        //先判断两次密码是否一致
        if (token != null && token.equalsIgnoreCase(code)){
            if(password.equals(genpassword)){
                //检查用户名是否可用
                if(userService.existsUsername(username) || userService.existsNickname(nickname)){
                    //错误与回显信息
                    if(userService.existsNickname(nickname)){
                        req.setAttribute("msg","nickname已存在！！");
                    }else if(userService.existsUsername(username)){
                        req.setAttribute("msg","用户已存在！！");
                    }
                    req.setAttribute("username",username);
                    req.setAttribute("password",password);
                    req.setAttribute("genpassword",genpassword);
                    req.setAttribute("email",email);
                    req.setAttribute("phone",phone);
                    req.setAttribute("nickname",nickname);
                    //跳回注册页面
                    req.getRequestDispatcher("register-first.jsp").forward(req,resp);
                }else {
                    userService.registUser(new User(null,username,password,email,phone,0,nickname,null,-1,null));
                    //跳转到注册成功页面
                    req.setAttribute("msg","注册成功，请登录!");
                    req.setAttribute("loginUsername",username);
                    req.getRequestDispatcher("register-first.jsp").forward(req,resp);
                }

            }else{
                //错误与回显信息
                req.setAttribute("msg","请重新确认密码！！");
                req.setAttribute("username",username);
                req.setAttribute("email",email);
                req.setAttribute("phone",phone);
                req.setAttribute("nickname",nickname);
                //跳回注册页面
                req.getRequestDispatcher("register-first.jsp").forward(req,resp);
            }
        }else {
            req.setAttribute("msg","验证码错误！！");
            req.setAttribute("username",username);
            req.setAttribute("password",password);
            req.setAttribute("genpassword",genpassword);
            req.setAttribute("email",email);
            req.setAttribute("phone",phone);
            req.setAttribute("nickname",nickname);
            //跳回注册页面
            req.getRequestDispatcher("register-first.jsp").forward(req,resp);
        }


    }
    //查看个人信息
    protected void showUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        User user = (User)req.getSession().getAttribute("user");
        int userId = user.getId();
        User nowUser = userService.getUser(userId);
        int status = nowUser.getStatus();
        System.out.println("now"+status);
        detail details = detailService.queryDetailByUserId(userId);
        String nextUrl =req.getParameter("nextUrl")+".jsp";
        System.out.println(nextUrl);
        req.setAttribute("detail",details);
        req.setAttribute("status",status);
        req.getRequestDispatcher(nextUrl).forward(req,resp);
    }
    //查看其他用户信息
    protected void showOtherUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int userId = WebUtils.parseInt(req.getParameter("userId"),1);
        detail details = detailService.queryDetailByUserId(userId);
        String nextUrl =req.getParameter("nextUrl")+".jsp";
        System.out.println(nextUrl);
        req.setAttribute("detail",details);
        req.getRequestDispatcher(nextUrl).forward(req,resp);
    }
    //添加用户信息
    protected void addDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        detail detail = WebUtils.copyParamToBean(req.getParameterMap(),new detail());
        User loginUser = (User)req.getSession().getAttribute("user");
        detail.setId(loginUser.getId());
        detail.setImg_path("默认头像.jpg");
        detailService.addDetail(detail);
        req.setAttribute("detail",detail);
//        resp.sendRedirect(req.getHeader("Referer"));
        resp.sendRedirect(req.getContextPath()+"/userServlet?action=showUser&nextUrl=customer-account");
    }
    //更新用户信息
    protected void updateDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        User loginUser = (User)req.getSession().getAttribute("user");
        detail detail = WebUtils.copyParamToBean(req.getParameterMap(),detailService.queryDetailByUserId(loginUser.getId()));
        detail.setId(loginUser.getId());
        detail.setIdentified(0);
        detailService.updateDetail(detail);
        req.setAttribute("detail",detail);
        System.out.println(req.getHeader("Referer"));
        resp.sendRedirect(req.getContextPath()+"/userServlet?action=showUser&nextUrl=customer-account");
//        resp.sendRedirect("customer-account.jsp");
    }
    //更改密码
    protected void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        String newUsername = req.getParameter("username");
        String oldPassword = req.getParameter("password_old");
        String newPassword = req.getParameter("password_1");
        String genpassword = req.getParameter("password_2");
        if(oldPassword.equals(loginUser.getPassword())){
            if(newPassword.equals(genpassword)){
                req.setAttribute("msg","修改成功！");
                loginUser.setPassword(newPassword);
                loginUser.setUsername(newUsername);
                userService.updateUser(loginUser);
                req.getSession().setAttribute("user",loginUser);
            }else{
                req.setAttribute("msg","请重新确认密码！！");
            }
        }else{
            req.setAttribute("msg","密码错误！");
        }
        req.setAttribute("username",newUsername);
//        resp.sendRedirect(req.getHeader("Referer"));
        req.getRequestDispatcher("password-change.jsp").forward(req,resp);
    }

    //更新用户头像
    protected void updatePortrait(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        User loginUser = (User)req.getSession().getAttribute("user");
        String path = getServletContext().getRealPath("img3/");
        detail detail = detailService.queryDetailByUserId(loginUser.getId());
        String name = ImageUtils.upLoadImage(req,loginUser.getId(),path);
        detail.setImg_path(name);
        System.out.println(name);
        detailService.updateDetail(detail);
        req.setAttribute("detail",detail);
        System.out.println(req.getHeader("Referer"));
        resp.sendRedirect(req.getHeader("Referer"));
    }
    //认证
    protected void applyForDonated(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        DiskFileItemFactory fac=new DiskFileItemFactory();
        ServletFileUpload upload= new ServletFileUpload(fac);
        upload.setHeaderEncoding("utf-8");//解决上传文件名的乱码
        String path = getServletContext().getRealPath("img3/");
        System.out.println(path);
        Check check = new Check();
        try {
            check = checkService.apply(upload.parseRequest(req),loginUser.getId(),path);
        }catch (FileUploadException e){
            e.printStackTrace();
        }
        check.setId(loginUser.getId());
        check.setStatus(0);
        checkService.addCheck(check);
        loginUser.setCheckId(check.getCheckId());
        loginUser.setStatus(User.STATUS_AUDITING);
        userService.applyDonated(loginUser);
        resp.sendRedirect(req.getHeader("Referer"));
    }
}
