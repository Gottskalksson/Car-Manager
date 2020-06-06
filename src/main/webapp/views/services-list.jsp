<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <title>Lista serwisów</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">
    <div class="row h-25">
        <div class="col-sm-10 my-auto">
            Wybierz auto:
            <c:forEach items="${cars}" var="car">
                <div class="checkbox">
                    <label><input type="checkbox" checked value="${car.id}"> ${car.plateNumber} </label>
                </div>
            </c:forEach>
            <button id="checked" class="btn-info">Zaznacz wszystkie</button>
            <button id="unchecked" class="btn-info">Odznacz wszystkie</button>
        </div>
    </div>
    <div class="container" id="results">
        <h2>Lista serwisów:</h2>
        <div class="row">
            <c:forEach items="${serviceList}" var="service">
                <div class="card card-block w-25 col-3 service ${service.car.id}">
                    <p>${service.car.plateNumber}</p>
                    <p><spring:eval expression="service.serviceDate"/></p>
                    <p>${service.description}</p>
                    <p>${service.totalPrice}</p>
                    <button class="btn-secondary"
                            onclick="window.location.href ='/dashboard/services/edit/${service.id}'">Edytuj
                    </button>
                    <button class="btn-danger"
                            onclick="window.location.href ='/dashboard/services/delete/${service.id}'">Usuń
                    </button>

                </div>
            </c:forEach>
        </div>
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<c:url value="/resources/appToCheckCars.js" />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>


</body>
</html>
