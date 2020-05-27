package com.dao;


import com.pojo.Order;

import java.util.List;

public interface OrderDao {
    int addOrder(Order order);

    int deleteOrder(String orderId);

    List<Order> queryOrders();

    int changeOrderStatus(int status, String orderId);

    List<Order> queryOrdersByUserId(int userId);

    List<Order> queryOrdersByTargetId(int targetId);

    Order queryOrderById(String orderId);


}
