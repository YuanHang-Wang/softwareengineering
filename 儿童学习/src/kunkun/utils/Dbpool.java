package kunkun.utils;


import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class Dbpool {
    static DataSource dataSource;
    static
   {
       dataSource = new ComboPooledDataSource();
    }
    public static Connection getConnectionFromPool(){
        try{
            Connection connection = dataSource.getConnection();
            return connection;
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }
}