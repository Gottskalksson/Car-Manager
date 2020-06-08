<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Dodaj/Edytuj serwis</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="/resources/main.css">

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <div class="card card-block w-50 mx-auto">


            <form:form cssClass="form-horizontal" modelAttribute="service" method="post"
                       action="/dashboard/services/add">

                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="car">Wybierz auto: </form:label>
                    <div class="col-sm-10">
                        <form:select cssClass="form-control" path="car" items="${cars}" itemLabel="plateNumber"
                                     itemValue="id"/></div>
                </div>
                <div class="form-group">
                    <form:label cssClass="control-label col-sm-2" path="typeService">Wybierz typ serwisu: </form:label>
                    <div class="col-sm-10">
                        <form:select cssClass="form-control" path="typeService" items="${typeService}"/></div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" id="motLabel" style="visibility: visible">Data ważności
                        przeglądu</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="motDate" name="motDate" style="visibility: visible"><br>
                    </div>
                </div>
                <div class="form-group">
                <form:label cssClass="control-label col-sm-2" path="description">Opis serwisu: </form:label>
                <div class="col-sm-10">
                    <form:textarea cssClass="control-form" path="description"/><br>
                <form:errors path="description" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                <form:label cssClass="control-label col-sm-2" path="priceForItems">Cena za części: </form:label>
                <div class="col-sm-10">
                    <form:input cssClass="control-form" path="priceForItems"/><br>
                <form:errors path="priceForItems" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                <form:label cssClass="control-label col-sm-2" path="priceForJob">Cena za robociznę: </form:label>
                <div class="col-sm-10">
                    <form:input cssClass="control-form" path="priceForJob"/><br>
                <form:errors path="priceForJob" cssClass="errorMessage"/></div>
                </div>

                <div class="form-group">
                <form:label cssClass="control-label col-sm-2" path="serviceDate">Data serwisu: </form:label>
                <div class="col-sm-10">
                    <form:input cssClass="control-form" path="serviceDate"/><br>
                <form:errors path="serviceDate" cssClass="errorMessage"/></div>
                </div>


                <form:hidden path="id"/>

                <input type="submit" value="Zapisz">

            </form:form>
            <a href="${pageContext.request.contextPath}/dashboard/services/list">Powrót do listy</a>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<c:url value="/resources/app.js" />"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>


</body>
</html>
