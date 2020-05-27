package com.utils;
import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;

public class JdbcUtils {
    private static DruidDataSource dataSource;
    static {
        try {
            Properties properties = new Properties();
            InputStream inputStream = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            properties.load(inputStream);
            dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    /**
     * 获取数据库连接
     * @return
     */
    public static Connection getConnection(){
        Date date = new Date();
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            if(conn==null){
                System.out.println(date+":数据库连接失败");
                System.out.println("----------------------------------------------");
            }else {
                System.out.println(date+":数据库连接成功");
                System.out.println("----------------------------------------------");
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 关闭连接放回数据库连接池
     * @param conn
     */
    public static void close(Connection conn){
        if(conn !=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
