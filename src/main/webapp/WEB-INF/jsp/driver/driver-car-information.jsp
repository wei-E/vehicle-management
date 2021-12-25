<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/5
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>车辆信息</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <!-- <link rel="stylesheet" href="./css/theme5.css"> -->
    <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath}/driver/info-car" method="post">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text"  autocomplete="off" placeholder="车牌" name="license">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text"  autocomplete="off" placeholder="车辆型号" name="type">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  type="submit" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-body ">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>车牌</th>
                            <th>车辆型号</th>
                            <th>状态</th>
                            <th>操作</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${carList}" var="car">
                        <tr>
                            <td>${car.license}</td>
                            <td>${car.type}</td>
                            <td>${car.status}</td>
                            <td class="td-manage">
                                <a onclick="javascript:window.location.href='${pageContext.request.contextPath}/driver/driver-car-send?license=${car.license}'"  title="出车">
                                    <i class="layui-icon">&#xe601;</i>
                                </a>
                            </td>
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
</html>
