package com.pojo;

public class detail {
    private Integer detailId;
    private Integer Id;   //用户Id
    private String name;
    private String time;  //创建日期
    private String email;  //邮箱
    private String phone;  //电话
    private String address; //地址
    private String introduction;  //简介
    private String details; //详细介绍
    private String img_path = "默认头像.jpg";
    private int identified;  //0 未认证；1已认证

    public detail(Integer detailId, Integer id, String name, String time, String email, String phone, String address, String introduction, String details, int identified) {
        this.detailId = detailId;
        this.Id = id;
        this.name = name;
        this.time = time;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.introduction = introduction;
        this.details = details;
        this.identified = identified;
    }

    public detail(){
    }

    public detail(Integer detailId, Integer id, String email, String phone, String introduction, String details) {
        this.detailId = detailId;
        Id = id;
        this.email = email;
        this.phone = phone;
        this.introduction = introduction;
        this.details = details;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }
    public Integer getDetailId() {
        return detailId;
    }

    public void setDetailId(Integer detailId) {
        this.detailId = detailId;
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getIdentified() {
        return identified;
    }

    public void setIdentified(int identified) {
        this.identified = identified;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "detail{" +
                "detailId=" + detailId +
                ", Id=" + Id +
                ", name='" + name + '\'' +
                ", time='" + time + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", introduction='" + introduction + '\'' +
                ", details='" + details + '\'' +
                ", identified=" + identified +
                '}';
    }
}
