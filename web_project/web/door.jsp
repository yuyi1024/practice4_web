<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/23
  Time: 下午 06:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String passCode = "";
    String msg = "";
    if(request.getParameter("passCode") != null){
        passCode = request.getParameter("passCode");
        msg = "錯誤的 Pass Code！";
    }
%>
<html>
<head>
    <title>A3</title>
</head>
<body>
    <p class="msg"><%= msg%></p>
    <form name="form1" method="POST" action="./A3">
        <label>Pass Code</label>
        <input name="passCode" type="text" value="<%= passCode%>">
        <button type="submit" value="submit">送出</button>
    </form>
</body>
</html>

<style>
    .msg{
        color: red;
        font-weight: bold;
    }
</style>