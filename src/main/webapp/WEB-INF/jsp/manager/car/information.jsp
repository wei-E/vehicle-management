<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/6
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆信息</title>
</head>
<body>
<div >
    <ul>
        <li><a href="#">欢迎界面</a></li>
        <li><a href="#">车辆管理</a></li>
        <ul show="true">
            <li><a href="#">查看</a></li>
            <li><a href="#">增加</a></li>
            <li><a href="#">删除</a></li>
            <li><a href="#">修改</a></li>
        </ul>
        <li><a href="#">违规管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">查看</a></li>

        </ul>
        <li><a href="#">维修管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">维修查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>
        <li><a href="#">出借管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">出借查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>
        <li><a href="#">保养管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">出借查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>
        <li><a href="#">派车情况</a></li>
    </ul>
</div>
<form action="${pageContext.request.contextPath}/manager/information-car" method="post">
    车牌:<input type="text" name="license"><br>
    车辆型号:<input type="text" name="type"><br>
    状态:<input type="text" name="status"><br>
    <input type="submit" value="submit">
</form>
<table>
    <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/car/jumpToAdd">增加</button></td>
    <tr>
        <th>车牌</th>
        <th>车辆型号</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${carList}" var="car">
        <tr>
            <td>${car.license}</td>
            <td>${car.type}</td>
            <td>${car.status}</td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/car/jumpToUpdate?license=${car.license}">修改</button></td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/car/delete?license=${car.license}">删除</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
