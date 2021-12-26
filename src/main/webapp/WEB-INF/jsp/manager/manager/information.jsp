<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员信息</title>
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
                    <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath}/manager/information-manager" method="post">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text"  autocomplete="off" placeholder="工号" name="work_num">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text"  autocomplete="off" placeholder="姓名" name="name">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" autocomplete="off"  placeholder="身份证" name="id_num" >
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
                            <th>工号</th>
                            <th>姓名</th>
                            <th>身份证</th>
                            <th>操作</th>
                        </thead>
                        <tbody>
                        <c:forEach items="${managerList}" var="manager">
                            <tr>
                                <td>${manager.work_num}</td>
                                <td>${manager.name}</td>
                                <td>${manager.id_num}</td>
                                <td>
                                    <a title="编辑"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/manager/jumpToChange?work_num=${manager.work_num}'">
                                        <i class="layui-icon">&#xe642;</i>
                                    </a>
                                    <a title="删除" onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/manager/delete?work_num=${manager.work_num}'">
                                        <i class="layui-icon">&#xe640;</i>
                                    </a>
<%--                                    <button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/manager/jumpToChange?work_num=${manager.work_num}'">修改</button>--%>
<%--                                    <button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/manager/delete?work_num=${manager.work_num}'">删除</button></td>--%>
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
