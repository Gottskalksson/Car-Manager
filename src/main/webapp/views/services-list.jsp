<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <title>Lista serwisów</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div id="username">Witaj, ${userName}
    <%@include file="sidePanel.jsp"%>
</div>
<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <form:select name="serviceList" path="serviceList" items="${serviceList}" itemLabel="car.plateNumber" itemValue="id"/>
        <div class="card card-block w-25 mx-auto">
            <h2>Lista serwisów:</h2>
            <c:forEach items="${serviceList}" var="service">
                <p>${service.car.plateNumber}</p>
                <p>${service.serviceDate}</p>
                <p>${service.car.brand}</p>
                <p>${service.description}</p>
                <p>${service.totalPrice}</p>
                <p><a href="/dashboard/services/edit/${service.id}">Edytuj</a></p>
                <p><a href="/dashboard/services/delete/${service.id}">Usuń</a></p>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
