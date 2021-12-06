<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <li><a href="#" ref="hyjm">欢迎界面</a></li>
        <li><a href="#" ref="xtgl">系统管理</a></li>
        <ul show="true">
            <li><a href="#" ref="ccsq">出车申请</a></li>
            <li><a href="#" ref="?">?</a></li>
        </ul>
        <li><a href="#" ref="grxx">个人信息</a></li>
    </ul>
</div>
<form action="" method="post">
    工号:<input type="text" name="work_num"><br>
    名称:<input type="text" name="name"><br>
    密码:<input type="text" name="password"><br>
    身份证:<input type="text" name="id_num"><br>
    状态:<input type="text" name="status"><br>
    <input type="submit" value="submit">
</form>
    <table>
        <tr>
            <th>工号</th>
            <th>名称</th>
            <th>密码</th>
            <th>身份证</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <c:forEach items="" var="">
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                td><button class="">修改</button></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
