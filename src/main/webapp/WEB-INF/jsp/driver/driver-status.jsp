<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/7
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>当前状态</title>
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
<table id="table1">
    <tr>
        <th>工号</th>
        <th>姓名</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <tr>
        <td>${driver.id_num}</td>
        <td>${driver.name}</td>
        <td>${driver.status}</td>
        <td><button id="driver_status"></button></td>
    </tr>
</table>
</body>
<script type="text/javascript">
    window.onload=function () {
        var tab=document.getElementById("table1");
        var rows=tab.rows;
        var status=document.getElementById("driver_status");
        for(var i=1;i<rows.length;i++)
        {
            //alert("第"+(i)+"行，第"+(3)+"列的值是:"+rows[i].cells[2].innerHTML);
            var info=rows[i].cells[2].innerHTML;
            //alert(info);

            if(info == "空闲"){
               // alert(1);
                status.onclick=""
                status.innerHTML="出车"
                status.style.color="white"
                status.style.backgroundColor="black"
            }
            else if(info == "出车"){
               // alert(2);
                status.onclick=""
                status.innerHTML="还车"
            }

        }
    }


</script>
</html>
