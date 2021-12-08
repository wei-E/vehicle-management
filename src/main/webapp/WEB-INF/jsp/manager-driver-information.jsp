<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/8
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>驾驶员信息管理</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/driver/update" method="post">
    工号:<input type="text" name="work_num"><br>
    名称:<input type="text" name="name"><br>
    身份证:<input type="text" name="id_num"><br>
    <input type="submit" value="submit">
</form>
    <table>
        <td><button>增加</button></td>
        <tr>
            <th>工号</th>
            <th>名称</th>
            <th>身份证</th>
            <th>操作</th>
        </tr>
         <c:forEach items="${managerList}" var="manager">
        <tr>
            <td><input value="${driver.work_num}" name="up_work_num"></td>
            <td><input value="${driver.name}" name="up_name"></td>
            <td><input value="${driver.id_num}" name="up_id_num"></td>

            <td><button>修改</button></td>
            <td><button>删除</button></td>
        </tr>
         </c:forEach>
    </table>

</body>
</html>
