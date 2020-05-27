package com.service.impl;

import com.dao.CheckDao;
import com.dao.impl.CheckDaoImpl;
import com.pojo.Check;
import com.pojo.Page;
import com.service.CheckService;
import com.utils.PageUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CheckServiceImpl implements CheckService {
    CheckDao checkDao = new CheckDaoImpl();
    @Override
    public void deleteCheckById(Integer id) {
        checkDao.deleteCheck(id);
    }

    @Override
    public Page<Check> PageChecks(int pageNo, int pageSize) {
        Page<Check> page = new Page<Check>();

        Integer pageTotalCount = checkDao.queryForPageTotalCount();
        int begin =  PageUtils.setPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Check> items = checkDao.queryChecks(begin,pageSize);

        page.setItems(items);
        return page;
    }

    @Override
    public void updateStatus(Integer id, int status) {
        checkDao.updateCheckStatus(id,status);
    }

    @Override
    public Check apply(List<FileItem> fileList, int id,String path) {
        Map<String,String> map=new HashMap<String,String>();
        String name="";
        Check check = new Check(System.currentTimeMillis()+""+id);
        try {
            List<FileItem> list=fileList;
            for (FileItem fileItem : list) {
                if(fileItem.isFormField()){
                    //普通项,username,aaa
                    //解决普通属性的乱码
                    map.put(fileItem.getFieldName(),fileItem.getString("utf-8"));//
                }else{
                    //上传项
                    InputStream inputStream = fileItem.getInputStream();
                    name = System.currentTimeMillis()+""+id+".jpg";//获取上传的文件名
                    File file= new File(path,name);
                    //服务端建立一个空文件
                    if(!file.exists()){
                        file.createNewFile();
                    }
                    //文件存不存在都会执行，就会导致文件重名（重复上传）覆盖问题
                    OutputStream out = new FileOutputStream(file);
                    //写入输出流
                    IOUtils.copy(inputStream, out);
                    out.close();
                    inputStream.close();
                    map.put(fileItem.getFieldName(), name);
                }
            }
            BeanUtils.populate(check, map);
        } catch (IllegalAccessException | InvocationTargetException | IOException e) {
            e.printStackTrace();
        }
        return check;
    }

    @Override
    public Check getCheck(Integer id) {
        return checkDao.queryCheckById(id);
    }

    @Override
    public Check getCheck(String checkId) {
        return checkDao.queryCheckByCheckId(checkId);
    }

    @Override
    public void addCheck(Check check) {
        checkDao.addCheck(check);
    }
}
