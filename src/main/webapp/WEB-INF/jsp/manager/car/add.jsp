<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/6
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆增加</title>
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
        <form class="layui-form" action="${pageContext.request.contextPath}/manager/car/add" method="post"onsubmit="return check()">
            <div class="layui-form-item">
                <label for="license" class="layui-form-label">
                    <span class="x-red">*</span>车牌
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="license" name="license" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label for="type" class="layui-form-label">
                    <span class="x-red">*</span>车辆型号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="type" name="type" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label  class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    增加
                </button>
            </div>
        </form>
    </div>
</div>

</body>
<script type="text/javascript">
    window.onload=function (){
        var message='${message}';
        if( message != null && message != ""){
            alert(message);
        }
    }
    function check() {
        var flag = 0;
        var license = $('#license').val();
        var type = $('#type').val();
        var realtype=/^[重中轻微]{1}型车/;
        var reallicense=/^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$/;
        if (reallicense.test(license)) {
            if (realtype.test(type)) {
                flag=1;
            } else {
                alert("车辆型号格式错误")
            }
        } else {
            alert("车牌格式错误")
        }
        if (flag == 1) {
            return true;
        } else {
            return false;
        }
    }

</script>
</html>
