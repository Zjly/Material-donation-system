package com.dao;

import com.pojo.Comment;

import java.util.List;

public interface CommentDao {
    int addComment(Comment comm);
    int deleteComment(int id);
    Integer queryForPageTotalCountByNeedId(int needId);
    List<Comment> queryCommentsByNeedId(int begin, int pageSize, int needId);
}
