<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edycja użytkownika</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<form:form modelAttribute="user" method="post" action="/dashboard/user/edit">
    <form:label path="email">E-Mail: </form:label>
    <form:input path="email"/><br>
    <form:errors path="email" cssStyle="visibility: ${hidden}"/><br>

    <form:label path="name">Podaj swoje imię: </form:label>
    <form:input path="name"/><br>
    <form:errors path="name" cssClass="error"/><br>

    <form:hidden path="id"/>

    <input type="submit" value="Załóż konto">

</form:form>
<a href="${pageContext.request.contextPath}/dashboard/user/password">Zmiana hasła</a>
</body>
</html>
