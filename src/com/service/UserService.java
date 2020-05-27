package com.service;

import com.pojo.Page;
import com.pojo.User;

public interface UserService {
    /**
     * 注册
     *
     * @param user
     */
    void registUser(User user);

    /**
     * 登录
     *
     * @param user
     * @return 返回null登录失败，有值则登录成功
     */
    User login(User user);

    /**
     * 检查用户名是否可用
     *
     * @param username
     * @return
     */
    boolean existsUsername(String username);

    User getUser(int id);
    boolean existsNickname(String nickname);

    void updateUser(User loginUser);

    Page<User> pageToCheck(int pageNo, int pageSize);

    void applyDonated(User user);
    void approvedUser(Integer id);
    void dismissUser(String dReason,Integer id);

}
