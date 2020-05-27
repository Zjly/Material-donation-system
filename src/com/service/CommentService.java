package com.service;

import com.pojo.Comment;
import com.pojo.Page;

public interface CommentService {
    void addComment(Comment comm);
    void deleteComment(int id);
    Page<Comment> pageCommentsByNeedId(int pageNo, int pageSize, int needId);
}
