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
<%--从car表中找出车辆信息并显示，对车辆进行维修--%>
<form action="">
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
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td><button>进行维修</button></td>
    </tr>
</table>
</body>
</html>
