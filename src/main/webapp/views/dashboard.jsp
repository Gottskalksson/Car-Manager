<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<div id="username">Witaj, ${userName}</div>
<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <div class="card card-block w-25 mx-auto">
            <c:forEach items="${serviceList}" var="service">
                <p>${service.car}</p>
                <p>${service.description}</p>
                <p>${service.totalPrice}</p>
                <p><a href="/dashboard/service/${service.id}">Szczegóły</a></p>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
