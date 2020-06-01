<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>
    <title>Strona główna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <div class="card card-block w-25 mx-auto">
        <h1>Witaj, ${userName}</h1>
            <%@include file="sidePanel.jsp" %>
        </div>
<%--        <div class="col-md-10">--%>
<%--            <h2>Ostatnie 5 serwisów:</h2>--%>
<%--            <c:forEach items="${serviceList}" var="service">--%>
<%--                <p><spring:eval expression="service.serviceDate"/></p>--%>
<%--                <p>${service.car.plateNumber}</p>--%>
<%--                <p>${service.car.brand} ${service.car.model}</p>--%>
<%--                <p>${service.description}</p>--%>
<%--                <p>${service.totalPrice}</p>--%>
<%--                <p><a href="/dashboard/service/${service.id}">Szczegóły</a></p>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
    </div>
</div>
</body>
</html>
