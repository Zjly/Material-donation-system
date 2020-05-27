package com.dao.impl;


import com.dao.CommentDao;
import com.pojo.Comment;

import java.util.List;

public class CommentDaoImpl extends BaseDao implements CommentDao {
    @Override
    public int addComment(Comment comm) {
        String sql = "insert into DonatingPlatForm..t_comment (comment,userId,username,needId,createTime) values (?,?,?,?,?)";
        return update(sql,comm.getComment(),comm.getUserId(),comm.getUsername(),comm.getNeedId(),comm.getCreateTime());
    }

    @Override
    public int deleteComment(int id) {
        String sql = "delete from DonatingPlatForm..t_comment where id = ?";
        return update(sql, id);
    }

    @Override
    public Integer queryForPageTotalCountByNeedId(int needId) {
        String sql = "select count(*) from DonatingPlatForm..t_comment where needId = ?";
        Number count = (Number) queryForSingleValue(sql,needId);
        return count.intValue();
    }

    @Override
    public List<Comment> queryCommentsByNeedId(int begin, int pageSize, int needId) {
        String sql = "select top "+pageSize + " * from (select * from DonatingPlatForm..t_comment where needId = "+needId+") TCG where id not in (select top "+begin+" id from(select * from DonatingPlatForm..t_comment where needId = "+needId+") TCG)";
        return queryForList(Comment.class,sql);
    }
}
