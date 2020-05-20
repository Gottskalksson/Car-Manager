<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj samochód</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<%--<c:set var="now" value="<% = new java.util.Date() %>"/>--%>
<form:form modelAttribute="car" method="post" action="/dashboard/cars/edit">
    <form:label path="brand">Marka: </form:label>
    <form:input path="brand"/><br>
    <form:errors path="brand" cssClass="errorMessage"/><br>

    <form:label path="model">Model: </form:label>
    <form:input path="model"/><br>
    <form:errors path="model" cssClass="errorMessage"/><br>

    <form:label path="plateNumber">Numer rejestracyjny: </form:label>
    <form:input path="plateNumber"/><br>
    <form:errors path="plateNumber" cssStyle="visibility: ${hidden}"/><br>

    <form:label path="yearProduction">Rok produkcji: </form:label>
    <form:input path="yearProduction"/><br>
    <form:errors path="yearProduction" cssClass="errorMessage"/><br>

    <form:label path="engineCapacity">Pojemność silnika: </form:label>
    <form:input path="engineCapacity"/><br>
    <form:errors path="engineCapacity" cssClass="errorMessage"/><br>

    <form:label path="horsePower">Moc KM: </form:label>
    <form:input path="horsePower"/><br>
    <form:errors path="horsePower" cssClass="errorMessage"/><br>

    <form:label path="motDate">Przegląd ważny do: </form:label>
    <form:input path="motDate"/><br>
    <form:errors path="motDate" cssClass="errorMessage"/><br>

    <form:label path="insuranceDate">Ubezpieczenie ważne do: </form:label>
    <form:input path="insuranceDate"/><br>
    <form:errors path="insuranceDate" cssClass="errorMessage"/><br>

    <form:hidden path="id"/>
    <%--    <form:hidden path="user"/>--%>

    <input type="submit" value="Zapisz">

</form:form>

<a href="${pageContext.request.contextPath}/dashboard/cars/list">Powrót do listy</a>
</body>
</html>
