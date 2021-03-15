<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/18
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>出题数目</title>
</head>
<body>
<h1 style="font-family:华文新魏;font-size:5em">WELCOME</h1>

<form action="Chuti.jsp" method="post">
    <table align="center" border="0" width="500" style="margin:00px 200px 00px 5px">
        <tr>
            <td style="font-family:华文新魏;font-size:2em;width:500px" align="right">你想做几道题来着？ </td>
            <td>
                <input style="width:100px;height:30px;" type="text" name="username" />
            </td>
        </tr>

        <tr>
            <td style="font-family:华文新魏;font-size:2em;width:500px" align="right">设置时间： </td>
            <td>
                <input style="width:100px;height:30px;" type="text" name="usertime" />
            </td>
        </tr>

        <tr><td style="width:150px;height:40px;"></td></tr> <!-- 加了一个自己设置的高度的空行 -->
        <ta align="center">
            <td colspan="2">
                <input style="width:100px;height:30px; margin:00px 20px 00px 150px" type="submit" value="开始答题" />
            </td>
        </ta>
    </table>
</form>
</body>
</html>