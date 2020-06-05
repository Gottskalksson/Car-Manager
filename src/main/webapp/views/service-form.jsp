<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pl">
<head>
    <title>Dodaj/Edytuj serwis</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <div class="card card-block w-50 mx-auto">


            <form:form modelAttribute="service" method="post" action="/dashboard/services/add">

                <form:label path="car">Wybierz auto: </form:label>
                <form:select path="car" items="${cars}" itemLabel="plateNumber" itemValue="id"/><br>

                <form:label path="typeService">Wybierz typ serwisu: </form:label>
                <form:select path="typeService" items="${typeService}"/>

                <label class="label mot" id="motLabel" style="visibility: visible">Data ważności przeglądu</label>
                <input type="text" id="motDate" name="motDate" style="visibility: visible"><br>

                <form:label path="description">Opis serwisu: </form:label>
                <form:textarea path="description"/><br>
                <form:errors path="description" cssClass="errorMessage"/><br>

                <form:label path="priceForItems">Cena za części: </form:label>
                <form:input path="priceForItems"/><br>
                <form:errors path="priceForItems" cssClass="errorMessage"/><br>

                <form:label path="priceForJob">Cena za robociznę: </form:label>
                <form:input path="priceForJob"/><br>
                <form:errors path="priceForJob" cssClass="errorMessage"/><br>

                <form:label path="serviceDate">Data serwisu: </form:label>
                <form:input path="serviceDate"/><br>
                <form:errors path="serviceDate" cssClass="errorMessage"/><br>


                <form:hidden path="id"/>

                <input type="submit" value="Zapisz">

            </form:form>
            <a href="${pageContext.request.contextPath}/dashboard/services/list">Powrót do listy</a>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<c:url value="/resources/app.js" />"></script>

</body>
</html>
