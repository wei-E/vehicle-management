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
<div >
    <ul>
        <li><a href="#">欢迎界面</a></li>
        <li><a href="#">车辆管理</a></li>
        <ul show="true">
            <li><a href="#">查看</a></li>
            <li><a href="#">增加</a></li>
            <li><a href="#">删除</a></li>
            <li><a href="#">修改</a></li>
        </ul>
        <li><a href="#">违规管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">查看</a></li>

        </ul>
        <li><a href="#">维修管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">维修查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>
        <li><a href="#">出借管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">出借查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>
        <li><a href="#">保养管理</a></li>
        <ul show="true">
            <li><a href="#">增加</a></li>
            <li><a href="#">出借查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>
        <li><a href="#">派车情况</a></li>
    </ul>
</div>
<form action="${pageContext.request.contextPath }/manager/information" method="post">
    工号:<input type="text" name="work_num"><br>
    姓名:<input type="text" name="name"><br>
    身份证:<input type="text" name="id_num"><br>
    <input type="submit" value="submit">
</form>
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
