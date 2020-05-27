package com.utils;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.List;

public class ImageUtils {
    //保存路径
    //public static final String path = "C:\\Users\\Administrator\\Desktop\\servlet\\web\\img3";
    /**
     * 帮助上传图片的工具类，仅能用于“只上传图片”的情况
     * @param req
     * @param id int，一般为对应的id，用于命名
     * @return 保存图片，并返回保存图片的姓名
     */
    public static String upLoadImage(HttpServletRequest req, int id,String path){
        DiskFileItemFactory fac=new DiskFileItemFactory();
        ServletFileUpload upload= new ServletFileUpload(fac);
        upload.setHeaderEncoding("utf-8");//解决上传文件名的乱码
        String name="";
        try {
            List<FileItem> list=upload.parseRequest(req);
            for (FileItem fileItem : list) {
                if(!fileItem.isFormField()){
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
                }
            }
        } catch (IOException | FileUploadException e) {
            e.printStackTrace();
        }
        return name;
    }
}
