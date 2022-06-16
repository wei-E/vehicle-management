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
                    <form class="layui-form layui-col-space5"   action="${pageContext.request.contextPath}/manager/information-violation" method="post" >
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="license" autocomplete="off" placeholder="车牌" name="license">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="work_num" autocomplete="off" placeholder="工号" name="work_num">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="name" autocomplete="off" placeholder="姓名" name="name">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="datetime-local" name="pre_time"  placeholder="违规时间" autocomplete="off" >
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="datetime-local" name="next_time"  placeholder="违规时间" autocomplete="off" >
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="fines" autocomplete="off" placeholder="罚款金额" name="fines">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  type="submit" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">
                    <button class="layui-btn"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/violation/jumpToAdd'"><i class="layui-icon"></i>添加</button>
                </div>
                <div class="layui-card-body ">
                    <table id="table1" class="layui-table layui-form">

                        <thead>
                        <tr>
                            <th>车牌</th>
                            <th>工号</th>
                            <th>姓名</th>
                            <th>原因</th>
                            <th>违规时间</th>
                            <th>罚款金额</th>
                        </thead>
                        <tbody>
                        <c:forEach items="${violationList}" var="violation">
                            <tr>
                                <td>${violation.license}</td>
                                <td>${violation.work_num}</td>
                                <td>${violation.name}</td>
                                <td>${violation.reason}</td>
                                <td>${violation.time}</td>
                                <td>${violation.fines}</td>
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
            var strtime=row[i].cells[4].innerHTML; //获取时间戳
            strtime=stampToDate(strtime);
            row[i].cells[4].innerHTML=strtime;

        }
    }


</script>
</html>
