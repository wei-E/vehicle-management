<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/5
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>出车表</title>
</head>
<body>
<div >
    <ul>
        <li><a href="${pageContext.request.contextPath }/driver/welcome">欢迎界面</a></li>
        <li><a href="${pageContext.request.contextPath }/driver/info-car">车辆信息</a></li>
        <li><a href="${pageContext.request.contextPath }/driver/status">当前状态</a></li>
        <li><a href="${pageContext.request.contextPath }/driver/information">我的信息</a></li>
    </ul>
</div>
<form action="${pageContext.request.contextPath}/driver/out-car" method="post">
    车牌: <input type="text" name="license" value="${license}" disabled="disabled"><br>
    出车原因：<input type="text" name="reason"><br>
    <input type="submit" value="确认"><br>
    <input type="reset" value="返回"><br>
</form>
</body>
</html>
