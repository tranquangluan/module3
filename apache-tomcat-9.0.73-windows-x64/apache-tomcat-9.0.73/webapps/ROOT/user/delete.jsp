<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 15/03/2023
  Time: 9:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <td>ID:</td>
            <input type="text" name="id" value="${product.id}">
        </tr>
    </table>
    <input type="submit" value="remove">
    <input type="hidden" name="action" value="delete">
</form>

</body>
</html>
