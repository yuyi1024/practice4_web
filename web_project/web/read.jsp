<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/18
  Time: 下午 05:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String name = "";
    try {
        name = new String(request.getParameter("name").getBytes("ISO8859-1"), "UTF-8");
    } catch (NullPointerException e){
        name = "No name.";
    } catch (Exception e) {
        name = "ERROR.";
        e.printStackTrace();
    }
%>

<html>

<head>
    <title>B3-1</title>
</head>
<body>
    <h1>Name: <%= name %></h1>
</body>
</html>
