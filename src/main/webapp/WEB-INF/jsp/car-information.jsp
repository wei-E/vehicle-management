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
<form action="${pageContext.request.contextPath }/manager/information" method="post">
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
        <c:forEach items="" var="">
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><button class="">出车</button></td>
                <td><button class="">还车</button></td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
