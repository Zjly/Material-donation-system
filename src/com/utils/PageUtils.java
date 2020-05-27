package com.utils;

import com.pojo.Page;

public class PageUtils {

    public static <T>int setPageDetail(Page<T> page, int pageTotalCount, int pageSize, int pageNo){
        Integer pageTotal =  pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0){pageTotal++;}
        page.setPageTotal(pageTotal);
        //pageNode的set中会用到pageTotal来检查是否越界
        page.setPageNo(pageNo);
        page.setPageSize(pageSize);
        page.setPageTotalCount(pageTotalCount);
        int begin = (page.getPageNo() - 1) * pageSize;
        return begin;
    }
}
