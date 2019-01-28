<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/28
  Time: 上午 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>B8</title>
</head>
<body>
<h4>English Name：<%= request.getAttribute("englishName")%></h4>
<h4>Chinese Name：<%= request.getAttribute("chineseName")%></h4>
<h4>Full Name：<%= request.getAttribute("fullName")%></h4>
</body>
</html>
