<%--
  User: jjt
  Date: 2021/12/3
  Time: 10:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>工号</th>
        <th>姓名</th>
        <th>身份证</th>
    </tr>
    <c:forEach items="${managerList}" var="manager">
        <tr>
            <td>${manager.work_num}</td>
            <td>${manager.name}</td>
            <td>${manager.id_num}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
