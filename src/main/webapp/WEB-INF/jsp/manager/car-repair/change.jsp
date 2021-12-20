<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/20
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>维修信息修改</title>
</head>
<body>
<form action>
    车牌:<br>
    原因:<input type="text" name="reason"><br>
    <input type="submit" value="submit">
</form>
<table>
    <td><button>增加</button></td>
    <tr>
        <th>车牌</th>
        <th>车辆型号</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach >
        <tr>
            <td>${car.license}</td>
            <td>${car.type}</td>
            <td>${car.status}</td>
            <td><button>修改</button></td>
            <td><button>删除</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
