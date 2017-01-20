<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
<script src="js/jquery.js"></script>
<div class="off-canvas-wrapper">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

        <div class="off-canvas position-left" id="mobile-menu" data-off-canvas>
            <ul>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><a href="/archive">Board</a></li>
                        <li><a href="/wellness">Wellness</a></li>
                        <li><a href="/employment">Employment</a></li>
                        <li><a href="/events">Events</a></li>
                        <li><a href="/create">Post</a></li>
                        <li><a href="/profile">Profile</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/archive">Board</a></li>
                        <li><a href="/wellness">Wellness</a></li>
                        <li><a href="/employment">Employment</a></li>
                        <li><a href="/events">Events</a></li>
                        <li><a href="/register">Register</a></li>
                        <li><a href="/login">Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>


        <!--Mobile Navigation-->
        <div class="off-canvas-content" data-off-canvas-content>

            <div class="title-bar show-for-small-only">
                <div class="title-bar-left">
                    <button class="menu-icon" type="button" data-open="mobile-menu"></button>
                    <span class="title-bar-title">MENU || <a href="/index">USWOMENVETS</a></span>
                </div>
            </div>

            <!--Navigation-->
            <nav class="top-bar nav-desktop"> <!--nav-desktop specific style as opposed to mobile-->
                <div class="wrap">
                    <div class="top-bar-left">
                        <a href="/index"><h3 class="site-logo">USWOMENVETS || </h3></a>
                    </div>
                    <div class="top-bar-right">
                        <ul class="menu menu-desktop nav-desktop">
                            <c:choose>
                                <c:when test="${sessionScope.user != null}">
                                    <li><a href="/archive">Board</a></li>
                                    <li><a href="/resourceshome">Resources</a></li>
                                    <li><a href="/create">Post</a></li>
                                    <li><a href="/profile">Profile</a></li>
                                    <li><a href="/logout">Logout</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="/archive">Board</a></li>
                                    <li><a href="/resourceshome">Resources</a></li>
                                    <li><a href="/register">Register</a></li>
                                    <li><a href="/login">Login</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </nav>

            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Show page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

            <!--Main Section-->
            <section class="main">
                <div class="wrap">
                    <h1>Hello world!</h1>
                    <c:choose>
                        <c:when test="${sessionScope.user != null}"> <!--LOGGED IN USER-->
                            <a href="/login"><button class="resources button">Comment</button></a>
                            <a href="/employment"><button class="resources button">Edit</button></a>
                            <a href="/events"><button class="resources button">Delete</button></a>
                            <a href="#"><button class="resources button">Upvote</button></a>
                            <a href="#"><button class="resources button">Downvote</button></a>
                        </c:when>
                        <c:otherwise> <!--ANON USER-->
                            <a href="/login"><button class="resources button">Comment</button></a>
                            <a href="/employment"><button class="resources button">Upvote</button></a>
                            <a href="/events"><button class="resources button">Downvote</button></a>
                        </c:otherwise>
                    </c:choose>

                </div>
            </section>


<jsp:include page="/WEB-INF/partials/footer.jsp"/>

<script src="js/foundation.min.js"></script>
<script src="js/foundation.js"></script>
<script src="js/what-input.js"></script>
<script src="js/app.js"></script>
</body>
</html>