<%--
  User: jjt
  Date: 2021/12/1
  Time: 19:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>驾驶员主页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/welcome.css" />

</head>
<body>
<div id="bigBox">
    <h1>驾驶员</h1>
    <div class="inputBox">
        <form action="${pageContext.request.contextPath }/index/login-driver" method="post">
            <input type="submit" class="inputButton" value="登录" />
        </form>
        <form action="${pageContext.request.contextPath }/index/register-driver" method="post">
            <input type="submit" class="inputButton" value="注册" />
        </form>
    </div>
</div>

</body>
</html>
