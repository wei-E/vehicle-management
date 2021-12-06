<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/6
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆信息</title>
</head>
<body>
<div >
    <ul>
        <li><a href="#" ref="hyjm">欢迎界面</a></li>
        <li><a href="#" ref="xtgl">车辆管理</a></li>
        <ul show="true">
            <li><a href="#" ref="?">查看</a></li>
            <li><a href="#" ref="?">增加</a></li>
            <li><a href="#" ref="?">删除</a></li>
            <li><a href="#" ref="?">修改</a></li>
        </ul>
        <li><a href="#" ref="wggl">违规管理</a></li>
        <ul show="true">
            <li><a href="#" ref="?">增加</a></li>
            <li><a href="#" ref="?">查看</a></li>

        </ul>
        <li><a href="#" ref="wxgl">维修管理</a></li>
        <ul show="true">
            <li><a href="#" ref="?">增加</a></li>
            <li><a href="#" ref="?">维修查看</a></li>
            <li><a href="#" ref="?">历史信息</a></li>
        </ul>
        <li><a href="#" ref="wxgl">出借管理</a></li>
        <ul show="true">
            <li><a href="#" ref="?">增加</a></li>
            <li><a href="#" ref="?">出借查看</a></li>
            <li><a href="#" ref="?">历史信息</a></li>
        </ul>
        <li><a href="#" ref="bygl">保养管理</a></li>
        <ul show="true">
            <li><a href="#" ref="?">增加</a></li>
            <li><a href="#" ref="?">出借查看</a></li>
            <li><a href="#" ref="?">历史信息</a></li>
        </ul>
        <li><a href="#" ref="pcqk">派车情况</a></li>
    </ul>
</div>
<form action="" method="post">
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
            <td><button class="">增加</button></td>
            <td><button class="">删除</button></td>
            <td><button class="">修改</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
