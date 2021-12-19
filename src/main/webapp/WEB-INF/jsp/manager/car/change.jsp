<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/6
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆信息修改</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/car/update" method="post">
    车牌:<br>
    车辆型号:<input type="text" name="type"><br>
    状态:<input type="text" name="status"><br>
    <input type="submit" value="submit">
</form>
</body>
</html>
