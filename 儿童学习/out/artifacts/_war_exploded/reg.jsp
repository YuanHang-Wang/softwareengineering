<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/16
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册</title>
    <link href="css/bootstrap.min.css" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="./" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" >jsp作业</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" >登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">

            <form class="form-signin" action="reg-submit.jsp" method="post">
                <h2 class="form-signin-heading">注册到jsp作业</h2>
                <div id="info">

                </div>
                <label for="">用户名</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="请输入用户名" required autofocus><br>
                <label for="">密码</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码" required><br>
                <label for="">重复密码</label>
                <input type="password" name="password2" id="password2" class="form-control" placeholder="请再次输入密码" required maxLength="16"><br>
                <button type="submit" class="btn btn-primary" id="btn-reg">注册</button>
                <a href="login.jsp" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" rel="external nofollow" class="btn btn-default" id="btn-reg">返回登录</a>
            </form>
        </div>
        <div class="col-md-4">
        </div>
    </div>
</body>
</html>
