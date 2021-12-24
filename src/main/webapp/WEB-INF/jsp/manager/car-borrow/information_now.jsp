<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆出借表</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/car-borrow/now" method="post">
    车牌:<input type="text" name="license"><br>
    车辆型号:<input type="text" name="type"><br>
    状态:<input type="text" name="status"><br>
    <input type="submit" value="submit">
</form>
<table>
    <tr>
        <th>车牌</th>
        <th>车辆型号</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="each">
        <tr>
            <td>${each.license}</td>
            <td>${each.type}</td>
            <td>${each.status}</td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/car-borrow/finish?license=${each.license}'">还车</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
