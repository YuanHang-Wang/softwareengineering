/**
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSourceTest {
    public static void main(String[] args) {
        try {
            //ComboPooledDataSource dataSource = new ComboPooledDataSource();
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/schema_child?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT";
            String user = "root";
            String password = "20000205";
            Connection connect = DriverManager.getConnection(url,user,password);
            System.out.println(connect);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



}
*/