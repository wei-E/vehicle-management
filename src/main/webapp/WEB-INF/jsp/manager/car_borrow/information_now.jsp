<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆维修表</title>
</head>
<body>
<form action="" method="post">
    车牌:<input type="text" name="license"><br>
    原因:<input type="text" name="reason"><br>
    出借时间:<input type="text" name="time"><br>
    <input type="submit" value="find">
</form>
<table>
    <td><button>增加</button></td>
    <tr>
        <th>车牌</th>
        <th>原因</th>
        <th>出借时间</th>
        <th>操作</th>
    </tr>
    <c:forEach items="" var="">
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><button>修改</button></td>
            <td><button>删除</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
