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
    <h4>輸入正確</h4>
    <h4>Pass Code：<%= passCode%></h4>
</body>
</html>
