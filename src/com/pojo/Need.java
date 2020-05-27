package com.pojo;


import java.util.Date;

public class Need {
    public static final int STATUS_APPROVED = 1; //通过
    public static final int STATUS_AUDITING = 0; //审核中
    public static final int STATUS_DISMISS = 2; //驳回
    public static final int FLAG_MONNEY = 0;
    public static final int FLAG_SUPPLY = 1;
    private Integer id;
    private Integer userId;
    private Integer status = 0;
    private Integer count;
    private Integer stock = 0;
    private Integer flag;   //发布“需求”的用户
    private String name;
    private Date time;
    private String theme;
    private String imgPath = "默认图片地址(记得改).jpg";
    private String describe;  //简介
    private String promoter;  //发起人
    private String checkId;  //checkId
    private String dReason;   //驳回理由
    private int donatedTimes;

    @Override
    public String toString() {
        return "Need{" +
                "id=" + id +
                ", userId=" + userId +
                ", status=" + status +
                ", count=" + count +
                ", stock=" + stock +
                ", flag=" + flag +
                ", name='" + name + '\'' +
                ", time=" + time +
                ", theme='" + theme + '\'' +
                ", imgPath='" + imgPath + '\'' +
                ", describe='" + describe + '\'' +
                ", promoter='" + promoter + '\'' +
                ", checkId='" + checkId + '\'' +
                ", dReason='" + dReason + '\'' +
                ", donatedTimes=" + donatedTimes +
                '}';
    }

    public Need(Integer id, Integer userId, Integer status, Integer count, Integer stock, Integer flag, String name, Date time, String theme, String imgPath, String describe, String promoter, String checkId, String dReason, int donatedTimes) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.count = count;
        this.stock = stock;
        this.flag = flag;
        this.name = name;
        this.time = time;
        this.theme = theme;
        this.imgPath = imgPath;
        this.describe = describe;
        this.promoter = promoter;
        this.checkId = checkId;
        this.dReason = dReason;
        this.donatedTimes = donatedTimes;
    }

    public Need(Integer id, Integer userId, Integer status, Integer count, Integer stock, Integer flag, String name, String imgPath, String describe, String promoter, String checkId, String dReason) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.count = count;
        this.stock = stock;
        this.flag = flag;
        this.name = name;
        this.imgPath = imgPath;
        this.describe = describe;
        this.promoter = promoter;
        this.checkId = checkId;
        this.dReason = dReason;
    }


    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public Need() {
    }

    public int getDonatedTimes() {
        return donatedTimes;
    }

    public void setDonatedTimes(int donatedTimes) {
        this.donatedTimes = donatedTimes;
    }

    public String getPromoter() {
        return promoter;
    }

    public void setPromoter(String promoter) {
        this.promoter = promoter;
    }

    public String getCheckId() {
        return checkId;
    }

    public void setCheckId(String checkId) {
        this.checkId = checkId;
    }

    public String getdReason() {
        return dReason;
    }

    public void setdReason(String dReason) {
        this.dReason = dReason;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

}
