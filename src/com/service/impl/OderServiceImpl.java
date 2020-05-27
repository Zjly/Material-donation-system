package com.service.impl;

import com.dao.OrderDao;
import com.dao.impl.OrderDaoImpl;
import com.pojo.Order;
import com.service.OrderService;


import java.util.Date;
import java.util.List;


public class OderServiceImpl implements OrderService {
    private OrderDao orderDao = new OrderDaoImpl();
    public  static final int RECEPTION = 2;
    public  static final int DELIVERY = 1;


    @Override
    public void addOrder(Order order) {
        order.setCreateTime(new Date());
        orderDao.addOrder(order);
    }

    @Override
    public void receiverOrder(String orderId) {
        orderDao.changeOrderStatus(RECEPTION,orderId);
    }

    @Override
    public void sendOrder(String orderId) {
        orderDao.changeOrderStatus(DELIVERY,orderId);
    }

    @Override
    public List<Order> showMyOrders(int userId) {
        return orderDao.queryOrdersByUserId(userId);
    }

    @Override
    public List<Order> showMyReceiver(int targetId) {
        return orderDao.queryOrdersByTargetId(targetId);
    }

    @Override
    public List<Order> showAllOrders() {
        return orderDao.queryOrders();
    }

    @Override
    public Order getOrder(String orderId) {
        return orderDao.queryOrderById(orderId);
    }
}
