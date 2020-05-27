package com.pojo;

import java.util.Date;

public class Order {
    private String orderId;
    private Date createTime;
    private Integer count;//捐赠数量
    // 0未发货，1已发货，2表示已签收
    private Integer status = 0;
    // 0 物资，1资金
    private Integer type = 0; //捐赠类型
    // 0 发货，1取货
    private Integer sendType = 0; //发货方式
    private Integer needId;
    private String needName;
    private Integer userId; //发货人
    private Integer targetId; //收货人
    private String targetName;//发起人

    public Order() {
    }

    public Order(String orderId) {
        this.orderId = orderId;
    }

    public Order(String orderId, Date createTime, Integer count, Integer status, Integer type, Integer sendType, Integer needId, String needName, Integer userId, Integer targetId, String targetName) {
        this.orderId = orderId;
        this.createTime = createTime;
        this.count = count;
        this.status = status;
        this.type = type;
        this.sendType = sendType;
        this.needId = needId;
        this.needName = needName;
        this.userId = userId;
        this.targetId = targetId;
        this.targetName = targetName;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", createTime=" + createTime +
                ", count=" + count +
                ", status=" + status +
                ", type=" + type +
                ", sendType=" + sendType +
                ", needId=" + needId +
                ", needName='" + needName + '\'' +
                ", userId=" + userId +
                ", targetId=" + targetId +
                ", targetName='" + targetName + '\'' +
                '}';
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getSendType() {
        return sendType;
    }

    public void setSendType(Integer sendType) {
        this.sendType = sendType;
    }

    public Integer getTargetId() {
        return targetId;
    }

    public String getTargetName() {
        return targetName;
    }

    public void setTargetName(String targetName) {
        this.targetName = targetName;
    }

    public void setTargetId(Integer targetId) {
        this.targetId = targetId;
    }

    public Integer getNeedId() {
        return needId;
    }

    public void setNeedId(Integer needId) {
        this.needId = needId;
    }

    public String getNeedName() {
        return needName;
    }

    public void setNeedName(String needName) {
        this.needName = needName;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getOrderId() {
        return orderId;
    }


    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

}
