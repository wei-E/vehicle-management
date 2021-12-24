<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员信息修改</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/manager/update" method="post">
    工号:<input type="text" name="work_num" value="${manager.work_num}" disabled="disabled"><br>
    姓名:<input type="text" name="name" value="${manager.name}"><br>
    密码:<input type="text" name="password" value="${manager.password}"><br>
    身份证:<input type="text" name="id_num" value="${manager.id_num}"><br>
    <input type="submit" value="update">
</form>
</body>
</html>
