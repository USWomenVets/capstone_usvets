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

            <section class="main">
                <div class="wrap">
                    <div class="container form-text-color">
                        <h3>Welcome</h3>
                        <p><strong>Please log in</strong></p>
                        <c:if test="${sessionScope.errorMessageEmptyLogin != null}">
                            <div class="callout alert">
                                <h5>We must apologize...</h5>
                                <p>Username or password cannot be blank</p>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.errorMessageValidLogin != null}">
                            <div class="callout alert">
                                <h5>We must apologize...</h5>
                                <p>Username or password is not valid</p>
                            </div>
                        </c:if>
                        <form action="/login" method="POST">
                            <div class="form-group">
                                <span class="input input--hoshi form-group form-text-color">
					<input class="input__field input__field--hoshi text-center" type="text" id="username" name="username" required/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="username">
						<span class="input__label-content input__label-content--hoshi">Username</span>
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
                            <input type="submit" class="medium button sorting_buttons" value="Log In">
                        </form>
                        <br>
                        <p>Don't have a profile, yet? <a href="/register" id="sign_up">Join US!</a></p>
                    </div>
                </div>
            </section>

    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>
