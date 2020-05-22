<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista aut</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div id="username">Witaj, ${userName}
    <%@include file="sidePanel.jsp"%>
</div>

<a href="/dashboard/cars/add">Dodaj nowy samochód</a> <br>
<a href="/dashboard">Powrót do strony głównej</a> <br>
<br>
<c:forEach items="${carList}" var="car">

    <p>Numer rejestracyjny: ${car.plateNumber}</p>
    <p>Marka: ${car.brand}</p>
    <p>Model: ${car.model}</p>
    <p>Rok produkcji: ${car.yearProduction}</p>
    <p>Pojemność silnika w cm<sub>3</sub>: ${car.engineCapacity}</p>
    <p>Moc w KM: ${car.horsePower}</p>
    <p>Przegląd ważny do: <spring:eval expression="car.motDate"/></p>
    <p>Ubezpieczenie ważne do: <spring:eval expression="car.insuranceDate"/></p>
    <a href="/dashboard/cars/edit/${car.id}">Edytuj</a>
    <a href="/dashboard/cars/delete/${car.id}">Usuń</a>
    <hr/>

</c:forEach>
</body>
</html>
