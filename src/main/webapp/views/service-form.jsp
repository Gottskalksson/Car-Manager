<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>
    <title>Dodaj/Edytuj serwis</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <div id="username">Witaj, ${userName}
        <%@include file="sidePanel.jsp"%>
    </div>
</div>

<form:form modelAttribute="service" method="post" action="/dashboard/services/add">

    <form:label path="car">Wybierz auto: </form:label>
    <form:select path="car" items="${cars}" itemLabel="plateNumber" itemValue="id" /><br>

    <form:label path="typeService">Wybierz typ serwisu: </form:label>
    <form:select path="typeService" items="${typeService}" /><br>

    <form:label path="description">Opis serwisu: </form:label>
    <form:textarea path="description" /><br>
    <form:errors path="description" cssClass="errorMessage"/><br>

    <form:label path="priceForItems">Cena za części: </form:label>
    <form:input path="priceForItems" /><br>
    <form:errors path="priceForItems" cssClass="errorMessage"/><br>

    <form:label path="priceForJob">Cena za robociznę: </form:label>
    <form:input path="priceForJob" /><br>
    <form:errors path="priceForJob" cssClass="errorMessage"/><br>

    <form:label path="serviceDate">Data serwisu: </form:label>
    <form:input path="serviceDate"/><br>
    <form:errors path="serviceDate" cssClass="errorMessage"/><br>


    <form:hidden path="id"/>

    <input type="submit" value="Zapisz">

</form:form>

</body>
</html>
