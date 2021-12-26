<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/8
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>派车表</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/tables.js"></script>

</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath}/manager/information-car-send" method="post" >
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text"  autocomplete="off" placeholder="车牌" name="license">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text"  autocomplete="off" placeholder="工号" name="driver_id">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="datetime-local" name="departure_time"  placeholder="出车时间" autocomplete="off" >
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="datetime-local" name="return_time"  placeholder="还车时间" autocomplete="off" >
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  type="submit" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>

                <div class="layui-card-body ">
                    <table id="table1" class="layui-table layui-form">

                        <thead>
                        <tr>
                            <th>车牌</th>
                            <th>工号</th>
                            <th>出车原因</th>
                            <th>出车时间</th>
                            <th>还车时间</th>
                        </thead>
                        <tbody>
                        <c:forEach items="${carSendList}" var="carSend">
                            <tr>
                                <td>${carSend.license}</td>
                                <td>${carSend.driver_id}</td>
                                <td>${carSend.reason}</td>
                                <td>${carSend.departure_time}</td>
                                <td>${carSend.return_time}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script>
    window.onload=function (){
        var tab=document.getElementById("table1");
        var row=tab.rows;
        for(var i=1;i<row.length;i++) {
            var strtime=row[i].cells[3].innerHTML; //获取时间戳
            strtime=stampToDate(strtime);
            row[i].cells[3].innerHTML=strtime;
            strtime=row[i].cells[4].innerHTML; //获取时间戳
            strtime=stampToDate(strtime);
            if(strtime==0){
                row[i].cells[4].innerHTML='/'
            }
            else{
                row[i].cells[4].innerHTML=strtime;
            }

        }
    }
</script>
</html>
