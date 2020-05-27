package com.service.impl;

import com.dao.NeedDao;
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.pojo.Page;
import com.pojo.User;
import com.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();

    private static int setNeedPageDetail(Page<User> page, int pageTotalCount, int pageSize, int pageNo){

        Integer pageTotal =  pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0){pageTotal++;}
        page.setPageTotal(pageTotal);
        //pageNode的set中会用到pageTotal来检查是否越界
        page.setPageNo(pageNo);
        page.setPageSize(pageSize);
        page.setPageTotalCount(pageTotalCount);
        int begin = (page.getPageNo() - 1) * pageSize;

        return begin;

    }

    @Override
    public void registUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
        if(userDao.queryUserByUsername(username) == null){
            return false;
        }
        return true;
    }

    @Override
    public User getUser(int id) {
        return userDao.getUser(id);
    }

    @Override
    public boolean existsNickname(String nickname) {
        if(userDao.queryUserByNickname(nickname) == null){
            return false;
        }
        return true;
    }

    @Override
    public void updateUser(User loginUser) {
        userDao.updateUser(loginUser);
    }

    @Override
    public Page<User> pageToCheck(int pageNo, int pageSize) {
        Page<User> page = new Page<User>();

        Integer pageTotalCount = userDao.queryForPageTotalCountCheckUsers();
        int begin = this.setNeedPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<User> items = userDao.queryCheckUsers(begin,pageSize);

        page.setItems(items);
        return page;
    }

    @Override
    public void applyDonated(User user) {
        userDao.changeUserStatus(User.STATUS_AUDITING,user.getId());
        userDao.updateUser(user);
    }


    @Override
    public void approvedUser(Integer id) {
        userDao.changeUserStatus(User.STATUS_APPROVED,id);
        userDao.changeUserType(User.DONATED_USER,id);
    }

    @Override
    public void dismissUser(String dReason, Integer id) {
        userDao.changeUserStatus(User.STATUS_DISMISS,id);
        userDao.updatedReason(dReason,id);
    }
}
