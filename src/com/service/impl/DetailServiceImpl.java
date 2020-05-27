package com.service.impl;

import com.dao.DetailDao;
import com.dao.impl.DetailDaoImpl;
import com.pojo.detail;
import com.service.DetailService;

public class DetailServiceImpl implements DetailService {
    private DetailDao detaildao = new DetailDaoImpl();

    @Override
    public void addDetail(detail detail) {
        detaildao.addDetail(detail);
    }

    @Override
    public void updateDetail(detail detail) {
        detaildao.updateDetail(detail);
    }

    @Override
    public detail queryDetailByUserId(int userId) {
        return detaildao.queryDetailByUserId(userId);
    }
}
