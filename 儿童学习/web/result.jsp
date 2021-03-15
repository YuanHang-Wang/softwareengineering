<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/18
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@page import="kunkun.controller.caculate"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.ServletContext" %>
<%@ page import="jakarta.servlet.http.HttpSessionContext" %>
<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>出题</title></head>

<body bgcolor=#FFE4C4>
<h1 style="font-family:华文新魏;font-size:5em">正确答案</h1>
<%
    //接收客户端传递过来的参数
    caculate newdemo=new caculate();
    newdemo=(caculate)session.getAttribute("jieshou");//用于接收CHUti界面传过来的数 （对象）
    String []yoursolution=new String[newdemo.shumu];//接收传过来的文本框的答案
    int sumright=0,sumerror=0,empty=0;
    for(int i=0;i<newdemo.shumu;i++)
    {
        request.setCharacterEncoding("UTF-8");
        System.out.print(newdemo.suanshi[i]);//正确的算式
        yoursolution[i] = request.getParameter("result["+i+"]");//你的答案
        System.out.println(yoursolution[i]);
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
    System.out.println("正确答案是： ");
    System.out.println(newdemo.answer[i]);//正确的答案
%>
&nbsp;&nbsp;&nbsp;&nbsp;
<%
        int num1=0;
        int x=1;
        for(int m=0;m<yoursolution[i].length();m++)
        {
            num1+=(yoursolution[i].charAt(yoursolution[i].length()-m-1)-'0')*x;
            x*=10;
        }//字符串类型的数字转换为整型 用于和正确答案比较 因为从出题界面接受的答案是字符串类型
        if(yoursolution[i].equals(""))
        {
            System.out.println("你没有回答哦！");
            empty++;
        }
        else if(num1==newdemo.answer[i])
        {
            sumright++;
            System.out.println("恭喜你！回答正确！");
        }
        else
        {
            sumerror++;
            System.out.println("回答错误，再接再厉！");
        }
        System.out.println("<br/>");//换行
    }
    out.println("回答正确了"+sumright+"道题！");
    out.println("<br/>");//换行
    out.println("回答错误了"+sumerror+"道题！");
    out.println("<br/>");//换行
    out.println("没有回答"+empty+"道题！");
    out.println("<br/>");//换行
%>
</tr>
<a href="chutishumu.jsp">退出</a>
</body>
</html>
