<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/20
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>历史出借表</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manager/car-borrow/past" method="post">
    车牌:<input type="text" name="license"><br>
    出借人名称:<input type="text" name="name"><br>
    出借时间:<input type="text" name="pre_time"><br>
    还车时间:<input type="text" name="next_time"><br>
    <input type="submit" value="submit">
</form>
<table>
    <tr>
        <th>车牌</th>
        <th>原因</th>
        <th>出借时间</th>
        <th>还车时间</th>
        <th>出借人名称</th>
    </tr>
    <c:forEach items="${list}" var="each">
        <tr>
            <td>${each.license}</td>
            <td>${each.reason}</td>
            <td>${each.borrow_time}</td>
            <td>${each.return_time}</td>
            <td>${each.name}</td>
        </tr>
    </c:forEach>
</table>
</body>
<script>
    window.onload=function (){
        var tab=document.getElementById("table1");
        var row=tab.rows;
        for(var i=1;i<row.length;i++) {
            var Y,M,D,h,m,s;
            var strtime=row[i].cells[2].innerHTML;    //获取时间戳
            var date=new date(strtime.replace(/-/g, '/')); //转换时间
            Y = date.getFullYear() + '-';
            M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
            D = date.getDate() + ' ';
            h = date.getHours() + ':';
            m = date.getMinutes() + ':';
            s = date.getSeconds();
            row[i].cells[2].innerText=Y+M+D+h+m+s;
        }
    }
</script>
</html>