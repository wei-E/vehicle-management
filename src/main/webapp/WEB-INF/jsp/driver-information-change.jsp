<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/7
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>驾驶员信息修改</title>
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

<form action="" method="post">
  名称:<input type="text" name="name"><br>
  密码:<input type="text" name="password"><br>
  身份证:<input type="text" name="id_num"><br>
  <input type="submit" value="submit">
</form>
</body>
</html>
