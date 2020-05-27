package com.service;

import com.pojo.Check;
import com.pojo.Need;
import com.pojo.Page;

import java.util.List;

public interface NeedService {
    void addNeed(Need need);
    void deleteNeedById(Integer id);
    void userUpdateNeed(Need need);
    void managerUpdateNeed(Need need);
    Need queryNeedById(Integer id);
    List<Need> queryNeeds();
    Page<Need> page(int pageNo, int pageSize);
    Page<Need> searchNeedsByFlag(int pageNo, int pageSize,int flag ,String searchString);
    Page<Need> pageByFlag(int pageNo, int pageSize, int flag);
    Page<Need> pageByStatus(int pageNo, int pageSize, int status);

    Page<Need> showMyNeedsByStatus(int pageNo,int pageSize, int status,int flag,int id);

    void applyDonated(Need need);
    void approvedNeed(Integer id);
    void dismissNeed(String dReason,Integer id);
    void updateNeed(Need need);
}
