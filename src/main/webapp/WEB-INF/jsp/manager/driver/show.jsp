<%--
  User: jjt
  Date: 2021/12/24
  Time: 17:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>table</title>
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.9.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/tables.js"></script>
</head>
<body>
<div id="table" style="width: 600px; height: 400px;"></div>
<script type='text/javascript'>
    get_driver_data();
</script>
</body>
</html>
