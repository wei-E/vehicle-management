<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/information-manager" method="post">
    工号:<input type="text" name="work_num"><br>
    姓名:<input type="text" name="name"><br>
    身份证:<input type="text" name="id_num"><br>
    <input type="submit" value="find">
</form>
<table>
    <tr>
        <th>工号</th>
        <th>姓名</th>
        <th>身份证</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${managerList}" var="manager">
        <tr>
            <td>${manager.work_num}</td>
            <td>${manager.name}</td>
            <td>${manager.id_num}</td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/jumpToChange?work_num=${work_num}'">修改</button></td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/delete?work_num=${work_num}'">删除</button></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
