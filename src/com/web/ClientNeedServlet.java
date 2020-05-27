package com.web;

import com.pojo.*;
import com.service.CommentService;
import com.service.DetailService;
import com.service.NeedService;
import com.service.impl.CommentServiceImpl;
import com.service.impl.DetailServiceImpl;
import com.service.impl.NeedServiceImpl;
import com.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class ClientNeedServlet extends BaseServlet {
    private NeedService needService = new NeedServiceImpl();
    private CommentService commService = new CommentServiceImpl();
    private DetailService detailService = new DetailServiceImpl();
    //主页分页程序
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Need> page = needService.page(pageNo,pageSize);
        //前台页面路径
        page.setUrl("clientNeedServlet?action=page");
        req.setAttribute("page",page);
        req.getRequestDispatcher("category-full.jsp").forward(req,resp);
    }

    //按照需求类型
    protected void pageByStatus(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int status = WebUtils.parseInt(req.getParameter("status"),1);
        Page<Need> page = needService.pageByStatus(pageNo,pageSize,status);
        //前台页面路径
        page.setUrl("clientNeedServlet?action=pageByStatus&status=" +status);
        req.setAttribute("page",page);
        req.getRequestDispatcher("category-full.jsp").forward(req,resp);

    }
    //搜索需求
    protected void searchNeedsWithFlag(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchString = req.getParameter("searchInput");
        int flag = WebUtils.parseInt(req.getParameter("flag"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Need> page = needService.searchNeedsByFlag(pageNo,pageSize,flag,searchString);
        //前台页面路径
        page.setUrl("clientNeedServlet?action= searchNeedsWithFlag&searchInput=" +searchString+"&flag="+flag);
        req.setAttribute("page",page);
        req.getRequestDispatcher("search-result.jsp").forward(req,resp);
    }
    //查看need详情
    protected void getBookDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int needId = WebUtils.parseInt(req.getParameter("needId"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Need need = needService.queryNeedById(needId);
        int userId = need.getUserId();
        detail detail = detailService.queryDetailByUserId(userId);

        Page<Comment> comms = commService.pageCommentsByNeedId(pageNo,50,needId);
        comms.setUrl("");//填一下，方便下面分页
        req.setAttribute("promoter",detail);
        req.setAttribute("Need",need);
        req.setAttribute("Comment",comms);
        req.getRequestDispatcher("detail.jsp").forward(req,resp);
    }
    //添加评论
    protected void commentNeed(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int needId = WebUtils.parseInt(req.getParameter("needId"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        String comment = req.getParameter("comment");
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register-first.jsp").forward(req,resp);
            return;
        }
        Comment comm = new Comment(null,comment,loginUser.getId(),loginUser.getUsername(),needId,new Date());
        commService.addComment(comm);
        resp.sendRedirect(req.getContextPath() + "/clientNeedServlet?action=getBookDetail&needId=" + needId); //跳到添加评论的地方
    }


}
