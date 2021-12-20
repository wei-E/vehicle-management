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
    <title>历史维修表</title>
</head>
<body>
<form action="" method="post">
    车牌:<input type="text" name="license"><br>
    累计出借时间:<input type="text" name="time"><br>
    <input type="submit" value="find">
</form>
<table id="table1">
    <tr>
        <th>车牌</th>
        <td>累计出借时间</td>
        <th>操作</th>
    </tr>
    <c:forEach items="" var="">
        <tr>
            <td></td>
            <td></td>
            <td><button id="status"></button></td>       //累计时间大于300小时提醒需要保养 否则正常
        </tr>
    </c:forEach>
</table>
</body>
<script>
    window.onload=function (){
        var tab=document.getElementById("table1");
        var row=tab.rows;
        var status=document.getElementById("status");
            for(var i=1;i<row.length;i++){
                var info=row[i].cells[1].innerHTML;
                if(info>=300){
                    alert("有车需要保养")
                    status.innerHTML="需要保养"
                    status.onclick=""
                    status.style.color="red"
                }
                else{
                    status.innerHTML="正常"
                    status.onclick=""
                }
            }
    }
</script>
</html>
