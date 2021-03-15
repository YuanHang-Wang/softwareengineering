<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/16
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="css/zhuce.css">
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
</head>
<body>
<div class = "loginbox">

    <a class = "logo">注册</a><br><br>
    <form action="/RegisterServlet" method="post">
        <div class = "zhanghao">
            账号：<input type="text" id = "zhan" name="username" /><br><br>
            密码：<input type="password" id = "mima" name="password" /><br><br>
            性别：<input type="text" id = "xingbie" name="sex" />
        </div>
        <font color="red">
            <%
                if(request.getAttribute("message")!= null){
                    System.out.println(request.getAttribute("message"));
                }
            %>
        </font>
        <br>
        <input type="checkbox" id="check" >记住账号
        <div class = "denglu">
            <input type="submit" name="submit" value ="注册"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value = "重置" id = "kong"><br><br>
            已有账号？<a href="login.jsp">去登录</a>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $("#kong").click(function(){
            $("#zhan").val("");
            $("#mima").val("");
            $("#bumen").val("");
        });
    });
</script>
</body>
</html>
