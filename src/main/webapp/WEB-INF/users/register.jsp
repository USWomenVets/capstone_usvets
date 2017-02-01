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
                    <div class="container form-text-color">
                        <div class="title large-12 columns text-center">
                            <h1 class="locator_heading"><strong>Registration</strong></h1>
                            <p class="locator_heading">Welcome! Please fill out your information</p>
                        </div>

                        <c:if test="${sessionScope.errorMessage != null}">
                            <div class="callout alert">
                                <h5>We must apologize...</h5>
                                <p>The username or email you have entered is already in our system--please choose
                                    another</p>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.errorMessageEmpty != null}">
                            <div class="callout alert">
                                <h5>We must apologize...</h5>
                                <p>The passwords you have entered do not match</p>
                            </div>
                        </c:if>

                        <form action="/register" method="post">

                            <div class="form-group">
                            <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="text" id="first_name" name="first_name"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="first_name">
						<span class="input__label-content input__label-content--hoshi">First Name</span>
					</label>
				</span>
                </div>

                            <div class="form-group">
                    <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="text" id="last_name" name="last_name"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="last_name">
						<span class="input__label-content input__label-content--hoshi">Last Name</span>
					</label>
				</span>
                </div>

                            <div class="form-group">
                <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="email" id="email" name="email" required/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="email">
						<span class="input__label-content input__label-content--hoshi">Email</span>
					</label>
				</span>
                </div>

                            <div class="form-group">
                                <span class="input input--hoshi form-group form-text-color">
					<input class="input__field input__field--hoshi text-center" type="text" id="username" name="username" required/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="username">
						<span class="input__label-content input__label-content--hoshi">Username</span>
                        <span class="form-error">We apologize, but that username has been taken.</span>
					</label>
				</span>
                </div>

                            <div class="form-group">
                <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="password" id="password" name="password" required/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="password">
						<span class="input__label-content input__label-content--hoshi">Password</span>
					</label>
				</span>
                </div>

                            <div class="form-group">
                <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="password" id="confirm_password" name="confirm_password" data-equalto="password" required />
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="confirm_password">
						<span class="input__label-content input__label-content--hoshi">Confirm Password</span>
                        <span class="form-error">Hey, passwords are supposed to match!</span>
					</label>
				</span>
                </div>

                <input type="submit" class="medium button sorting_buttons hvr-grow text-center input" value="Join US!">
            </form>

                    </div>
                </div>
            </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>