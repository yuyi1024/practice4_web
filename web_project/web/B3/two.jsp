<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 上午 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String method = null;
    String[] toppingsArray = null;
    try {
        method = request.getMethod();
        toppingsArray = request.getParameterValues("toppings[]");
    } catch (Exception e) {
        response.sendRedirect("one.jsp?msg=表單發生錯誤，請重新輸入！");
    }
%>

<html>
<head>
    <title>B3-2</title>
</head>
<body>
    <div>
        <h2><%= method %></h2>
        <h3>康青龍訂單</h3>
        <p>名字： <%= request.getParameter("clientName") %></p>
        <p>飲料名稱： <%= request.getParameter("drinkName") %></p>
        <p>加料：
            <%
                if(toppingsArray != null){
                    for(String toppings : toppingsArray){
                        out.print(toppings + " ");
                    }
                } else {
                    out.print("無");
                }
            %>
        </p>
        <p>冰塊： <%= request.getParameter("ice") %></p>
        <p>甜度： <%= request.getParameter("sugar") %></p>
        <p>下單時間： <%= request.getParameter("time") %></p>
        <p>備註： <%= request.getParameter("memo") %></p>
    </div>
</body>
</html>