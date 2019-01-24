<%@ page import="com.java.ModifySessionListener" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/24
  Time: 下午 02:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("account");
    response.sendRedirect("login.jsp");
%>

<html>
<head>
    <title>A4 - logout</title>
</head>
<body>

</body>
</html>
