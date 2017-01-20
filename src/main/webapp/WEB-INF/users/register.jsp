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
<div class="off-canvas-wrapper">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
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
                    <span class="form-error">We apologize, but that username has been taken.</span>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" class="form-control register_field" type="email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <p><em>Must be at least six characters in length</em></p>
                    <input id="password" name="password" class="form-control register_field" type="password">
                    <span class="form-error">Password must be at least six characters in length!</span>
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control register_field" type="password" data-equalto="password">
                    <span class="form-error">Hey, passwords are supposed to match!</span>
                </div>
                <input type="submit" class="btn btn-primary btn-block" id="submit_length_mod_reg" value="Sign up!">

            </form>
                </div>
            </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>