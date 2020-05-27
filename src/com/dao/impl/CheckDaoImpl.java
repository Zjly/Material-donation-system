package com.dao.impl;

import com.dao.CheckDao;
import com.pojo.Check;

import java.util.List;

public class CheckDaoImpl extends BaseDao implements CheckDao {

    @Override
    public int addCheck(Check check) {
        String sql = "insert into DonatingPlatForm..t_check (Id,name,title,supplement,operator,phone,email,company,type,address,website,code,img_path,checkId,status) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int update = update(sql,check.getId(),check.getName(),check.getTitle(),check.getSupplement(),check.getOperator(),check.getPhone(),check.getEmail()
        ,check.getCompany(),check.getType(),check.getAddress(),check.getWebsite(),check.getCode(),check.getImg_path(),check.getCheckId(),check.getStatus());
        return update;
    }

    @Override
    public int deleteCheck(Integer id) {
        String sql = "delete from DonatingPlatForm..t_check where id = ?";
        return update(sql, id);
    }

    @Override
    public int updateCheckStatus(Integer id, int status) {
        String sql = "update DonatingPlatForm..t_check set status = ? where identityId = ?";
        return update(sql,status,id);
    }

    @Override
    public Check queryCheckById(Integer id) {
        String sql = "select Id,name,title,supplement,operator,phone,email,company,type,address,website,code,img_path,checkId from DonatingPlatForm..t_check where identityId = ?";
        return queryForOne(Check.class,sql,id);
    }

    @Override
    public Check queryCheckByCheckId(String checkId) {
        String sql = "select Id,name,title,supplement,operator,phone,email,company,type,address,website,code,img_path,checkId from DonatingPlatForm..t_check where checkId = ?";
        return queryForOne(Check.class,sql,checkId);
    }

    @Override
    public Integer queryForPageTotalCountByStatus(int status) {
        String sql = "select count(*) from DonatingPlatForm..t_check where status = ?";
        Number count = (Number) queryForSingleValue(sql,status);
        return count.intValue();
    }

    @Override
    public List<Check> queryChecksByStatus(int begin, int pageSize,int status) {
        String sql = "select top "+pageSize + " Id,name,title,supplement,operator,phone,email,company,type,address,website,code,img_path,checkId,status from (select * from DonatingPlatForm..t_check where status = "+status+") TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_check where status = "+status+") TCG)";
        return queryForList(Check.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from DonatingPlatForm..t_check";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Check> queryChecks(int begin, int pageSize) {
        String sql = "select top "+pageSize + " * from DonatingPlatForm..t_check where id not in (select top "+begin+" id from DonatingPlatForm..t_check)";
        return queryForList(Check.class,sql);
    }

}
