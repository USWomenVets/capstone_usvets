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


            <!--Main Section-->
            <section class="main">
                <div class="wrap">
            <form action="/register" method="post">
                <c:if test="${sessionScope.errorMessage != null}">
                    <div class="callout alert">
                        <h5>We must apologize...</h5>
                        <p>The username or email you have entered is already in our system--please choose another</p>
                    </div>
                </c:if>
                <c:if test="${sessionScope.errorMessageEmpty != null}">
                    <div class="callout alert">
                        <h5>We must apologize...</h5>
                        <p>The passwords you have entered do not match</p>
                    </div>
                </c:if>
                <h3>Welcome</h3>
                <p><strong>Please fill out your information</strong></p>
                <br>
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
                    <input id="username" name="username" class="form-control register_field" type="text" required>
                    <span class="form-error">We apologize, but that username has been taken.</span>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" class="form-control register_field" type="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <p><em>Must be at least six characters in length</em></p>
                    <input id="password" name="password" class="form-control register_field" type="password" required>
                    <span class="form-error">Password must be at least six characters in length!</span>
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control register_field" type="password" data-equalto="password" required>
                    <span class="form-error">Hey, passwords are supposed to match!</span>
                </div>
                <input type="submit" class="large button" value="Sign up!">

            </form>
                </div>
            </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>