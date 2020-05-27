package com.service;

import com.pojo.Check;
import com.pojo.Page;
import org.apache.commons.fileupload.FileItem;

import java.util.List;

public interface CheckService {
    void deleteCheckById(Integer id);
//    Page<Check> PageChecks(int pageNo, int pageSize, int status);
    Check apply(List<FileItem> fileList, int id, String path);
    Check getCheck(Integer id);
    Check getCheck(String checkId);
    void addCheck(Check check);
    Page<Check> PageChecks(int pageNo, int pageSize);
    void updateStatus(Integer id, int status);
}
