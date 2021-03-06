<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2021/12/1
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>

</head>
<body class="login-bg">
<div class="login layui-anim layui-anim-up">
    <div class="message">管理员登陆</div>
        <div id="darkbannerwrap"></div>
            <form action="${pageContext.request.contextPath}/user/login-manager" method="post"class="layui-form"onsubmit="return check()">
                <input type="text" placeholder="工号" id="work_num" name="work_num" lay-verify="required"  required="required" class="layui-input"><br/>
                <hr class="hr15">
                <input type="password" placeholder="密码" id="password" name="password" lay-verify="required"  required="required" class="layui-input"><br/>
                <hr class="hr15">
                <input type="submit" value="登录" lay-submit lay-filter="login" style="width:100%;" lay-verify="required"><br/>

            </form>
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
        var worknum=$('#work_num').val();
        var password=$('#password').val();
        var realnum=/^[a-zA-Z0-9]{6,12}$/;
        var realpassword=/^[a-zA-Z0-9]{6,18}$/;
        if (realpassword.test(password) && realnum.test(worknum) ){
            return true;
        }else
            alert("用户名密码格式错误")
        return false;
    }

</script>
</html>
