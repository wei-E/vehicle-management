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
    <title>驾驶员登陆</title>
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
    <div class="message">驾驶员登陆</div>
    <div id="darkbannerwrap"></div>
        <form action="${pageContext.request.contextPath}/user/login-driver" method="post" class="layui-form">
            <input type="text" placeholder="工号" name="work_num" lay-verify="required"  required="required" class="layui-input" lay-verify="required"><br/>
            <hr class="hr15">
            <input type="password" placeholder="密码" name="password" lay-verify="required"  required="required" class="layui-input" lay-verify="required"><br/>
            <hr class="hr15">
            <input type="submit" value="登录" lay-submit lay-filter="login" style="width:100%;" ><br/>
            <%
                String message=request.getParameter("message");
                if(message!=null){
                    out.println(message);
                }
            %>
        </form>
</div>
</body>
</html>
