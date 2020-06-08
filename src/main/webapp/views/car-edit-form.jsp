<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj samochód</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link type="text/css" rel="stylesheet" href="/resources/main.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <div class="card card-block w-50 mx-auto">
            <form:form cssClass="form-horizontal" modelAttribute="car" method="post" action="/dashboard/cars/edit">
                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="brand">Marka: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="brand"/><br>
                        <form:errors path="brand" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="model">Model: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="model"/><br>
                        <form:errors path="model" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="plateNumber">Numer rejestracyjny: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="plateNumber"/><br>
                        <form:errors path="plateNumber" cssClass="errorMessage" cssStyle="visibility: ${hidden}"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="yearProduction">Rok produkcji: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="yearProduction"/><br>
                        <form:errors path="yearProduction" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2"
                                path="engineCapacity">Pojemność silnika w cm<sup>3</sup>: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="engineCapacity"/><br>
                        <form:errors path="engineCapacity" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="horsePower">Moc KM: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="horsePower"/><br>
                        <form:errors path="horsePower" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="motDate">Przegląd ważny do: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="motDate"/><br>
                        <form:errors path="motDate" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2"
                                path="insuranceDate">Ubezpieczenie ważne do: </form:label>
                    <div class="col-sm-10">
                        <form:input cssClass="control-form" path="insuranceDate"/><br>
                        <form:errors path="insuranceDate" cssClass="errorMessage"/></div>
                </div>

                <form:hidden path="id"/>

                <input type="submit" class="btn-success" value="Zapisz">

            </form:form>
            <a href="${pageContext.request.contextPath}/dashboard/cars/list">Powrót do listy</a>
        </div>
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
