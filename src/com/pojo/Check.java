package com.pojo;

public class Check {
    public static final int STATUS_APPROVED = 1; //通过
    public static final int STATUS_AUDITING = 0; //审核中
    public static final int STATUS_DISMISS = 2; //驳回
    private int identityId; //认证ID
    private int Id;       //用户Id
    private String name;  //昵称
    private String title; //认证称号
    private String supplement; //称号补充
    private String operator; //运营者姓名
    private String phone;
    private String email;
    private String company; //企业全称
    private String type;  //机构类型
    private String address; //所在地址
    private String website; //官网地址
    private String code; //社会信用代码
    private String img_path; //图片？
    private String checkId;
    private int status;

    public Check(){}

    public Check(String checkId) {
        this.checkId = checkId;
    }

    public Check(int identityId, int id, String name, String title, String supplement, String operator, String phone, String email, String company, String type, String address, String website, String code, String img_path, String checkId, int status) {
        this.identityId = identityId;
        Id = id;
        this.name = name;
        this.title = title;
        this.supplement = supplement;
        this.operator = operator;
        this.phone = phone;
        this.email = email;
        this.company = company;
        this.type = type;
        this.address = address;
        this.website = website;
        this.code = code;
        this.img_path = img_path;
        this.checkId = checkId;
        this.status = status;
    }

    public Check(int identityId, int id, String name, String title, String supplement, String operator,
                 String phone, String email, String company, String type, String address, String website, String code, String img_path, String checkId) {
        this.identityId = identityId;
        Id = id;
        this.name = name;
        this.title = title;
        this.supplement = supplement;
        this.operator = operator;
        this.phone = phone;
        this.email = email;
        this.company = company;
        this.type = type;
        this.address = address;
        this.website = website;
        this.code = code;
        this.img_path = img_path;
        this.checkId = checkId;
    }

    @Override
    public String toString() {
        return "Check{" +
                "identityId=" + identityId +
                ", Id=" + Id +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", supplement='" + supplement + '\'' +
                ", operator='" + operator + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", company='" + company + '\'' +
                ", type='" + type + '\'' +
                ", address='" + address + '\'' +
                ", website='" + website + '\'' +
                ", code='" + code + '\'' +
                ", img_path='" + img_path + '\'' +
                ", checkId='" + checkId + '\'' +
                ", status='" + status  +
                '}';
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIdentityId() {
        return identityId;
    }

    public void setIdentityId(int identityId) {
        this.identityId = identityId;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getCheckId() {
        return checkId;
    }

    public void setCheckId(String checkId) {
        this.checkId = checkId;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSupplement() {
        return supplement;
    }

    public void setSupplement(String supplement) {
        this.supplement = supplement;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }


}
