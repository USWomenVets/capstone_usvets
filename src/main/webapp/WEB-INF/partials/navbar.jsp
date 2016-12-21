<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand welcome_title" href="/index">BKJ Productions || ADLSTR</a>
            <a class="navbar-brand" href="/ads" id="pending_ads">BROWSE ADS</a>
                <div class="form-group" id="nav_search">
                    <form role="search" action="/ads" method="get">
                    <input type="text" placeholder="browse" class="form-control" name="q" value="">
                    </form>
                </div>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:choose>
            <c:when test="${sessionScope.user != null}">
                <li><a class="success" href="/ads/create">Create AD</a></li>
                <li><a class="primary" href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:when>
                <c:otherwise>
                    <li><a id="sign_up" href="/register">Sign-up!</a></li>
                    <li><a href="/login">Login</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</nav>
