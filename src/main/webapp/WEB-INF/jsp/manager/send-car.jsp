<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/8
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>派车表</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/information-car-send" method="post">
    车牌:<input type="text" name="license"><br>
    工号:<input type="text" name="driver_id"><br>
    出车时间:<input type="text" name="departure_time"><br>
    还车时间:<input type="text" name="return_time"><br>
    <input type="submit" value="find">
</form>
<table>
    <tr>
        <th>车牌</th>
        <th>工号</th>
        <th>出车原因</th>
        <th>出车时间</th>
        <th>还车时间</th>
    </tr>
    <c:forEach items="${carSendList}" var="carSend">
        <tr>
            <td>${carSend.license}</td>
            <td>${carSend.driver_id}</td>
            <td>${carSend.reason}</td>
            <td>${carSend.departure_time}</td>
            <td>${carSend.return_time}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
