<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.UnsupportedEncodingException" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 上午 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HashMap<String, String[]> map = null;
    String method = null;
    try {
        map = new HashMap(request.getParameterMap());
        ArrayList<String> valueArray = new ArrayList();
        for(Object key : map.keySet()){
            for(String valueElement : map.get(key)){
                valueArray.add(new String(valueElement.getBytes("ISO8859-1"), "UTF-8"));
            }
            map.put(key.toString(), valueArray.toArray(new String[valueArray.size()]));
            valueArray.clear();
        }
        method = request.getMethod();
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
        <p>名字： <%= map.get("clientName")[0] %></p>
        <p>飲料名稱： <%= map.get("drinkName")[0] %></p>
        <p>加料：
            <%
                if(map.containsKey("toppings[]")){
                    for(String s : map.get("toppings[]")){
                        out.print(s + " ");
                    }
                }
            %>
        </p>
        <p>冰塊： <%= map.get("ice")[0] %></p>
        <p>甜度： <%= map.get("sugar")[0] %></p>
        <p>下單時間： <%= map.get("time")[0] %></p>
        <p>備註： <%= map.get("memo")[0] %></p>
    </div>

</body>
</html>