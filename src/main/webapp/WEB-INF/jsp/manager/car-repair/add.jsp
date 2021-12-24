<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/20
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加维修车辆</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/car-repair/repair" method="post">
    车牌: ${license}<input type="text" name="license" value="${license}" hidden="hidden"><br>
    原因:<input type="text" name="reason"><br>
    <input type="submit" value="submit">
</form>
</body>
</html>
