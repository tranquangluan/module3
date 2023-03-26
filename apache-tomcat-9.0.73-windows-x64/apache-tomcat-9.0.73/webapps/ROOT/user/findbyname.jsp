<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 15/03/2023
  Time: 9:09 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Find By Name</title>
</head>
<body>
<h1>Find By name</h1>

<table>
    <tr>
        <td>ID</td>
        <td>${product.id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${product.name}</td>
    </tr>
    <tr>
        <td>Price</td>
        <td>${product.price}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${product.description}</td>
    </tr>
    <tr>
        <td>Manufacturer</td>
        <td>${product.manufacturer}</td>
    </tr>

</table>

</body>
</html>
