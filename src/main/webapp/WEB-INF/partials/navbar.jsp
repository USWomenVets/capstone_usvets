<%--
  Created by IntelliJ IDEA.
  User: Calcious
  Date: 1/17/17
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<nav class="navbar navbar-default">--%>
    <%--<div class="container-fluid">--%>
        <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
        <%--<div class="navbar-header">--%>
            <%--<a class="navbar-brand welcome_title" href="/index">BKJ Productions || ADLSTR</a>--%>
            <%--<a class="navbar-brand" href="/ads" id="pending_ads">BROWSE ADS</a>--%>
            <%--<div class="form-group" id="nav_search">--%>
                <%--<form role="search" action="/ads" method="get">--%>
                    <%--<input type="text" placeholder="browse" class="form-control" name="q" value="">--%>
                <%--</form>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<c:choose>--%>
                <%--<c:when test="${sessionScope.user != null}">--%>
                    <%--<li><a class="success" href="/ads/create">Create AD</a></li>--%>
                    <%--<li><a class="primary" href="/profile">Profile</a></li>--%>
                    <%--<li><a href="/logout">Logout</a></li>--%>
                <%--</c:when>--%>
                <%--<c:otherwise>--%>
                    <%--<li><a id="sign_up" href="/register">Sign-up!</a></li>--%>
                    <%--<li><a href="/login">Login</a></li>--%>
                <%--</c:otherwise>--%>
            <%--</c:choose>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>
<div class="fixed">
    <nav class="top-bar" data-topbar role="navigation">
        <ul class="title-area">
            <li class="name">
                <h1><a href="#">Company Name</a></h1>
            </li>
        </ul>
        <section class="top-bar-section">
            <ul class="right">
                <li class="active">
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
                <li>
                    <a href="#">Register</a>
                </li>
                <li>
                    <a href="#">Login</a>
                </li>

                <li class="has-dropdown">
                    <a href="#">Resources</a>
                </li>

            </ul>
        </section>


    </nav>
</div>
<script src="../../js/foundation.min.js"></script>
<script src="../../js/jquery.js"></script>
<script src="../../js/app.js"></script>