<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/23
  Time: 下午 01:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    Calendar calendar = Calendar.getInstance();
    int thisYear = calendar.get(Calendar.YEAR);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <select id="year" onchange="getDateOptions();">
        <option disabled selected>請選擇</option>
        <%
            for(int i = 2000; i <= thisYear; i++){
        %>
        <option value="<%= i%>"><%= i%></option>
        <%
            }
        %>
    </select>
    <label>年</label>

    <select id="month" onchange="getDateOptions();">
        <option disabled selected>請選擇</option>
        <%
            for(int i = 1; i <= 12; i++){
        %>
        <option value="<%= i%>"><%= i%></option>
        <%
            }
        %>
    </select>
    <label>月</label>

    <select id="date">
        <option name="non-select" disabled selected>請選擇</option>
    </select>
    <label>日</label>

</body>
</html>

<script>
   function getDateOptions() {
       var year = document.getElementById("year").value;
       var month = document.getElementById("month").value;
       var date = new Date(year, month, 0);
       var daysInMonth = date.getDate();

       var dateSelectBox = document.getElementById("date");
       var lastDateElement = dateSelectBox.lastElementChild;

       while(lastDateElement.getAttribute("name") != "non-select"){
           dateSelectBox.removeChild(lastDateElement);
           lastDateElement = dateSelectBox.lastElementChild;
       }
       for(var i = 1; i <= daysInMonth; i++){
           var element = document.createElement("option");
           var text = document.createTextNode(i);

           element.appendChild(text);
           element.setAttribute("value", i);
           dateSelectBox.appendChild(element);
       }




       // // 初始化 1~28 號
       // if (lastDateElement.getAttribute("name") == "non-select"){
       //      for(var k = 1; k <= 28; k++){
       //          var element = document.createElement("option");
       //          var text = document.createTextNode(k);
       //          element.appendChild(text);
       //          element.setAttribute("value", k);
       //          dateSelectBox.appendChild(element);
       //      }
       // }
       //
       // // remove 可能變動的 28 號之後的日期
       // if(lastDateElement.getAttribute("value") != "28"){
       //     dateSelectBox.removeChild(lastDateElement);
       //     lastDateElement = dateSelectBox.lastElementChild;
       // }
       //
       // // 重新給予 28號之後的日期
       // for(var i = 29; i <= daysInMonth; i++){
       //     var element = document.createElement("option");
       //     var text = document.createTextNode(i);
       //
       //     element.appendChild(text);
       //     element.setAttribute("value", i);
       //     dateSelectBox.appendChild(element);
       // }
   }
</script>