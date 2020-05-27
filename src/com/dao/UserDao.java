package com.dao;

import com.pojo.User;

import java.util.List;

public interface UserDao {

    User queryUserByUsername(String usename);
    User queryUserByNickname(String nickname);
    User queryUserByUsernameAndPassword(String username,String password);
    int addUser(User user);
    int updateUser(User loginUser);
    int changeUserType(int userType,int userId);
    int changeUserStatus(int status,int id);
    int updatedReason(String dReason,int id);
    User getUser(int id);

    Integer queryForPageTotalCountCheckUsers();

    List<User> queryCheckUsers(int begin, int pageSize);
}
