package com.service;

import com.pojo.detail;
public interface DetailService {
    void addDetail(detail detail);
    void updateDetail(detail detail);
    detail queryDetailByUserId(int userId);

}
