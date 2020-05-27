package com.test;

import com.dao.CheckDao;
import com.dao.impl.CheckDaoImpl;
import com.pojo.Check;
import org.junit.Test;

import static org.junit.Assert.*;

public class CheckDaoImplTest {
    CheckDao checkDao = new CheckDaoImpl();
    @Test
    public void addCheck() {

    }

    @Test
    public void deleteCheck() {
        checkDao.deleteCheck(3);
    }
    @Test
    public void queryCheck() {
        System.out.println(checkDao.queryCheckById(4));
    }

}