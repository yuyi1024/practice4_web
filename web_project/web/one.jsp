<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 上午 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String msg = "";
    if(request.getParameter("msg") != null){
       msg = new String(request.getParameter("msg").getBytes("ISO-8859-1"), "UTF-8");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p class="alert"><%= msg %></p>

    <form name="drinkGetForm" method="GET" action="two.jsp">
        <jsp:include page="/drinkForm.jsp">
            <jsp:param name="method" value="GET"></jsp:param>
        </jsp:include>
    </form>

    <form name="drinkPostForm" method="Post" action="two.jsp">
        <jsp:include page="/drinkForm.jsp">
            <jsp:param name="method" value="POST"></jsp:param>
        </jsp:include>
    </form>

</body>
</html>

<style>
    form{
        background-color: antiquewhite;
    }
    .alert{
        color: darkred;
    }
</style>
