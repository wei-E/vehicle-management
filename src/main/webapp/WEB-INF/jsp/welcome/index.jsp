<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2021/11/28
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/welcome.css" />
</head>
<body>
<div id="bigBox">
    <h1>欢迎使用查勘车辆管理系统</h1>
    <div class="inputBox">
        <form action="${pageContext.request.contextPath }/index/manager" method="post">
            <input type="submit" class="inputButton" value="管理员" />
        </form>
        <form action="${pageContext.request.contextPath }/index/driver" method="post">
            <input type="submit" class="inputButton" value="用户" />
        </form>
    </div>
</div>

</body>
</html>
