package com.pojo;

import java.util.Date;

public class Comment {
    private Integer id;
    private String comment;
    private int userId;
    private String username;
    private int needId;
    private Date createTime;

    public Comment() {
    }

    public Comment(Integer id, String comment, int userId, String username, int needId, Date createTime) {
        this.id = id;
        this.comment = comment;
        this.userId = userId;
        this.username = username;
        this.needId = needId;
        this.createTime = createTime;
    }


    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", comment='" + comment + '\'' +
                ", userId=" + userId +
                ", username='" + username + '\'' +
                ", needId=" + needId +
                ", createTime=" + createTime +
                '}';
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getNeedId() {
        return needId;
    }

    public void setNeedId(int needId) {
        this.needId = needId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
