<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/8
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>驾驶员信息管理</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/information-driver" method="post">
    工号:<input type="text" name="work_num"><br>
    名称:<input type="text" name="name"><br>
    身份证:<input type="text" name="id_num"><br>
    <input type="submit" value="submit">
</form>
    <table>
        <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/jumpToAdd'">增加</button></td>
        <tr>
            <th>工号</th>
            <th>名称</th>
            <th>身份证</th>
            <th>操作</th>
        </tr>
         <c:forEach items="${driverList}" var="driver">
        <tr>
            <td>${driver.work_num}</td>
            <td>${driver.name}</td>
            <td>${driver.id_num}</td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/jumpToUpdate?work_num=${driver.work_num}">修改</button></td>
            <td><button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/delete?work_num=${driver.work_num}'">删除</button></td>
        </tr>
         </c:forEach>
    </table>

</body>
</html>
