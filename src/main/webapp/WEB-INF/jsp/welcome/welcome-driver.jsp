<%--
  User: jjt
  Date: 2021/12/3
  Time: 10:27
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>驾驶员登陆</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>

</head>
<body class="index">
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/driver/welcome">驾驶员登陆</a></div>
        <div class="left_open">
            <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
        </div>

        <ul class="layui-nav right" lay-filter="">
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/">退出</a></dd>
            </li>
        </ul>
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="驾驶员管理">&#xe6b8;</i>
                        <cite>驾驶员管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('车辆信息','${pageContext.request.contextPath }/driver/info-car')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>车辆信息</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('当前状态','${pageContext.request.contextPath }/driver/status',true)">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>当前状态</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('我的信息','${pageContext.request.contextPath }/driver/information')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>我的信息</cite></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
            <ul class="layui-tab-title">
                <li class="home">
                    <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
            <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                <dl>
                    <dd data-type="this">关闭当前</dd>
                    <dd data-type="other">关闭其它</dd>
                    <dd data-type="all">关闭全部</dd></dl>
            </div>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src='${pageContext.request.contextPath }/driver/welcome1' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                </div>
            </div>
            <div id="tab_show"></div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <style id="theme_style"></style>

</body>
</html>
