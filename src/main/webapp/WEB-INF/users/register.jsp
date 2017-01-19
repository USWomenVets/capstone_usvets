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


            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Register page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>


            <!--Main Section-->
            <section class="main">
                <div class="wrap row">
            <form action="/register" method="post">
                <div class="form-group">
                    <label for="first_name">First Name</label>
                    <input id="first_name" name="first_name" class="form-control register_field" type="text">
                </div>
                <div class="form-group">
                    <label for="last_name">Last Name</label>
                    <input id="last_name" name="last_name" class="form-control register_field" type="text">
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control register_field" type="text">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" class="form-control register_field" type="email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <p><em>Must be at least six characters in length</em></p>
                    <input id="password" name="password" class="form-control register_field" type="password">
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control register_field" type="password">
                </div>
                <input type="submit" class="btn btn-primary btn-block" id="submit_length_mod_reg" value="Sign up!">
            </form>
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