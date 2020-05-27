package com.dao.impl;

import com.dao.UserDao;
import com.pojo.Order;
import com.pojo.User;

import java.util.List;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User queryUserByUsername(String username) {
        String sql = "select id,username,password,nickname from DonatingPlatForm..t_user where username = ?";
        return queryForOne(User.class,sql,username);
    }

    @Override
    public User queryUserByNickname(String nickname) {
        String sql = "select id,username,password,nickname from DonatingPlatForm..t_user where nickname = ?";
        return queryForOne(User.class,sql,nickname);
    }


    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select id,username,password,email,type,phone,nickname,checkId,dReason,status from DonatingPlatForm..t_user where username = ? and password = ?";
        return queryForOne(User.class,sql,username,password);
    }

    @Override
    public int addUser(User user) {
        String sql = "insert into DonatingPlatForm..t_user (username,password,email,type,phone,nickname) values (?,?,?,?,?,?)";
        return update(sql,user.getUsername(),user.getPassword(),user.getEmail(),user.getType(),user.getPhone(),user.getNickname());
    }

    //不太确定update要怎么变
    @Override
    public int updateUser(User loginUser) {
        String sql = "update DonatingPlatForm..t_user set username=?, password=?, email=?, type=?, phone=?, nickname=?, checkId=?, status=? where id = ?";
        return update(sql,loginUser.getUsername(),loginUser.getPassword(),loginUser.getEmail(),loginUser.getType(),loginUser.getPhone(),loginUser.getNickname(),loginUser.getCheckId(),loginUser.getStatus(),loginUser.getId());
    }

    @Override
    public int changeUserType(int userType,int userId) {
        String sql = "update DonatingPlatForm..t_user set type=? where id = ?";
        return update(sql,userType,userId);
    }

    @Override
    public int changeUserStatus(int status, int id) {
        String sql = "update DonatingPlatForm..t_user set status=? where id = ?";
        return update(sql,status,id);
    }

    @Override
    public int updatedReason(String dReason, int id) {
        String sql = "update DonatingPlatForm..t_user set dReason=? where id = ?";
        return update(sql,dReason,id);
    }

    @Override
    public User getUser(int id) {
        String sql = "select * from DonatingPlatForm..t_user where id = ?";
        return queryForOne(User.class,sql,id);
    }

    @Override
    public Integer queryForPageTotalCountCheckUsers() {
        String sql = "select count(*) from DonatingPlatForm..t_user where status = ?";
        Number count = (Number) queryForSingleValue(sql,User.STATUS_AUDITING);
        return count.intValue();
    }

    @Override
    public List<User> queryCheckUsers(int begin, int pageSize) {
        String sql = "select top "+pageSize + " id,username,email,type,phone,nickname,checkId from (select * from DonatingPlatForm..t_user where status = "+User.STATUS_AUDITING+" ) TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_user where status = "+User.STATUS_AUDITING+" ) TCG)";
        return queryForList(User.class,sql);
    }
}
