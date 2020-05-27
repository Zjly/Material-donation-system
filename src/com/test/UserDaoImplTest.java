package com.test;

import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.pojo.User;
import org.junit.Test;

public class UserDaoImplTest {
    UserDao userDao = new UserDaoImpl();
    @Test
    public void queryUserByUsername() {
        System.out.println(userDao.queryUserByUsername("donatedUser"));
    }
    @Test
    public void queryUserByNickname() {
        System.out.println(userDao.queryUserByNickname("高贵的管理员"));
    }
    @Test
    public void queryUserByUsernameAndPassword() {
        System.out.println(userDao.queryUserByUsernameAndPassword("donatedUser","admin"));
    }

    @Test
    public void addUser() {
        User nUser = new User(null,"manager","manager","高贵的管理员");
        User dUser = new User(null,"normalAdmin","admin","普通用户");
        userDao.addUser(nUser);
        userDao.addUser(dUser);
    }

    @Test
    public void updateUser() {
        User user = userDao.queryUserByNickname("普通用户");
        System.out.println(user);
        user.setStatus(-2);
        user.setCheckId(System.currentTimeMillis()+"");
        System.out.println(user);
        userDao.updateUser(user);
    }

    @Test
    public void changeUserType() {
        userDao.changeUserType(2,User.MANAGER);
        userDao.changeUserType(4,User.DONATED_USER);
    }
}