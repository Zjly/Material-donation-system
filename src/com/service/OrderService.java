package com.service;


import com.pojo.Order;

import java.util.List;

public interface OrderService {

    //String createOreder(int userId,int targetId,int needId,String targetName,String needName);
    void addOrder(Order order);

    /**
     *  确认收货
     * @param orderId 订单号
     */
    void receiverOrder(String orderId);

    /**
     * 接受订单
     * @param orderId
     */
    void sendOrder(String orderId);

    /**
     *  获取用户助力订单信息
     * @param userId 用户id
     * @return orderList
     */

    List<Order> showMyOrders(int userId);

    /**
     *  获取用户“被”助力订单信息，用于收货
     * @param targetId 目标用户id
     * @return orderList
     */

    List<Order> showMyReceiver(int targetId);

    /**
     * 获取所用订单
     * @return orderList
     */

    List<Order> showAllOrders();

    /**
     *  获取订单
     * @param orderId 订单号
     * @return order
     */
    Order getOrder(String orderId);
}
