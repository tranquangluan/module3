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

    <a href="/product?action=create"><input type="button"  value="Create"></a>

    <form action="/product" method="get">
        <input type="text" name="name">
        <input type="submit" value="find">
        <input type="hidden" name="action" value="findByName">
    </form>
    <td><a href="/product?action=delete&id=${p.id}"><input type="button"  value="Delete"></a></td>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th>Update</th>
        <th>Delete</th>
        <th>Detail</th>
    </tr>


    <c:forEach  var="p" items="${products}">
    <tr>
        <td>${p.id}</td>
        <td>${p.name}</td>
        <td>${p.price}</td>
        <td>${p.description}</td>
        <td>${p.manufacturer}</td>
        <td><a href="/product?action=update&id=${p.id}"><input type="button"  value="Update"></a></td>
        <td><a href="/product?action=delete&id=${p.id}"><input type="button"  value="Delete"></a></td>
        <td><a href="/product?action=detail&id=${p.id}"><input type="button"  value="Detail"></a></td>
    </tr>


    </c:forEach>
</table>
</body>
</html>
