package com.web;

import com.pojo.Check;
import com.pojo.Need;
import com.pojo.Page;
import com.pojo.User;
import com.service.CheckService;
import com.service.NeedService;
import com.service.UserService;
import com.service.impl.CheckServiceImpl;
import com.service.impl.NeedServiceImpl;
import com.service.impl.UserServiceImpl;
import com.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ManagerServlet extends BaseServlet {
    private NeedService needService = new NeedServiceImpl();
    private UserService userService = new UserServiceImpl();
    private CheckService checkService = new CheckServiceImpl();

    //管理修改“需求”
    protected void managerUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        Need need = WebUtils.copyParamToBean(req.getParameterMap(),new Need());
        needService.managerUpdateNeed(need);
        resp.sendRedirect(req.getHeader("Referer"));
    }

    //审核“需求”
   protected void changeNeedStatus(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int status = WebUtils.parseInt(req.getParameter("status"),Need.STATUS_AUDITING);
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        int checkId = WebUtils.parseInt(req.getParameter("checkId"),0);
        String dReason = req.getParameter("dReason");
        switch (status){
            case Need.STATUS_APPROVED:
                needService.approvedNeed(id);
                break;
            case Need.STATUS_DISMISS:
                needService.dismissNeed(dReason,id);
                break;
            default:
                return;
        }
        checkService.deleteCheckById(checkId);
        resp.sendRedirect(req.getHeader("Referer"));
    }
    //审核用户
    protected void changeUserType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int status = WebUtils.parseInt(req.getParameter("status"),Need.STATUS_AUDITING);
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        int checkId = WebUtils.parseInt(req.getParameter("checkId"),0);
        String dReason = req.getParameter("dReason");
        switch (status){
            case User.STATUS_APPROVED:
                userService.approvedUser(id);
                break;
            case User.STATUS_DISMISS:
                userService.dismissUser(dReason,id);
                break;
            default:
                return;
        }
        checkService.deleteCheckById(checkId);
        resp.sendRedirect(req.getHeader("Referer"));
    }
    //展示需要审核的种类
    protected void showAuditNeed(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
//        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
//        Page<Check> page = checkService.PageChecks(pageNo,pageSize);
//        page.setUrl("clientBookServlet?action=showAuditNeed");
//        req.setAttribute("page",page);
//        req.getRequestDispatcher("/manager/identity-list.jsp").forward(req,resp);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Need> page = needService.page(pageNo,pageSize);
        //前台页面路径
        page.setUrl("managerServlet?action=showAuditNeed");
        req.setAttribute("page",page);
        req.setAttribute("pageNoNow",pageNo);
        req.getRequestDispatcher("/manage/apply-list.jsp").forward(req,resp);
    }

    protected void showAuditUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<User> page = userService.pageToCheck(pageNo,pageSize);
        page.setUrl("clientBookServlet?action=showAuditUser");
        req.setAttribute("page",page);
        req.getRequestDispatcher("/manage/identity-list.jsp").forward(req,resp);
    }
    //通过需求
    protected void approvedCheck(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        Check check = checkService.getCheck(id);
        checkService.updateStatus(id,Check.STATUS_APPROVED);
        userService.approvedUser(check.getId());
        resp.sendRedirect(req.getContextPath() + "/manage/managerServlet?action=showCheck");
    }
    protected void approvedNeed(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        needService.approvedNeed(id);
        resp.sendRedirect(req.getContextPath() + "/manage/managerServlet?action=showAuditNeed");
    }
    //驳回需求
    protected void dismissCheck(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        Check check = checkService.getCheck(id);
        checkService.updateStatus(id,Check.STATUS_DISMISS);
        userService.dismissUser(null,check.getId());
        resp.sendRedirect(req.getContextPath() + "/manage/managerServlet?action=showCheck");
    }
    protected void dismissNeed(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        needService.dismissNeed(null,id);
        resp.sendRedirect(req.getContextPath() + "/manage/managerServlet?action=showAuditNeed");
    }

    //展示详情
    protected void showNeedDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),1);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
//        int id = WebUtils.parseInt(req.getParameter("id"),0);
        Need need = needService.queryNeedById(id);
        req.setAttribute("need",need);
        req.setAttribute("pageNoNow",pageNo);
//        req.setAttribute("id",id);
        req.getRequestDispatcher("/manage/demand-edit.jsp").forward(req,resp);
    }
    //展示详情
    protected void showCheckDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String checkId = req.getParameter("checkId");
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
//        int id = WebUtils.parseInt(req.getParameter("id"),0);
        Check check = checkService.getCheck(checkId);
        req.setAttribute("check",check);
        req.setAttribute("pageNoNow",pageNo);
//        req.setAttribute("id",id);
        req.getRequestDispatcher("/manage/identity-edit.jsp").forward(req,resp);
    }

    //认证审核后台
    protected void showCheck(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Check> page = checkService.PageChecks(pageNo,pageSize);
        page.setUrl("managerServlet?action=showCheck");
        req.setAttribute("page",page);
        req.getRequestDispatcher("/manage/identity-list.jsp").forward(req,resp);
    }

}