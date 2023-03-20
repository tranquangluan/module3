<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/display_discount" method="post">
    <div>
        <p>Product Description</p>
        <input name="description">
    </div>
    <div>
        <p>Price</p>
        <input name="price">
    </div>
    <div>
        <p>Discount Percent</p>
        <input name="percent">%
    </div>
    <button>Calculate Discount</button>
</form>
</body>
</html>