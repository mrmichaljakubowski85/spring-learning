<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student Registration Form</title>
</head>

<body>
<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name: <form:input path="lastName"/>
    <br><br>
    Country:
    <form:select path="country">
        <form:options items="${student.countryOptions}" />
    </form:select>

    <br><br>
    Favorite language:
    Java <form:radiobutton path="favoriteLanguage" value="Java" />
    C# <form:radiobutton path="favoriteLanguage" value="C#" />
    Kotlin <form:radiobutton path="favoriteLanguage" value="Kotlin" />

    <br><br>
    Favorite OS:
    Linux <form:checkbox path="operatingSystems" value="Linux" />
    Windows <form:checkbox path="operatingSystems" value="Windows" />
    Mac <form:checkbox path="operatingSystems" value="MAC OS" />

    <br><br>
    <input type="submit" value="Submit"/>


</form:form>
</body>

</html>