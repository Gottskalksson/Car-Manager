<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<jsp:include page="headerForMainMenu.jsp"></jsp:include>


<div class="container">
    <h1 class="title">Zaloguj się</h1>
</div>
<div class="row h-100">
    <div class="col-sm-12 my-auto">
        <div class="card card-block w-25 mx-auto">
            <div style="color: red; font-weight: bolder">
            <c:if test="${not empty errorMessage}">
                <c:out value="${errorMessage}"/>
            </c:if>
            </div>
            <form method="post" action="/login">
                E-Mail: <input type="text" name="email"><br>
                Hasło: <input type="password" name="password"><br>
                <input type="submit" value="Send">
            </form>

        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
</body>
</html>
