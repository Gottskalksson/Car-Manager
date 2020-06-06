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

<jsp:include page="header.jsp"></jsp:include>
<div class="container">
    <h1>Twoje pojazdy</h1>
    <div class="row h100">
        <c:forEach items="${carList}" var="car">
            <div class="col-md-4">
                <p>Numer rejestracyjny: ${car.plateNumber}</p>
                <p>Marka: ${car.brand}</p>
                <p>Model: ${car.model}</p>
                <p>Rok produkcji: ${car.yearProduction}</p>
                <p>Pojemność silnika w cm<sup>3</sup>: ${car.engineCapacity}</p>
                <p>Moc w KM: ${car.horsePower}</p>
                <p>Przegląd ważny do: <spring:eval expression="car.motDate"/></p>
                <p>Ubezpieczenie ważne do: <spring:eval expression="car.insuranceDate"/></p>
                <button class="btn-secondary" onclick="window.location.href ='/dashboard/cars/edit/${car.id}'">Edytuj</button>
                <button class="btn-danger" onclick="window.location.href ='/dashboard/cars/delete/${car.id}'">Usuń</button>
            </div>

        </c:forEach>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</body>
</html>
