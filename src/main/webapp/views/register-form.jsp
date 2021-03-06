<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Rejestracja konta</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>

</head>
<body>

<jsp:include page="headerForMainMenu.jsp"></jsp:include>


<div class="container">
    <div class="row h-100">
        <div class="col-sm-12 my-auto">
            <h1 class="title">Załóż konto</h1>
            <div class="card card-block w-25 mx-auto">
                <form:form modelAttribute="user" method="post" action="/register">
                    <div class="form-group">
                        <form:label path="email">E-Mail: </form:label>
                        <form:input cssClass="form-control" path="email"/><br>
                        <form:errors path="email" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <form:label path="password">Hasło: </form:label>
                        <form:password cssClass="form-control" path="password"/><br>
                        <form:errors path="password" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <form:label path="name">Podaj swoje imię: </form:label>
                        <form:input cssClass="form-control" path="name"/><br>
                        <form:errors path="name" cssClass="error"/>
                    </div>
                    <form:hidden path="id"/>

                    <input type="submit" class="btn-success" value="Załóż konto">

                </form:form>
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
