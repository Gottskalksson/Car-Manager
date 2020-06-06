<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<header>
    <nav class="navbar navbar-dark bg-primary navbar-expand-md">
        <a class="navbar-brand" href="/dashboard"><img src="<c:url value="/resources/car-logo.png" />" width="30" height="30"
                                                       alt="">CarManager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainmenu" aria-controls="mainmenu" aria-expanded="false">
            <span class="navbar-toggler-icon">
            </span>
        </button>

        <div class="collapse navbar-collapse" id="mainmenu">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/dashboard">Start</a>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="/dashboard#" data-toggle="dropdown" role="button" aria-expanded="false"
                       id="carsubmenu" aria-haspopup="true">Samochody</a>

                    <div class="dropdown-menu" aria-labelledby="carsubmenu">
                        <a class="dropdown-item" href="/dashboard/cars/add">Dodaj auto</a>
                        <a class="dropdown-item" href="/dashboard/cars/list">Lista aut</a>
                    </div>

                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="/dashboard#" data-toggle="dropdown" role="button" aria-expanded="false"
                       id="servicessubmenu" aria-haspopup="true">Serwisy</a>

                    <div class="dropdown-menu" aria-labelledby="servicessubmenu">
                        <a class="dropdown-item" href="/dashboard/services/add">Dodaj serwis</a>
                        <a class="dropdown-item" href="/dashboard/services/list">Lista serwisów</a>
                    </div>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/dashboard/user/edit">Edycja konta</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout" style="color: red">Wyloguj się</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
