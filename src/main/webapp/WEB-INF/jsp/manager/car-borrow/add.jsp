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
    <title>车辆出借信息增加</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/car-borrow/borrow" method="post">
    车牌: ${license}<input type="text" name="license" value="${license}" hidden="hidden"><br>
    原因:<input type="text" name="reason"><br>
    出借人名称:<input type="text" name="name"><br>
    <input type="submit" value="submit">
</form>
</body>
</html>