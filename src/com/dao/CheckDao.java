package com.dao;

import com.pojo.Check;

import java.util.List;

public interface CheckDao {
    int addCheck(Check check);

    int deleteCheck(Integer id);

    int updateCheckStatus(Integer id, int status);

    Check queryCheckById(Integer id);

    List<Check> queryChecks(int begin, int pageSize);

    Check queryCheckByCheckId(String checkId);
    Integer queryForPageTotalCount();

    Integer queryForPageTotalCountByStatus(int status);

    List<Check> queryChecksByStatus(int begin, int pageSize, int status);
}
