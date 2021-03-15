<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/12/18
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@page import="kunkun.controller.caculate"%>
<%@ page import="javax.swing.*" %>
<%@ page  import="jakarta.servlet.http.HttpServlet" %>
<%@ page  import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page  import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page  import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.util.Optional" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head><title>出题页</title></head>
<body bgcolor=#FFE4C4 onload="load()">
<%
    //接收客户端传递过来的参数
    request.setCharacterEncoding("UTF-8");
    String time = request.getParameter("usertime");//接收时间
    int time1=0;
    int x=1;
    for(int m=0;m<time.length();m++)
    {
        time1+=(time.charAt(time.length()-m-1)-'0')*x;
        x*=10;
    }//字符串类型的数字转换为整型 成为参数
%>
<script>
    var c=1;
    var t;
    var num1=<%=time1%>
        function timeCount()
        {
            document.getElementById("txt").innerHTML=num1-c;
            c=c+1;
            t=setTimeout("timeCount()",1000);
            if(num1==c-1)
            {
                clearTimeout(t);
                alert("时间到了！");
                load();
            }
        }
    function load(){
        document.getElementById("anniu").click();
    }
    window.onload =function(){
        timeCount();//onload 事件会在页面或图像加载完成后立即发生。
    }

</script>
<h1 style="font-family:华文新魏;font-size:4em" >开始答题</h1>
<td style="font-family:华文新魏;font-size:1em;width:500px" align="right">倒计时：</td>
<p id = "txt"></p>
<form action="Result.jsp" onsubmit="return validate()==1" method="get">
        <%
            //接收客户端传递过来的参数
            request.setCharacterEncoding("UTF-8");
            String num = request.getParameter("username");//接收出题的数目
            int num1=0;
            x=1;
            for(int m=0;m<num.length();m++)
            {
            num1+=(num.charAt(num.length()-m-1)-'0')*x;
            x*=10;
            }//字符串类型的数字转换为整型 成为参数

            caculate demo=new caculate();//定义对象
            String []biaodashi1=new String[num1];
            biaodashi1=demo.biaodashi(num1);//接收算式
            demo.setsuanshi(biaodashi1);//调用函数 给数据成员算式赋值 以便用于传递

            for(int i=0;i<num1;i++)
            {
            System.out.println(biaodashi1[i]);//输出表达式
        %>
        <input style="width:80px;height:17px;align:'right'"   type="text" name="result[<%=i%>]"/> <!-- 答案输入文本框 -->
        <%
        System.out.println("<br/>");
        System.out.println("<br/>");//换行
        }
        request.setAttribute("jieshou",demo);

        //session.setAttribute("jieshou",demo);//用于下一个界面的接收本界面的这个类的全部内容result 所以定义的对象
        %>
    <tr>
        <button id="anniu" onclick="test()" type="submit">提交</button>

    </tr>
</body>
</html>
