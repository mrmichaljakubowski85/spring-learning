<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>Student Confirmation</head>
<body>
    The student is confirmed: ${student.firstName} ${student.lastName}
<br><br>

Country: ${student.country}

<br><br>

Favorite language: ${student.favoriteLanguage}

<br><br>

Operating systems:

<ul>
    <c:forEach var="system" items="${student.operatingSystems}">
        <li>${system}</li>
    </c:forEach>

</ul>

</body>
</html>