<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/24
  Time: 下午 01:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String account = (String) session.getAttribute("account");
%>
<html>
<head>
    <title>A4 - protal_index</title>
</head>
<body>
    <h3>You are login now！</h3>
    <p>Account Name： <%= account%></p>

    <p>
        <a href="A4-logout">登出</a>
    </p>
</body>
</html>
