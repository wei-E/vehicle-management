<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2021/12/1
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录</h1>
<form action="${pageContext.request.contextPath}/user/login-manager" method="post">
    工号<input type="text" name="work_num"><br/>
    密码<input type="text" name="password"><br/>
    <input type="submit" value="登录"><br/>
</form>
</body>
</html>
