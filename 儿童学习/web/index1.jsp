<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/17
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
</head>
<link rel="icon" href="images/search.gif" type="img/x-ico" />
<link href="css/login.css" type="text/css" rel="stylesheet">
<body>
<div id="top"></div>
<div id="main">
    <img src="images/loginn.gif" id="main_bg"/>
    <div id="login_block">
        <form action="/caculate" method="post" id="loginForm">
            <table border="0">
                <tr>
                    <td colspan="3">
                        <input class="btn" type="submit" value="一年级"/>
                        <input class="btn" type = "submit" value = "二年级">
                        <input class="btn" type = "submit" value = "三年级">
                        <%--<div class="btn" id="reset">注&nbsp;&nbsp;册</div>--%>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div id="footer">
    <div class="foot_content">
        CopyRight &copy; 2020 www.**********.com 华科最好的坤坤分坤
    </div>
    <div class="foot_content">
        版权所有 坤坤 V1.0
    </div>
</div>
</body>
</html>