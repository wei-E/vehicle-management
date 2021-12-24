<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/20
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>历史维修表</title>
</head>
<body>
<form action="">
    车牌:<input type="text" name="license"><br>
    原因:<input type="text" name="reason"><br>
    时间范围:<input type="text" name="pre_time">
            <input type="text" name="next_time"><br>
    <input type="submit" value="find">
</form>
<table>
    <tr>
        <th>车牌</th>
        <th>原因</th>
        <th>时间</th>
    </tr>
    <c:forEach>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
