<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 19/03/2023
  Time: 4:58 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Danh sách khách hàng</h1>
<table>

    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>

    <c:forEach var="c" items = "${listcustomers}" >
        <tr>
            <td>${c.name}</td>
            <td>${c.dateOfBirth}</td>
            <td>${c.address}</td>
            <td>${c.image}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
