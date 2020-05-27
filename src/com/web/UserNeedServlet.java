package com.web;

import com.pojo.*;
import com.service.CheckService;
import com.service.DetailService;
import com.service.NeedService;
import com.service.UserService;
import com.service.impl.DetailServiceImpl;
import com.service.impl.CheckServiceImpl;
import com.service.impl.NeedServiceImpl;
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
import java.util.Date;
import java.util.List;

public class UserNeedServlet extends BaseServlet {
    private NeedService needService = new NeedServiceImpl();
    private CheckService checkService = new CheckServiceImpl();
    private DetailService detailService = new DetailServiceImpl();
    private UserService userService = new UserServiceImpl();
    //添加新“需求”
    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int flag = WebUtils.parseInt(req.getParameter("flag"), -1);
        Need need = WebUtils.copyParamToBean(req.getParameterMap(),new Need());
        User loginUser = (User)req.getSession().getAttribute("user");
        int userId = loginUser.getId();
        User nowUser = userService.getUser(userId);
        int status = nowUser.getStatus();
        if (status == 1){
            need.setUserId(loginUser.getId());
            Date date = new Date();
            need.setTime(date);
            System.out.println(date);
//        need.setFlag(flag);
            needService.addNeed(need);
            String msg = "需求发布成功，待审核，请返回并等待结果";
            req.setAttribute("msg",msg);
            req.getRequestDispatcher("demand-post.jsp").forward(req,resp);
        }else {
            String msg = "未认证，请先认证！";
            req.setAttribute("msg",msg);
            req.getRequestDispatcher("demand-post.jsp").forward(req,resp);
        }

//        resp.sendRedirect(req.getContextPath() + "/needServlet?action=page");
    }
    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id =  WebUtils.parseInt(req.getParameter("id"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        needService.deleteNeedById(id);
        resp.sendRedirect(req.getContextPath() + "/user/needServlet?action=page&pageNo=" + pageNo );
    }
    protected void userUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        Need need = WebUtils.copyParamToBean(req.getParameterMap(),new Need());
        needService.userUpdateNeed(need);
        resp.sendRedirect(req.getContextPath() + "/user/needServlet?action=page&pageNo=" + pageNo );
    }
    protected void getNeed(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        Need need = needService.queryNeedById(id);
        req.setAttribute("need",need);
        req.setAttribute("pageNo",pageNo);
        req.getRequestDispatcher("/user/need-edit.jsp").forward(req,resp);
    }
    //获取不同状态的Need
    protected void showMyNeedByStatusAndFlag(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int status = WebUtils.parseInt(req.getParameter("status"), Need.STATUS_AUDITING);
        //用来区分发布的是需求还是物资
        int flag = WebUtils.parseInt(req.getParameter("flag"), -1);
        User loginUser = (User)req.getSession().getAttribute("user");
        Page<Need> page = needService.showMyNeedsByStatus(pageNo,pageSize,status,flag,loginUser.getId());
        page.setUrl("user/userNeedServlet?action=showMyNeedByStatus&status="+status+"flag="+flag);
        req.setAttribute("page",page);
        req.setAttribute("status",status);
        if(flag == 0){req.setAttribute("flag","需求");}
        if(flag == 1){req.setAttribute("flag","物资");}
        req.getRequestDispatcher("/user/identity-list.jsp").forward(req,resp);
    }
    //更新用户头像
    protected void updatePortrait(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        User loginUser = (User)req.getSession().getAttribute("user");
        String path = getServletContext().getRealPath("img3/");
        detail detail = detailService.queryDetailByUserId(loginUser.getId());
        String name = ImageUtils.upLoadImage(req,loginUser.getId(),path);
        detail.setImg_path(name);
        detailService.updateDetail(detail);
        req.setAttribute("detail",detail);
        System.out.println(req.getHeader("Referer"));
        resp.sendRedirect(req.getHeader("Referer"));
    }
//    protected void applyForDonated(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int id = WebUtils.parseInt(req.getParameter("id"),0);
//        DiskFileItemFactory fac=new DiskFileItemFactory();
//        ServletFileUpload upload= new ServletFileUpload(fac);
//        upload.setHeaderEncoding("utf-8");//解决上传文件名的乱码
//        Need need = needService.queryNeedById(id);
//        Check check = new Check();
//        try {
//            check = checkService.apply(upload.parseRequest(req),loginUser.getId(),path);
//        }catch (FileUploadException e){
//            e.printStackTrace();
//        }
//        checkService.addCheck(check);
//        need.setCheckId(check.getCheckId());
//        need.setStatus(User.STATUS_AUDITING);
//        needService.applyDonated(need);
//        resp.sendRedirect(req.getHeader("Referer"));
//    }

}