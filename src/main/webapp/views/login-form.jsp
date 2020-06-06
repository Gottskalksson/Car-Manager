<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Zaloguj się</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<jsp:include page="headerForMainMenu.jsp"></jsp:include>


<div class="container">
    <div class="row h-100">
        <div class="col-sm-12 my-auto">
            <h1>Zaloguj się</h1>
            <div class="card card-block w-25 mx-auto">
                <div style="color: red; font-weight: bolder">
                    <c:if test="${not empty errorMessage}">
                        <c:out value="${errorMessage}"/>
                    </c:if>
                </div>
                <form method="post" action="/login">
                    <div class="form-group">
                        <label for="email">Adres e-mail:</label>
                        <input type="text" id="email" class="form-control" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Hasło: </label>
                        <input type="password" id="password" name="password" class="form-control">
                    </div>
                    <input type="submit" class="btn-success" value="Zaloguj się">
                </form>

            </div>
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
