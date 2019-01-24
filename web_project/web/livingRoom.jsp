<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/24
  Time: 上午 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String passCode = request.getParameter("passCode");
%>
<html>
<head>
    <title>A3</title>
</head>
<body>
    <p>輸入正確</p>
    <p>Pass Code：<%= passCode%></p>
</body>
</html>
