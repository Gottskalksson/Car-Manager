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
    <div class="row h-100">
        <div class="col-sm-10 my-auto">
            <form method="post">
                Wybierz auto:
                <form:select name="stringCarId" path="cars" items="${cars}" itemLabel="plateNumber" itemValue="id"/>
                <input type="submit" value="Sprawdź">
                <a href="/dashboard">Powrót do strony głównej</a> <br>
            </form>
            <div class="container">
                <h2 ${hidden}>Lista serwisów:</h2>
                <div class="row">
                    <c:forEach items="${serviceList}" var="service">
                        <div class="card card-block w-25 col-3">
                            <p>${service.car.plateNumber}</p>
                            <p><spring:eval expression="service.serviceDate"/></p>
                            <p>${service.description}</p>
                            <p>${service.totalPrice}</p>
                            <p><a href="/dashboard/services/edit/${service.id}">Edytuj</a></p>
                            <p><a href="/dashboard/services/delete/${service.id}">Usuń</a></p>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
