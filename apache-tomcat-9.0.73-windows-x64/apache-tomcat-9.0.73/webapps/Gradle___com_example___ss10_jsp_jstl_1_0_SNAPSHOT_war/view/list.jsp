<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 15/03/2023
  Time: 6:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/CustomerServlet" method="post"></form>
<h1>Danh sách khách hàng</h1>
<table>

    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>

    <c:forEach items = "${listcustomers}" var="c">
        <tr>
            <td>${c.getname}</td>
            <td>${c.dayOfBirth}</td>
            <td>${c.address}</td>
            <td>${c.image}</td>
        </tr>

    </c:forEach>
</table>
</body>
</html>
