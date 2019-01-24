<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/24
  Time: 下午 01:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String account = request.getParameter("account");
    if(account != null){
        session.setAttribute("account", account);
    }
    response.sendRedirect("portal_index.jsp");
%>
<html>
<head>
    <title>A4 - auth</title>
</head>
<body>

</body>
</html>
