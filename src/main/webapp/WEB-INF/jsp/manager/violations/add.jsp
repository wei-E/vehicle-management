<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>违规信息添加</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/violation/add" method="post">
    车牌:<input type="text" name="license"><br>
    原因:<input type="text" name="reason"><br>
    违规时间:<input type="text" name="time"><br>
    罚款金额:<input type="text" name="fines"><br>
    <input type="submit" value="添加">
</form>
</body>
</html>
