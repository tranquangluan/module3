<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 20/03/2023
  Time: 3:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate</title>
</head>
<body>
<h1>Result</h1>
<p><%=request.getAttribute("first_operand")%> <%=request.getAttribute("operator")%> <%=request.getAttribute("second_operand")%> = <%=request.getAttribute("result")%></p>
</body>
</html>
