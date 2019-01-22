<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 下午 04:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HashMap<String, HashMap<String, String>> map = (HashMap<String, HashMap<String, String>>)request.getAttribute("map");
%>

<html>
<head>
    <title>B8-2</title>
</head>
<body>
    <ul>
        <%
            for (Object o : map.keySet()){ ;
        %>
        <li><%= o%>
            <%
                for (Object p : map.get(o).keySet()){
                    if(p == null){

            %>
            : <%= map.get(o).get(p)%></li>
        <%
        } else{
        %>
        <ul>
            <li><%= p%> : <%= map.get(o).get(p)%></li>
        </ul>
        </li>
        <%
                    }
                }
            }
        %>
    </ul>

</body>
</html>
