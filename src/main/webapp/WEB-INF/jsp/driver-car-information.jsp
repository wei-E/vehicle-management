<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/5
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>车辆信息</title>
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
<form action="" method="post">
    车牌:<input type="text" name="license"><br>
    车辆型号:<input type="text" name="type"><br>
    状态:<input type="text" name="status"><br>
    <input type="submit" value="find">
</form>
    <table>
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
                <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/driver/driver-car-send?license=${car.license}'">出车</button></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
