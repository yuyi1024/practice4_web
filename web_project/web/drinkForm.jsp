<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h2>${param.method}</h2>
<h3>康青龍  大家來訂飲料(1/18下午)</h3>

<label>名字： </label>
<input type="text" name="clientName" required="required">

<br><br>

<label>飲料名稱： </label>
<select name="drinkName">
    <option value="青龍茶王">青龍茶王</option>
    <option value="鐵觀音奶蓋">鐵觀音奶蓋</option>
    <option value="黑白芋泥奶茶">黑白芋泥奶茶</option>
    <option value="焦糖鮮奶茶">焦糖鮮奶茶</option>
    <option value="蜜香冰露">蜜香冰露</option>
    <option value="沁心金萱">沁心金萱</option>
</select>

<br><br>

<label>加料： </label>
<input type="checkbox" name="toppings[]" value="珍珠">珍珠
<input type="checkbox" name="toppings[]" value="椰果">椰果
<input type="checkbox" name="toppings[]" value="仙草">仙草
<input type="checkbox" name="toppings[]" value="小芋圓">小芋圓

<br><br>

<label>冰塊： </label>
<input type="radio" name="ice" value="正常" checked>正常
<input type="radio" name="ice" value="少冰">少冰
<input type="radio" name="ice" value="微冰">微冰
<input type="radio" name="ice" value="去冰">去冰

<br><br>

<label>甜度： </label>
<input type="radio" name="sugar" value="全糖" checked>全糖
<input type="radio" name="sugar" value="少糖">少糖
<input type="radio" name="sugar" value="半糖">半糖
<input type="radio" name="sugar" value="微糖">微糖
<input type="radio" name="sugar" value="無糖">無糖

<br><br>

<label>備註： </label>
<textarea name="memo"></textarea>

<label></label>
<input type="hidden" name="time" value="<%= new Date()%>">

<br><br>
<input type="submit" value="送出">