package com.service.impl;

import com.dao.CommentDao;
import com.dao.impl.CommentDaoImpl;
import com.pojo.Comment;
import com.pojo.Page;
import com.service.CommentService;
import com.utils.PageUtils;

import java.util.List;

public class CommentServiceImpl implements CommentService {
    CommentDao commentDao = new CommentDaoImpl();
    @Override
    public void addComment(Comment comm) {
        commentDao.addComment(comm);
    }

    @Override
    public void deleteComment(int id) {
        commentDao.deleteComment(id);
    }

    @Override
    public Page<Comment> pageCommentsByNeedId(int pageNo, int pageSize, int needId) {
        Page<Comment> page = new Page<Comment>();

        Integer pageTotalCount = commentDao.queryForPageTotalCountByNeedId(needId);
        int begin =  PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Comment> items = commentDao.queryCommentsByNeedId(begin,pageSize,needId);

        page.setItems(items);
        return page;
    }
}
