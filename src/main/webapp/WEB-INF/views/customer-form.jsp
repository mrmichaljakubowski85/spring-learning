<%--
  Created by IntelliJ IDEA.
  User: Tom
  Date: 2019-02-05
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<form:form action="processForm" modelAttribute="customer">
    <br><br>
    First name: <form:input path="firstName"/>
    <br><br>
    Last name(*): <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br><br>
    Free passes: <form:input path="freePasses"/>
    <form:errors path="freePasses" cssClass="error"/>
    <br><br>

    Postal Code: <form:input path="postalCode"/>
    <form:errors path="postalCode" cssClass="error"/>
    <br><br>

    Course code: <form:input path="courseCode"/>
    <form:errors path="courseCode" cssClass="error"/>

    <br><br>
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>
