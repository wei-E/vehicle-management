<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员信息修改</title>
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
    <div class="layui-row">
        <form class="layui-form" action="${pageContext.request.contextPath}/manager/manager/update" method="post">
            <div class="layui-form-item">
                <label for="work_num" class="layui-form-label">
                    <span class="x-red">*</span>工号
                </label>
                <div class="layui-input-inline">
                    ${manager.work_num}
                    <input type="text" id="work_num" name="work_num" value="${manager.work_num}" hidden="hidden">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="name" class="layui-form-label">
                    <span class="x-red">*</span>姓名
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="name" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="${manager.name}">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="password" class="layui-form-label">
                    <span class="x-red">*</span>密码
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="password" name="password" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="${manager.password}">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="id_num" class="layui-form-label">
                    <span class="x-red">*</span>身份证
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="id_num" name="id_num" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="${manager.id_num}">
                </div>
            </div>
            <div class="layui-form-item">
                <label  class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    修改
                </button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
