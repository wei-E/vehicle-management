<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/8
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>违规信息查看</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/information-violation" method="post">
    车牌:<input type="text" name="license"><br>
    原因:<input type="text" name="reason"><br>
    违规时间:<input type="text" name="time"><br>
    罚款金额:<input type="text" name="fines"><br>
    <input type="submit" value="find">
</form>
<table>
    <td><button>增加</button></td>
    <tr>
        <th>车牌</th>
        <th>原因</th>
        <th>违规时间</th>
        <th>罚款金额</th>
    </tr>
    <c:forEach items="${violationList}" var="violation">
    <tr>
        <td>${violation.license}</td>
        <td>${violation.reason}</td>
        <td>${violation.time}</td>
        <td>${violation.fines}</td>
    </tr>
    </c:forEach>

</body>
</html>
