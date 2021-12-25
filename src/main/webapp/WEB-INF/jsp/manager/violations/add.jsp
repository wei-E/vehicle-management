<%--
  Created by IntelliJ IDEA.
  User: jialj
  Date: 2021/12/15
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>违规信息添加</title>
    meta charset="UTF-8">
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
        <form class="layui-form" action="${pageContext.request.contextPath}/manager/violation/add" method="post">
            <div class="layui-form-item">
                <label for="license" class="layui-form-label">
                    <span class="x-red">*</span>车牌
                </label>
                <div class="layui-input-inline">
                    ${license}
                    <input type="text" id="license" name="license" class="layui-input" value="${license}"  hidden="hidden">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="reason" class="layui-form-label">
                    <span class="x-red">*</span>原因
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="reason" name="reason" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label for="time" class="layui-form-label">
                    <span class="x-red">*</span>违规时间
                </label>
                <div class="layui-input-inline">
                    <input type="datetime-local" id="time" name="time" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" >
                </div>
            </div>
            <div class="layui-form-item">
                <label for="fines" class="layui-form-label">
                    <span class="x-red">*</span>罚款金额
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="fines" name="fines" required="" lay-verify="phone"
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

<%
    String message=request.getParameter("message");
    if(message!=null){
        out.println(message);
    }
%>
</body>

</html>
