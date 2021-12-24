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
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <table class="layui-table layui-form" id="table1">
                        <thead>
                        <tr>
                            <th>工号</th>
                            <th>姓名</th>
                            <th>状态</th>
                            <th>操作</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${driver.id_num}</td>
                                <td>${driver.name}</td>
                                <td>${driver.status}</td>
                                <td><button id="driver_status1" onclick="javascript:window.location.href='${pageContext.request.contextPath}/driver/info-car'">出车</button>
                                    <button id="driver_status2" onclick="javascript:window.location.href='${pageContext.request.contextPath}/driver/in-car'">还车</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    var tab=document.getElementById("table1");
    var rows=tab.rows;
    var status1=document.getElementById("driver_status1");
    var status2=document.getElementById("driver_status2");
    window.onload=function (){
        for(var i=1;i<rows.length;i++) {
            var info=rows[i].cells[2].innerHTML;
            // alert(info)
            if(info == "出车"){
                status1.style.display="none"
            }
            else if(info=="空闲"){
                status2.style.display="none"
                status2.style.color="white"
                status2.style.backgroundColor="black"
            }
        }
    }
</script>
</html>
