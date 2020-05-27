package com.dao;

import com.pojo.Need;

import java.util.List;

public interface NeedDao {

    int addNeed(Need need);

    int deleteNeedById(Integer id);

    int userUpdateNeed(Need need);

    int managerUpdateNeed(Need need);

    int changeNeedStatus(int status,int id);

    int updateNeeddReason(String dReason,int id);

    int updateNeed(Need need);

    Need queryNeedById(Integer id);

    //不太用的上的，可能细节上有问题

    List<Need> queryNeeds();

    List<Need> queryNeedsByUserId(int userId);

    Integer queryForPageTotalCount();

    List<Need> queryForPageItems(int begin, int pageSize);

    Integer queryForPageTotalCountBySearchString(String searchString);

    List<Need> queryNeedsBySearchString(int begin, int pageSize, String searchString);

    //主要用下面这几个吧 通过flag和status来限制显示,显示已经通过审核的订单，用于主界面
    Integer queryForPageTotalCountByFlagAndSearchString(int flag, String searchString);

    List<Need> queryNeedsByFlagAndSearchString(int begin, int pageSize,int flag ,String searchString);

    Integer queryForPageTotalCountByFlag(int flag);

    List<Need> queryNeedsByFlag(int begin, int pageSize, int flag);

    //根据审核状态查询"需求"
    Integer queryForPageTotalCountByStatus(int status);

    List<Need> queryForPageItemsByStatus(int begin, int pageSize,int status);


    Integer queryForPageTotalCountByStatusAndId(int status, int flag,int id);

    List<Need> queryForPageItemsByStatusAndId(int begin, int pageSize, int status, int flag, int id);
}
