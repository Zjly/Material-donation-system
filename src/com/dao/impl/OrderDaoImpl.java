package com.dao.impl;

import com.dao.OrderDao;
import com.pojo.Order;
import java.util.List;


public class OrderDaoImpl extends BaseDao implements OrderDao {

    @Override
    public int addOrder(Order order) {
        String sql = "insert into DonatingPlatForm..t_order (orderId, createTime, needId, needName, count, status, userId,targetId,targetName,type,sendType) values (?,?,?,?,?,?,?,?,?,?,?)";
        return update(sql,order.getOrderId(),order.getCreateTime(),order.getNeedId(),order.getNeedName(),order.getCount(),order.getStatus(),order.getUserId(),order.getUserId(),order.getTargetName(),order.getType(),order.getSendType());
    }

    @Override
    public int deleteOrder(String orderId) {
        String sql = "delete from DonatingPlatForm..t_order where orderId = ?";
        return update(sql,orderId);
    }

    @Override
    public List<Order> queryOrders(){
        String sql = "select * from DonatingPlatForm..t_order";
        return queryForList(Order.class, sql);
    }

    @Override
    public int changeOrderStatus(int status,String order_id){
        String sql = "update DonatingPlatForm..t_order set status=? where orderId = ?";
        return update(sql,status,order_id);
    }

    @Override
    public List<Order> queryOrdersByUserId(int userId) {
        String sql = "select * from DonatingPlatForm..t_order where userId = ?";
        return queryForList(Order.class,sql,userId);
    }

    @Override
    public List<Order> queryOrdersByTargetId(int targetId) {
        String sql = "select * from DonatingPlatForm..t_order where targetId = ?";
        return queryForList(Order.class,sql,targetId);
    }

    @Override
    public Order queryOrderById(String orderId) {
        String sql = "select * from DonatingPlatForm..t_order where orderId = ?";
        return queryForOne(Order.class,sql,orderId);
    }

}
