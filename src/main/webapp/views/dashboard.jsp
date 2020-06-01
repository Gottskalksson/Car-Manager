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
            <table>
                <ul>
                    <li><a href="/dashboard/user/edit">Edycja konta</a></li>
                    <li><a href="/dashboard/services/add">Dodaj serwis</a></li>
                    <li><a href="/dashboard/services/list">Lista serwisów</a></li>
                    <li><a href="/dashboard/cars/list">Lista samochodów</a></li>
                    <li><a href="/logout">Wyloguj się</a></li>
                </ul>
            </table>
        </div>
    </div>
</div>
</body>
</html>
