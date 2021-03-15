package kunkun.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kunkun.entity.User;
import kunkun.service.Impl.LoginServiceImpl;
import kunkun.service.LoginService;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private LoginService loginService = new LoginServiceImpl();
    /**
     *处理登录业务逻辑
     *
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);//接收
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = loginService.login(username,password);
        int i=1;
        if(user !=null)
        {
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            //跳转到使用者首页
            req.getRequestDispatcher("index1.jsp").forward(req,resp);

        }else
        {
            resp.sendRedirect("login.jsp");
        }
    }
}

