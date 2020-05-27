package com.pojo;

public class User {
    public static final int STATUS_APPROVED = 1; //通过
    public static final int STATUS_AUDITING = 0; //审核中
    public static final int STATUS_DISMISS = 2; //驳回
    public static final int NORMAL_USER = 0;
    public static final int DONATED_USER = 1;
    public static final int MANAGER = 2;
    private Integer id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Integer type = NORMAL_USER; //用户种类
    private String nickname;      //昵称
    private String checkId;    //checkId
    private Integer status = 0;
    private String dReason;   //驳回理由

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(Integer id, String username, String password, String nickname) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.nickname = nickname;
    }

    public User(Integer id, String username, String password, String email, String phone, Integer type, String nickname, String checkId, Integer status, String dReason) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.type = type;
        this.nickname = nickname;
        this.checkId = checkId;
        this.status = status;
        this.dReason = dReason;
    }

    public User() {
    }
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
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

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", type=" + type +
                ", nickname='" + nickname + '\'' +
                ", checkId=" + checkId +
                ", status=" + status +
                ", dReason='" + dReason + '\'' +
                '}';
    }
}
