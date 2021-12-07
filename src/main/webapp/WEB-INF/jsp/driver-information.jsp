<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/6
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>驾驶员信息</title>
</head>
<body>
<div >
    <ul>
        <li><a href="#">欢迎界面</a></li>
        <li><a href="#">车辆信息</a></li>
        <li><a href="#">个人信息</a></li>
    </ul>
</div>
<form action="${pageContext.request.contextPath}/driver/update" method="post">
    <table>
        <tr>
            <th>工号</th>
            <th>名称</th>
            <th>身份证</th>
            <th>操作</th>
        </tr>
        <tr>
            <td><input value="${driver.work_num}" name="up_work_num"></td>
            <td><input value="${driver.name}" name="up_name"></td>
            <td><input value="${driver.id_num}" name="up_id_num"></td>
        </tr>
    </table>
    <input type="submit" value="save">
</form>
</body>
</html>
