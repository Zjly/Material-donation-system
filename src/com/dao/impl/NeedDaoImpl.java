package com.dao.impl;

import com.dao.NeedDao;
import com.pojo.Need;

import java.util.List;

public class NeedDaoImpl extends BaseDao implements NeedDao {
    @Override
    public int addNeed(Need need) {
        String sql = "insert into DonatingPlatForm..t_need (userId,status,count,stock,flag,name,time,img_path,describe,promoter,donatedTimes,theme) values (?,?,?,?,?,?,?,?,?,?,?,?)";
        int update = update(sql,need.getUserId(),need.getStatus(),need.getCount(),need.getStock(),need.getFlag(),need.getName(),need.getTime(),need.getImgPath(),need.getDescribe(),need.getPromoter(),need.getDonatedTimes(),need.getTheme());
        return update;
    }

    @Override
    public int deleteNeedById(Integer id) {
        String sql = "delete from DonatingPlatForm..t_need where id = ?";
        return update(sql, id);
    }

    @Override
    public int userUpdateNeed(Need need) {
        String sql = "update DonatingPlatForm..t_need set name=?, img_path=?, describe=?, promoter=? where id = ?";
        return update(sql,need.getName(),need.getImgPath(),need.getDescribe(),need.getPromoter(),need.getId());
    }

    @Override
    public int managerUpdateNeed(Need need) {
        String sql = "update DonatingPlatForm..t_need set status=?, count=?, stock=?, name=?, img_path=?, describe=?, promoter=?, checkId=? where id = ?";
        return update(sql,need.getStatus(),need.getCount(),need.getStock(),need.getName(),need.getImgPath(),need.getDescribe(),need.getPromoter(),need.getCheckId(),need.getId());
    }

    @Override
    public int changeNeedStatus(int status,int id) {
        String sql = "update DonatingPlatForm..t_need set status=? where id = ?";
        return update(sql,status,id);
    }

    @Override
    public int updateNeed(Need need) {
        String sql = "update DonatingPlatForm..t_need set userId=?, status=?, count=?, stock=?, flag=?, name=?, img_path=?, describe=?, promoter=?, donatedTimes=?, checkId=?, theme=? where id = ?";
        return update(sql,need.getUserId(),need.getStatus(),need.getCount(),need.getStock(),need.getFlag(),need.getName(),need.getImgPath(),need.getDescribe(),need.getPromoter(),need.getDonatedTimes(),need.getCheckId(),need.getTheme(),need.getId());
    }

    @Override
    public int updateNeeddReason(String dReason, int id) {
        String sql = "update DonatingPlatForm..t_need set dReason=? where id = ?";
        return update(sql,dReason,id);
    }

    @Override
    public Need queryNeedById(Integer id) {
        String sql = "select * from DonatingPlatForm..t_need where id = ?";
        return queryForOne(Need.class,sql,id);
    }

    //不太用的上的，可能细节上有问题
    @Override
    public List<Need> queryNeeds() {
        String sql = "select id,userId,status,count,stock,flag,name,img_path,describe from DonatingPlatForm..t_need";
        return queryForList(Need.class, sql);
    }

    @Override
    public List<Need> queryNeedsByUserId(int userId) {
        String sql = "select id,userId,status,count,stock,flag,name,img_path,describe from DonatingPlatForm..t_need where userId = ?";
        return queryForList(Need.class, sql,userId);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from DonatingPlatForm..t_need";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Need> queryForPageItems(int begin, int pageSize) {
        String sql =  "select top "+ pageSize +" id,userId,promoter,theme,status,count,stock,flag,name,time,img_path,describe,donatedTimes from DonatingPlatForm..t_need where id not in (select top " + begin+ " id from DonatingPlatForm..t_need) ";
        return queryForList(Need.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountBySearchString(String searchString) {
        String sql = "select count(*) from DonatingPlatForm..t_need where name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or describe ='"+searchString+"' or CHARINDEX('"+searchString+"',describe) >0";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Need> queryNeedsBySearchString(int begin, int pageSize, String searchString) {
        String sql = "select top "+pageSize + " id,userId,status,count,stock,flag,name,img_path,describe from (select * from DonatingPlatForm..t_need where name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or describe ='"+searchString+"' or CHARINDEX('"+searchString+"',describe) >0 ) TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_need where name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or describe ='"+searchString+"' or CHARINDEX('"+searchString+"',describe) >0) TCG)";
        return queryForList(Need.class,sql);
    }

    //主要用下面这几个吧 通过flag和status来限制显示,显示已经通过审核的订单，用于主界面
    @Override
    public Integer queryForPageTotalCountByFlagAndSearchString(int flag, String searchString) {
        String sql = "select count(*) from DonatingPlatForm..t_need where status = ? and flag = ? and (name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or describe ='"+searchString+"' or CHARINDEX('"+searchString+"',describe) >0 or theme ='"+searchString+"' or CHARINDEX('"+searchString+"',theme) >0 or promoter ='"+searchString+"' or CHARINDEX('"+searchString+"',promoter) >0)";
        Number count = (Number) queryForSingleValue(sql,Need.STATUS_APPROVED,flag);
        return count.intValue();
    }

    @Override
    public List<Need> queryNeedsByFlagAndSearchString(int begin, int pageSize, int flag, String searchString) {
        String sql = "select top "+pageSize + " id,userId,status,count,stock,flag,name,img_path,describe,promoter,donatedTimes,theme from (select * from DonatingPlatForm..t_need where status = "+Need.STATUS_APPROVED+" and flag = "+flag+" and (name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or describe ='"+searchString+"' or CHARINDEX('"+searchString+"',describe) >0 or theme ='"+searchString+"' or CHARINDEX('"+searchString+"',theme) >0 or promoter ='"+searchString+"' or CHARINDEX('"+searchString+"',promoter) >0) ) TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_need where status = "+Need.STATUS_APPROVED+" and flag = "+flag+" and (name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or describe ='"+searchString+"' or CHARINDEX('"+searchString+"',describe) >0 or theme ='"+searchString+"' or CHARINDEX('"+searchString+"',theme) >0 or promoter ='"+searchString+"' or CHARINDEX('"+searchString+"',promoter) >0)) TCG)";
        return queryForList(Need.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountByFlag(int flag) {
        String sql = "select count(*) from DonatingPlatForm..t_need where flag = ? and status = ?";
        Number count = (Number) queryForSingleValue(sql,flag,Need.STATUS_APPROVED);
        return count.intValue();
    }

    @Override
    public List<Need> queryNeedsByFlag(int begin, int pageSize, int flag) {
        String sql = "select top "+pageSize + " id,userId,status,count,stock,flag,name,time,img_path,describe,promoter,donatedTimes,theme from (select * from DonatingPlatForm..t_need where flag = "+flag+" and status = "+Need.STATUS_APPROVED+" ) TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_need where flag = "+flag+" and status = "+Need.STATUS_APPROVED+" ) TCG)";
        return queryForList(Need.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountByStatus(int status) {
        String sql = "select count(*) from DonatingPlatForm..t_need where status = ?";
        Number count = (Number) queryForSingleValue(sql,status);
        return count.intValue();
    }

    @Override
    public List<Need> queryForPageItemsByStatus(int begin, int pageSize, int status) {
        String sql = "select top "+pageSize + " id,userId,status,count,stock,flag,name,img_path,describe,promoter,donatedTimes,theme from (select * from DonatingPlatForm..t_need where status = "+status+" ) TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_need where status = "+status+" ) TCG)";
        return queryForList(Need.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountByStatusAndId(int status, int flag,int id) {
        String sql = "select count(*) from DonatingPlatForm..t_need where status = ? and flag = ? and userId = ?";
        Number count = (Number) queryForSingleValue(sql,status,flag,id);
        return count.intValue();
    }

    @Override
    public List<Need> queryForPageItemsByStatusAndId(int begin, int pageSize, int status, int flag,int id) {
        String sql = "select top "+pageSize + " id,userId,status,count,stock,flag,name,img_path,describe,promoter,checkId,dReason,donatedTimes,theme from (select * from DonatingPlatForm..t_need where status = "+status+" and userId = "+id+" and flag = "+flag+" ) TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_need where status = "+status+" and userId = "+id+" ) TCG)";
        return queryForList(Need.class,sql);
    }

}
