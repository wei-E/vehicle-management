<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/6
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆信息修改</title>
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
        <form class="layui-form" action="${pageContext.request.contextPath}/manager/car/update" method="post" onsubmit="return check()">
            <div class="layui-form-item">
                <label for="license" class="layui-form-label">
                    <span class="x-red">*</span>车牌
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="license" name="license" value="${car.license}" readonly="readonly" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="type" class="layui-form-label">
                    <span class="x-red">*</span>车辆型号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="type" name="type" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="${car.type}" >
                </div>
            </div>
            <div class="layui-form-item">
                <label for="status" class="layui-form-label">
                    <span class="x-red">*</span>状态
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="status" name="status" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="${car.status}" readonly="readonly">
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
<script>
    function check() {
        var flag = 0;
        var type = $('#type').val();
        var realtype=/^[重中轻微]{1}型车/;
            if (realtype.test(type)) {
                flag=1;
            } else {
                alert("车辆型号格式错误")
            }

        if (flag == 1) {
            return true;
        } else {
            return false;
        }
    }

</script>
</html>
