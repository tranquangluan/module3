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
    <title>Create</title>
</head>
<body>
    <h1>Create Product</h1>
    <form action="/product" method="post">
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="description"></td>
            </tr>

            <tr>
                <td>Manufacturer</td>
                <td><input type="text" name="manufacturer"></td>
            </tr>

        </table>
        <input type="submit" value="add">
        <input type="hidden" name="action" value="create">
    </form>
</body>
</html>
