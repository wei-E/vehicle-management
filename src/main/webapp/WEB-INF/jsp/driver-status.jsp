<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/7
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>当前状态</title>
</head>
<body>
<div >
    <ul>
        <li><a href="${pageContext.request.contextPath }/driver/welcome">欢迎界面</a></li>
        <li><a href="${pageContext.request.contextPath }/driver/info-car">车辆信息</a></li>
        <li><a href="${pageContext.request.contextPath }/driver/status">当前状态</a></li>
        <li><a href="${pageContext.request.contextPath }/driver/information">我的信息</a></li>
    </ul>
</div>
<table>
    <tr>
        <th>工号</th>
        <th>姓名</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <tr>
        <td>${driver.id_num}</td>
        <td>${driver.name}</td>
        <td>${driver.status}</td>
        <td><button id="send_car" onclick="stampBill()">出车</button></td>
        <td><button id="return_car" onclick="stampBill1()">还车</button></td>
    </tr>
</table>
</body>
<script>
    var send_car=document.getElementById("send_car");
    var return_car=document.getElementById("return_car");
    function stampBill() {
        return_car.disabled=false
        send_car.disabled=true;
       
    }
    function stampBill1() {
        return_car.disabled=true
        send_car.disabled=false;
    }

</script>
</html>
