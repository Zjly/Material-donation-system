package com.dao;

import com.pojo.detail;

public interface DetailDao {
    public int addDetail(detail detail);
    public int updateDetail(detail detail);
    public detail queryDetailByUserId(Integer userId);
}
