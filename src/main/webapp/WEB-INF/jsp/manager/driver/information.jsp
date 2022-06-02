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
                    <form class="layui-form layui-col-space5" onsubmit="return check()" action="${pageContext.request.contextPath}/manager/information-driver" method="post">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="work_num"  autocomplete="off" placeholder="工号" name="work_num">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="name" autocomplete="off" placeholder="姓名" name="name">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" type="text" id="id_num" name="id_num"  placeholder="身份证" autocomplete="off" >
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  type="submit" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">
                    <button class="layui-btn" onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/jumpToAdd'"><i class="layui-icon"></i>添加</button>
                </div>
                <div class="layui-card-body ">
                    <table class="layui-table layui-form">

                        <thead>
                        <tr>
                            <th>工号</th>
                            <th>姓名</th>
                            <th>身份证</th>
                            <th>状态</th>
                            <th>操作</th>
                        </thead>
                        <tbody>
                        <c:forEach items="${driverList}" var="driver">
                            <tr>
                                <td>${driver.work_num}</td>
                                <td>${driver.name}</td>
                                <td>${driver.id_num}</td>
                                <td>${driver.status}</td>
                                <td>
                                    <a title="编辑"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/jumpToUpdate?work_num=${driver.work_num}'">
                                        <i class="layui-icon">&#xe642;编辑</i>
                                    </a>
                                    <a title="删除" onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/delete?work_num=${driver.work_num}'">
                                        <i class="layui-icon">&#xe640;删除</i>
                                    </a>
                                </td>
<%--                                    <button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/jumpToUpdate?work_num=${driver.work_num}'">修改</button>--%>
<%--                               <button onclick="javascript:window.location.href='${pageContext.request.contextPath}/manager/driver/delete?work_num=${driver.work_num}'">删除</button></td>--%>
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
    function check() {
        var flag = 0;
        var work_num = $('#work_num').val();
        var name = $('#name').val();
        var id_num = $('#id_num').val();
        var realnum = /^[a-zA-Z0-9]{6,12}$/;
        var realname = /[^0-9]{1,10}/;
        var realid_num = /\d{17}[\d|x]/;
        if (realnum.test(work_num)) {
            if (realname.test(name)) {
                if (realid_num.test(id_num)) {
                    flag=1;
                } else {
                    alert("身份证格式错误")
                }
            } else {
                alert("姓名格式错误")
            }
        } else {
            alert("工号格式错误")
        }
        if (flag == 1) {
            return true;
        } else {
            return false;
        }
    }
</script>
</html>
