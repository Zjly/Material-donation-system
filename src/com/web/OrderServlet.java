package com.web;

import com.pojo.Need;
import com.pojo.Order;
import com.pojo.User;
import com.pojo.detail;
import com.service.DetailService;
import com.service.NeedService;
import com.service.OrderService;
import com.service.impl.DetailServiceImpl;
import com.service.impl.NeedServiceImpl;
import com.service.impl.OderServiceImpl;
import com.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class OrderServlet extends BaseServlet {
    OrderService orderService = new OderServiceImpl();
    NeedService needService = new NeedServiceImpl();
    DetailService detailService = new DetailServiceImpl();
    //创建订单号
    protected void createOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int type = WebUtils.parseInt(req.getParameter("type"),1);//选择助力方式
        int sendType = WebUtils.parseInt(req.getParameter("sendType"),-1);//选择送货方式
        int needId = WebUtils.parseInt(req.getParameter("needId"),0);
        int count = WebUtils.parseInt(req.getParameter("count"),0);
        int pay_way = WebUtils.parseInt(req.getParameter("payment"),1);
        String user_address = req.getParameter("user-address");
        String company_address = req.getParameter("company-address");
        String real_address = req.getParameter("real-address");
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register-first.jsp").forward(req,resp);
            return;
        }
        Need need = needService.queryNeedById(needId);
        Integer userId = loginUser.getId();
        String orderId = System.currentTimeMillis()+""+userId;
        Order order =new Order(orderId,null,count,0,type,sendType,need.getId(),need.getName(),userId,need.getUserId(),need.getPromoter());
        orderService.addOrder(order);
//        need.setDonatedTimes(need.getDonatedTimes()+1);
        needService.updateNeed(need);
        req.getSession().setAttribute("user_address",user_address);
        req.getSession().setAttribute("company_address",company_address);
        req.getSession().setAttribute("real_address",real_address);
        req.getSession().setAttribute("pay_way",pay_way);
        req.getSession().setAttribute("type",type);
        req.getSession().setAttribute("sendType",sendType);
        req.getSession().setAttribute("orderId",orderId);
        resp.sendRedirect(req.getContextPath() + "/final.jsp");
//        req.getRequestDispatcher("final.jsp").forward(req,resp);
    }

    //跳转到checkout
    protected void showCheckout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int needId = WebUtils.parseInt(req.getParameter("needId"),0);
        Need need = needService.queryNeedById(needId);
        req.setAttribute("need",need);
        int userId = need.getUserId();

//        User user = (User)req.getSession().getAttribute("user");
//        int userId = user.getId();
        detail details = detailService.queryDetailByUserId(userId);
        req.setAttribute("checkdetail",details);
        req.getRequestDispatcher("checkout1.jsp").forward(req,resp);
    }

    //"管理订单"
    protected void showAllOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Order> orders  = orderService.showAllOrders();
        req.setAttribute("orders", orders);
        req.getRequestDispatcher("/manager/order-list.jsp").forward(req,resp);
    }
    //“发货"
    protected void sendOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        orderService.sendOrder(req.getParameter("orderId"));
        resp.sendRedirect(req.getContextPath() + "/manager/orderServlet?action=showAllOrders");
    }
    //查看"我的订单"
    protected void showMyOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register-first.jsp").forward(req,resp);
            return;
        }
        int userId = loginUser.getId();
        List<Order> orders = orderService.showMyOrders(userId);
        req.setAttribute("orders",orders);
        req.getRequestDispatcher("customer-orders.jsp").forward(req,resp);
    }
    protected void showOrderDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("orderId");
        Order order = orderService.getOrder(orderId);
        req.setAttribute("order",order);
        req.getRequestDispatcher("customer-order.jsp").forward(req,resp);
    }
    //查看“被助力”订单
    protected void showReciver(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register.jsp").forward(req,resp);
            return;
        }
        int targetId = loginUser.getId();
        List<Order> orders = orderService.showMyReceiver(targetId);
        req.setAttribute("orders",orders);
        req.getRequestDispatcher("customer-orders.jsp").forward(req,resp);
    }

    //确认收货
    protected void receiverOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("orderId");
        orderService.receiverOrder(orderId);
        Order order = orderService.getOrder(orderId);
        Need need = needService.queryNeedById(order.getNeedId());
        need.setCount(need.getCount()-order.getCount());
        need.setStock(need.getStock()+order.getCount());
        need.setDonatedTimes(need.getDonatedTimes()+1);
        needService.updateNeed(need);
        resp.sendRedirect(req.getContextPath() + "/orderServlet?action=showMyOrders");
    }
}
