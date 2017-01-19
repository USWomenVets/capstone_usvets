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
                    <h1>Welcome to Profile page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>


            <section class="main wrap row">
                <div class="container text-center">
                    <h1>Welcome, ${sessionScope.user.username}!</h1>

                <div>
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-9">
                            <div>
                                <div class="col-md-9"><img src="//placehold.it/100" class="avatar img-circle" alt="avatar"></div>
                                <h6>Upload a different photo</h6>

                                <div id="photo" class="text-center"><input class="form-control" type="file"></div>
                            </div>
                        </div>

                        <!-- edit form column -->
                        <div class="col-md-9 personal-info text-center">
                            <h3 class="text-center">Personal info</h3>
                            <hr>
                            <form class="form-horizontal" role="form" method="post">

                                <div class="row">
                                <div class="form-group">
                                    <label class="small-6 columns control-label name">USERNAME:</label>
                                    <div class="col-lg-8">
                                        <p><strong>${user.getUsername()}</strong></p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="small-6 columns control-label">EMAIL:</label>
                                    <div class="col-lg-8">
                                        <p><strong>${user.getEmail()}</strong></p>
                                    </div>
                                </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <label class="small-6 columns control-label name">FIRST NAME:</label>
                                        <div class="col-lg-8">
                                            <p><strong>${user.getFirstName()}</strong></p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="small-6 columns control-label name">LAST NAME:</label>
                                        <div class="col-lg-8">
                                            <p><strong>${user.getLastName()}</strong></p>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <br>
                            <h3 class="text-center">Friend's List</h3>
                            <hr>
                        </div>
                    </div>
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
                    <br>
                    <a href="/index">@Copyright 2017 Team Allies</a>
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