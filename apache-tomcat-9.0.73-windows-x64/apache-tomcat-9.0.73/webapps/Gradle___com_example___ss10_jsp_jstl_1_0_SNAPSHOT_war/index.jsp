<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/CustomerServlet" method="post"></form>
<h1>Danh sách khách hàng</h1>
<table>
    <tr>
        <th>Tên</th>
        <th><input type="text" name="name"></th>
        <th>Ngày sinh</th>
        <th><input type="text" name="dayOfBirth"></th>
        <th>Địa chỉ</th>
        <th><input type="text" name="address"></th>
        <th>Ảnh</th>
        <th><input name="image"></th>
    </tr>
</table>

</body>
</html>