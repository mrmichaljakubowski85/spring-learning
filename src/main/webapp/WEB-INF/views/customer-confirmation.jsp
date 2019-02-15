<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 2019-02-05
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>
    The customer is confirmed: ${customer.firstName} ${customer.lastName}
    <br>
    Free passes: ${customer.freePasses}
    <br>
    Postal code: ${customer.postalCode}
    <br>
    Course code: ${customer.courseCode}
</body>
</html>
