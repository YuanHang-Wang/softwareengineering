<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
</head>
<link rel="icon" href="images/search.gif" type="img/x-ico" />
<link href="css/login.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>/js/jquery-3.3.1.min.js"></script>
<body>
<div id="top"></div>
<div id="main">
	<img src="images/loginn.gif" id="main_bg"/>
	<div id="login_block">
		<form action="/login" method="post" id="loginForm">
			<table border="0">
				<tr>
					<td class="title">用户名:</td>
					<td class="input">
						<input type="text" name="username" id="username" class="login_input"/>
					</td>
				</tr>
				<tr>
					<td class="title">密码:</td>
					<td class="input">
						<input type="password" name="password" id="password" class="login_input"/>
					</td>
				</tr>
				<tr>
					<td class="title">用户类型:</td>
					<td class="input">
						<input type="radio" name="type" value="reader" checked="checked"/>&nbsp;&nbsp;亲爱的小朋友们&nbsp;&nbsp;
						<%--<input type="radio" name="type" value="admin"/>&nbsp;&nbsp;管理员--%>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input class="btn" type="submit" value="登录"/>
						<input class="btn" type = "button" value = "注册" onclick = "window.location.href = 'register.jsp'">
						<%--<div class="btn" id="reset">注&nbsp;&nbsp;册</div>--%>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<div id="footer">
	<div class="foot_content">
		CopyRight &copy; 2008 www.**********.com 西安市*****有限公司
	</div>
	<div class="foot_content">
		版权所有 Library V1.0
	</div>
</div>
</body>
</html>

<%--
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/index.css" type="text/css" rel="stylesheet"> 
	 
  	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  	<script type="text/javascript">
		$(function(){
			$("#next").click(function(){
				var pages = parseInt($("#pages").html());
				var page = parseInt($("#currentPage").html());
				if(page == pages){
					return;
				}
				page++;
				location.href = "/book?page="+page;
			})

			$("#previous").click(function () {
				var page = parseInt($("#currentPage").html());
				if(page == 1){
					return;
				}
				page--;
				location.href = "/book?page="+page;
			})

			$("#first").click(function () {
				location.href = "/book?page=1";
			})

			$("#last").click(function(){
				var pages = parseInt($("#pages").html());
				location.href = "/book?page="+pages;
			})
		})
	</script>
  </head>
  
  <body>
  <%@ include file="top.jsp" %>


  	<div id="main">
		<div class="navigation">
				当前位置:&nbsp;&nbsp;<a href="book.do">首页</a>
				<div id="readerBlock">欢迎回来&nbsp;:<a href="/book?method=findAllBorrow&page=1">${sessionScope.reader.name }</a>&nbsp;<a href="/logout">注销</a></div>
		</div>
		<div class="img_block">
			<img src="images/main_booksort.gif" class="img" />
		</div>
		
		<table class="table" cellspacing="0">
			<tr>
				<td>编号</td>
				<td>图书名称</td>
				<td>作者</td>
				<td>出版社</td>
				<td>图书页数</td>
				<td>定价(元)</td>
				<td>书架</td>
				<td>操作</td>
			</tr>
			
		</table>
		<hr class="hr"/>
		<div id="pageControl">
			<div class="pageControl_item">每页<font id="dataPrePage">${dataPrePage }</font>条数据</div>
			<div class="pageControl_item" id="last">最后一页</div>
			<div class="pageControl_item" id="next">下一页</div>
			<div class="pageControl_item"><font id="currentPage">${currentPage }</font>/<font id="pages">${pages }</font></div>
			<div class="pageControl_item" id="previous">上一页</div>
			<div class="pageControl_item" id="first">首页</div>
		</div>
		
	</div>

   <%@ include file="footer.jsp" %>
  </body>
</html>
--%>
