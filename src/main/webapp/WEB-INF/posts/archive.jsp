<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page" />
    </jsp:include>
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
                        <a href="/index"><h3 class="site-logo">USWOMENVETS || WELCOME</h3></a>
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
                    <h1>Welcome to Archive Page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>


            <!--Footer-->

            <footer>
                <div class="wrap row small-up-1 medium-up-2">
                    <div class="column">
                        <h4>Contact Info</h4>
                        <hr>
                        <a href="/contact"><span>Contact</span></a>
                        <a href="/about"><span>About</span></a><!--span is here to add a class for styling if possible-->
                    </div>
                    <div class="column">
                        <h4>Social Media</h4>
                        <hr>
                        <a href="http://www.facebook.com/justin.armer.52" target="_blank">Facebook</a>
                        <a href="http://www.twitter.com/ausgrave" target="_blank">Twitter</a>
                        <a href="https://www.github.com/calcious" target="_blank">GitHub</a>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>

<script src="js/foundation.min.js"></script>
<script src="js/foundation.js"></script>
<script src="js/what-input.js"></script>
<script src="js/app.js"></script>
</body>
</html>
