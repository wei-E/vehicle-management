<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/5
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>出车表</title>
</head>
<body>
<div >
    <ul>
        <li><a href="#">欢迎界面</a></li>
        <li><a href="#">车辆信息</a></li>
        <li><a href="#">个人信息</a></li>
    </ul>
</div>
<form action="" method="post">
    车牌:<input type="text" name="license"><br>
    出车原因：<input type="text" name="reason"><br>
    出车时间：<input type="date" name="time"><br>
    <input type="submit" value="确认"><br>
    <input type="reset" value="返回"><br>
</form>
</body>
</html>