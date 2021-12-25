<%--
  User: jjt
  Date: 2021/12/24
  Time: 17:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>table</title>
    <script src="${pageContext.request.contextPath}/static/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/tables.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/table.css">
</head>
<body>
<div class="table" id="table1"></div>
<div class="table" id="table2"></div>
<script type='text/javascript'>
    get_car_data();
</script>
</body>
</html>
