package com.test;

import com.dao.NeedDao;
import com.dao.impl.NeedDaoImpl;
import com.pojo.Need;
import org.junit.Test;

import static org.junit.Assert.*;

public class NeedDaoImplTest {

    NeedDao needDao = new NeedDaoImpl();
    @Test
    public void addNeed() {
        Need need = new Need();
        Need newNeed = new Need();
        needDao.addNeed(need);
    }

    @Test
    public void deleteNeedById() {
        needDao.deleteNeedById(2);
    }

    @Test
    public void userUpdateNeed() {
        Need need = new Need();
        needDao.userUpdateNeed(need);
    }

    @Test
    public void managerUpdateNeed() {
        Need need = new Need();
        needDao.managerUpdateNeed(need);
    }

    @Test
    public void changeNeedStatus() {
        needDao.changeNeedStatus(Need.STATUS_APPROVED,3);
    }

    @Test
    public void queryNeedById() {
        System.out.println(needDao.queryNeedById(1));
    }

    @Test
    public void queryNeeds() {
        for (Need queryNeed : needDao.queryNeeds()) {
            System.out.println(queryNeed);
            System.out.println(queryNeed.getUserId());
        }
    }

    @Test
    public void queryNeedsByUserId() {
        for (Need need : needDao.queryNeedsByUserId(4)) {
            System.out.println(need);
        }
    }

    @Test
    public void queryForPageTotalCount() {
        System.out.println(needDao.queryForPageTotalCount());
    }

    @Test
    public void queryForPageItems() {
        for (Need queryForPageItem : needDao.queryForPageItems(0, 5)) {
            System.out.println(queryForPageItem);
        }

    }

    @Test
    public void queryNeedsBySearchString() {
        for (Need queryForPageItem : needDao.queryNeedsBySearchString(0, 5,"医用")) {
            System.out.println(queryForPageItem);
        }
    }
    @Test
    public void queryForPageTotalCountBySearchString() {
        System.out.println(needDao.queryForPageTotalCountBySearchString("口罩"));
    }
    @Test
    public void queryForPageTotalCountByFlagAndSearchString() {
        System.out.println(needDao.queryForPageTotalCountByFlagAndSearchString(0,"口罩"));
    }
    @Test
    public void queryNeedsByFlagAndSearchString() {
        for (Need queryForPageItem : needDao.queryNeedsByFlagAndSearchString(0, 5,0,"口罩")) {
            System.out.println(queryForPageItem);
        }
    }
    @Test
    public void queryForPageTotalCountByFlag() {
//        System.out.println(needDao.queryForPageTotalCountByFlag(Need.FLAG_APPLY));
    }
    @Test
    public void queryNeedsByFlag() {
        for (Need queryForPageItem : needDao.queryNeedsByFlag(0, 5,0)) {
            System.out.println(queryForPageItem);
        }
    }
    @Test
    public void queryForPageTotalCountByStatus() {
        System.out.println(needDao.queryForPageTotalCountByStatus(0));
    }
    @Test
    public void queryNeedsByStatus() {
        for (Need queryForPageItem : needDao.queryForPageItemsByStatus(0, 5,1)) {
            System.out.println(queryForPageItem);
        }
    }
    @Test
    public void queryForPageTotalCountByStatusAndId() {
        System.out.println(needDao.queryForPageTotalCountByStatusAndId(1,0,2));
    }
    @Test
    public void queryNeedsByStatusAndId() {
        for (Need queryForPageItem : needDao.queryForPageItemsByStatusAndId(0, 5,1,0,2)) {
            System.out.println(queryForPageItem);
        }
    }
}