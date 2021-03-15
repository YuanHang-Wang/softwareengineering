package kunkun.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kunkun.entity.User;
import kunkun.service.Impl.LoginServiceImpl;
import kunkun.service.Impl.RegisterServiceImpl;
import kunkun.service.LoginService;
import kunkun.service.RegisterService;
import kunkun.utils.Dbpool;
import kunkun.utils.JDBCTools;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private RegisterService registerService = new RegisterServiceImpl();
    static Connection conn = Dbpool.getConnectionFromPool();
    static PreparedStatement pstmt = null;
    private static ResultSet rs = null;

    public RegisterServlet()
    {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String password = req.getParameter("password");
        String sex = req.getParameter("sex");

        User user = registerService.register(userName,password,sex);
        int i =1;
        if(savedata(userName,password,sex))
        {
            //req.getRequestDispatcher("login.jsp").forward(req,resp);
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            //跳转到使用者首页
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }
        else
        {
            req.setAttribute("message","注册失败！");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }
    }
    public static boolean  savedata(String username,String password,String sex) {

        Connection connection = JDBCTools.getConnection();
        String insertsql = "insert into user (username,password,sex) values(?,?,?)";// 预处理的语句对象
        try {
            int i = 1;
            pstmt = connection.prepareStatement(insertsql);//prepareStatement(insertsql);
            pstmt.setString(i, username);
            i=i+1;
            pstmt.setString(i, password);
            i=i+1;
            pstmt.setString(i, sex);
            i=i+1;
            int val = pstmt.executeUpdate();
            /**
            if (val > 0)
            {
                return true;
            }
            else {
                return false;
            }*/
            return (val>0);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return false;
    }


}
