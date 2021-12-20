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
        <li><a href="${pageContext.request.contextPath}/manager/welcome">欢迎界面</a></li>

        <li><a href="${pageContext.request.contextPath}/manager/information-driver">驾驶员信息管理</a></li>

        <li><a href="${pageContext.request.contextPath}/manager/information-manager">管理员信息管理</a></li>

        <li><a href="${pageContext.request.contextPath}/manager/information-car">车辆管理</a></li>

        <li><a href="#">违规管理</a></li>

        <li><a href="#">维修管理</a></li>
        <ul show="true">
            <li><a href="#">维修查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>

        <li><a href="#">出借管理</a></li>
        <ul show="true">
            <li><a href="#">出借查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>

        <li><a href="#">保养管理</a></li>
        <ul show="true">
            <li><a href="#">保养查看</a></li>
            <li><a href="#">历史信息</a></li>
        </ul>

        <li><a href="${pageContext.request.contextPath}/manager/information-car-send">派车情况</a></li>
    </ul>
</div>

</body>
</html>
