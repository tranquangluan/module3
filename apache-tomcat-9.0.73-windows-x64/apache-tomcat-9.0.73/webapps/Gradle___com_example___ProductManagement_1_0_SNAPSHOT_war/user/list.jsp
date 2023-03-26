<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 15/03/2023
  Time: 9:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        Display Product
    </title>
</head>
<body>
    <h1>Display Product</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th>Create</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach  var="p" items="productMap">


    <tr>
        <td>${p.id}</td>
        <td>${p.name}</td>
        <td>${p.price}</td>
        <td>${p.description}</td>
        <td>${p.manufacturer}</td>
        <td><a href="/product?action=create">Create</a></td>
        <td><a href="/product?action=update&id=${s.id}">Update</a></td>
        <td><a href="/product?action=delete&id=${s.id}">Delete</a></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
