<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/24
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>保养完成</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/main/all" method="post">
    车牌:<input type="text" name="license"><br>
    车辆型号:<input type="text" name="type"><br>
    <input type="submit" value="find">
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
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/main/main?license=${each.license}'">保养</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
