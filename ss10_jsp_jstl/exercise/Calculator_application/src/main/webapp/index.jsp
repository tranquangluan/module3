<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/calculator" method="post">
    <h4>Calculator</h4>
    <h4>First operand</h4>
    <input type="text" name="first_operand">
    <h4>Operator:</h4>
    <select name="operator">
        <option value="+">Addition</option>
        <option value="-">Subtraction</option>
        <option value="*">Multiple</option>
        <option value="/">Division</option>
    </select>
    <br>
    <h4>Second operand</h4>
    <input type="text" name="second_operand">
    <input type="submit" value="calculate">

</form>
</body>
</html>