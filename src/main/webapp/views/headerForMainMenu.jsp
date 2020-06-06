<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<header>
    <nav class="navbar navbar-dark bg-primary navbar-expand-md">
        <a class="navbar-brand" href="/"><img src="<c:url value="/resources/car-logo.png" />" width="30" height="30"
                                                       alt="">CarManager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainmenu" aria-controls="mainmenu" aria-expanded="false">
            <span class="navbar-toggler-icon">
            </span>
        </button>

        <div class="collapse navbar-collapse" id="mainmenu">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Strona główna</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/login">Zaloguj się</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/register">Zarejestruj się</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
