<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
  Calendar c = Calendar.getInstance();
  String s = df.format(c.getTime());
%>
<html>
  <head>
    <title>B1</title>
  </head>
  <body>
    <h1>Hello World <%= s%></h1>
  </body>
</html>