<%--
  Created by IntelliJ IDEA.
  User: yuyinlee
  Date: 2019/1/19
  Time: 上午 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form name="" method="GET" action="two.jsp">
        <h2>大家來訂飲料(1/18下午)</h2>

        <label>名字</label>
        <input type="text" name="clientName">

        <label>飲料名稱</label>
        <select name="drinkName">
            <option name="" value=""></option>
            <option name="" value=""></option>
            <option name="" value=""></option>
            <option name="" value=""></option>
        </select>

        <label>加料</label>
        <input type="checkbox" name="toppings[]">
        <input type="checkbox" name="toppings[]">
        <input type="checkbox" name="toppings[]">
        <input type="checkbox" name="toppings[]">

        <label>冰塊</label>
        <input type="radio" name="ice">
        <input type="radio" name="ice">
        <input type="radio" name="ice">
        <input type="radio" name="ice">

        <label>甜度</label>
        <input type="radio" name="sugar">
        <input type="radio" name="sugar">
        <input type="radio" name="sugar">
        <input type="radio" name="sugar">


        <label>備註</label>
        <textarea name="memo"></textarea>

        <label></label>
        <input type="hidden" name="">
    </form>

</body>
</html>
