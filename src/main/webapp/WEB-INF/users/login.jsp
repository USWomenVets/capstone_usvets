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
                    <h1>Welcome to Login page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

            <section class="main">
                <div class="wrap">
                    <div class="container">
                        <form action="/login" method="POST">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input id="username" name="username" class="form-control register_field" type="text">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input id="password" name="password" class="form-control register_field" type="password">
                            </div>
                            <input type="submit" class="btn btn-primary btn-block" id="submit_length_mod_in" value="Log In">
                        </form>
                        <br>
                        <p>Don't have a profile, yet? <a href="/register">Join up!</a></p>
                    </div>
                </div>
            </section>

    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>
