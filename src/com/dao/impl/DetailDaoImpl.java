package com.dao.impl;

import com.dao.DetailDao;

import com.pojo.detail;

public class DetailDaoImpl extends BaseDao implements DetailDao {

    @Override
    public int addDetail(detail detail) {
        String sql = "insert into DonatingPlatForm..t_detail (Id, name, time, email, phone, address, introduction, details, identified,img_path) values (?,?,?,?,?,?,?,?,?,?)";
        return update(sql,detail.getId(),detail.getName(),detail.getTime(),detail.getEmail(),detail.getPhone(),detail.getAddress(),detail.getIntroduction(),detail.getDetails(),detail.getIdentified(),detail.getImg_path());
    }

    @Override
    public int updateDetail(detail detail) {
        String sql = "update DonatingPlatForm..t_detail set Id=?, name=?, time=?, email=?, phone=?, address=?, img_path=?, introduction=?, details=?, identified=? where Id = ?";
        return update(sql,detail.getId(),detail.getName(),detail.getTime(),detail.getEmail(),detail.getPhone(),detail.getAddress(),detail.getImg_path(),detail.getIntroduction(),detail.getDetails(),detail.getIdentified(),detail.getId());
    }

    @Override
    public detail queryDetailByUserId(Integer userId) {
        String sql = "select * from DonatingPlatForm..t_detail where id = "+userId;
        return queryForOne(detail.class, sql);
    }
}
