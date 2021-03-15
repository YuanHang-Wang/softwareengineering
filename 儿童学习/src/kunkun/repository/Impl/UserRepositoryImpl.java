package kunkun.repository.Impl;

import kunkun.entity.User;
import kunkun.repository.UserRepository;
import kunkun.utils.JDBCTools;

import java.sql.*;

public class UserRepositoryImpl implements UserRepository {

    @Override
    public User login(String username, String password) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from user where username = ? and password = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        User user = null;
        try {
            statement= connection.prepareStatement(sql);
            statement.setString(1,username);
            statement.setString(2,password);
            resultSet = statement.executeQuery();
            if(resultSet.next())
            {
                user = new User(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3));
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally  {
            JDBCTools.release(connection,statement,resultSet);
        }

        return user;
    }
}
