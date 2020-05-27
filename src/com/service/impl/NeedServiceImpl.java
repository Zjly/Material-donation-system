package com.service.impl;

import com.dao.NeedDao;
import com.dao.impl.NeedDaoImpl;
import com.pojo.Need;
import com.pojo.Page;
import com.service.NeedService;
import com.utils.PageUtils;

import java.util.List;

public class NeedServiceImpl implements NeedService {
    private NeedDao needDao = new NeedDaoImpl();

    @Override
    public void addNeed(Need need) {
        needDao.addNeed(need);
    }

    @Override
    public void deleteNeedById(Integer id) {
        needDao.deleteNeedById(id);
    }

    @Override
    public void userUpdateNeed(Need need) {
        needDao.userUpdateNeed(need);
    }

    @Override
    public void managerUpdateNeed(Need need) {
        needDao.managerUpdateNeed(need);
    }

    @Override
    public void updateNeed(Need need) {
        needDao.updateNeed(need);
    }

    @Override
    public Need queryNeedById(Integer id) {
        return needDao.queryNeedById(id);
    }

    @Override
    public List<Need> queryNeeds() {
        return needDao.queryNeeds();
    }


    @Override
    public Page<Need> page(int pageNo, int pageSize) {
        Page<Need> page = new Page<Need>();

        Integer pageTotalCount = needDao.queryForPageTotalCount();
        int begin = PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Need> items = needDao.queryForPageItems(begin,pageSize);

        page.setItems(items);
        return page;
    }


    @Override
    public Page<Need> searchNeedsByFlag(int pageNo, int pageSize,int flag, String searchString) {
        Page<Need> page = new Page<Need>();
        Integer pageTotalCount = needDao.queryForPageTotalCountByFlagAndSearchString(flag,searchString);
        int begin = PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Need> items = needDao.queryNeedsByFlagAndSearchString(begin,pageSize,flag,searchString);

        page.setItems(items);
        return page;
    }

    @Override
    public Page<Need> pageByFlag(int pageNo, int pageSize, int flag) {
        Page<Need> page = new Page<Need>();
        Integer pageTotalCount = needDao.queryForPageTotalCountByFlag(flag);
        int begin = PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Need> items = needDao.queryNeedsByFlag(begin,pageSize,flag);

        page.setItems(items);
        return page;
    }

    @Override
    public Page<Need> pageByStatus(int pageNo, int pageSize, int status) {
        Page<Need> page = new Page<Need>();
        Integer pageTotalCount = needDao.queryForPageTotalCountByStatus(status);
        int begin =  PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Need> items = needDao.queryForPageItemsByStatus(begin,pageSize,status);

        page.setItems(items);
        return page;
    }

    @Override
    public Page<Need> showMyNeedsByStatus(int pageNo, int pageSize, int status, int flag, int id) {
        Page<Need> page = new Page<Need>();
        Integer pageTotalCount = needDao.queryForPageTotalCountByStatusAndId(status,flag,id);
        int begin =  PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Need> items = needDao.queryForPageItemsByStatusAndId(begin,pageSize,status,flag,id);

        page.setItems(items);
        return page;
    }

    @Override
    public void applyDonated(Need need) {
        needDao.changeNeedStatus(Need.STATUS_AUDITING,need.getId());
        needDao.managerUpdateNeed(need);
    }

    @Override
    public void approvedNeed(Integer id) {
        needDao.changeNeedStatus(Need.STATUS_APPROVED,id);
    }

    @Override
    public void dismissNeed(String dReason, Integer id) {
        needDao.changeNeedStatus(Need.STATUS_DISMISS,id);
        needDao.updateNeeddReason(dReason,id);

    }

}
