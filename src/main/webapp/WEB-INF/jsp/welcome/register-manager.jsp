<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2021/12/1
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员注册</title>
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
        <form action="${pageContext.request.contextPath}/user/register-manager" method="post" class="layui-form"onsubmit="return check()">
            <div class="layui-form-item">
                <label for="work_num" class="layui-form-label">
                    <span class="x-red">*</span>工号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="work_num" name="work_num" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为您唯一的登入名
                </div>
            </div>
            <div class="layui-form-item">
                <label for="name" class="layui-form-label">
                    <span class="x-red">*</span>姓名
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="name" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="id_num" class="layui-form-label">
                    <span class="x-red">*</span>身份证号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="id_num" name="id_num" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="password" class="layui-form-label">
                    <span class="x-red">*</span>密码
                </label>
                <div class="layui-input-inline">
                    <input type="password" id="password" name="password" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    6到16个字符
                </div>
            </div>
            <div class="layui-form-item">
                <label  class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="" >
                    确认
                </button>
            </div>
        </form>

<%--        <form action="${pageContext.request.contextPath}/user/register-manager" method="post">--%>
<%--            姓名<input type="text" name="name"><br/>--%>
<%--            身份证号<input type="text" name="id_num"><br/>--%>
<%--            工号<input type="text" name="work_num"><br/>--%>
<%--            密码<input type="text" name="password"><br/>--%>
<%--            <input type="submit" value="登录"><br/>--%>
<%--        </form>--%>
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
        var work_num = $('#work_num').val();
        var name = $('#name').val();
        var id_num = $('#id_num').val();
        var password = $('#password').val();
        var realnum = /^[a-zA-Z0-9]{6,12}$/;
        var realname = /[^0-9]{1,10}/;
        var realid_num = /\d{17}[\d|x]/;
        var realpassword = /^[a-zA-Z0-9]{6,18}$/
        if (realnum.test(work_num)) {
            if (realname.test(name)) {
                if (realid_num.test(id_num)) {
                    if (realpassword.test(password)) {
                        flag = 1;
                    } else {
                        alert("密码格式错误")
                    }
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
