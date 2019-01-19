<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 下午 04:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
    DocumentBuilder bu = dbf.newDocumentBuilder();
//    Document d = bu.parse(new File("C:/apache-tomcat-7.0.92/bin" + File.separator + "web_project/web/web.xml"));
    Document d = bu.parse(new FileInputStream(""));


    String s = request.getServletContext().getRealPath("/");


%>
<html>
<head>
    <title>B8</title>
</head>
<body>
    <p><%= s %></p>
</body>
</html>
