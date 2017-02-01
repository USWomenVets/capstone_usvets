<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page"/>
    </jsp:include>
</head>
<body>
<div class="off-canvas-wrapper">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        <section class="main row">
            <div class="container text-center">
                <h1 id="greeting" class="form-text-color"> ${sessionScope.user.username}!</h1>
                <div>
                    <div class="row">
                        <div class="personal-info text-center">
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
                            <form action="/profile" class="form-horizontal form-text-color profile_form" method="post">

                                <h3 class="text-center form-text-color">Personal Information</h3>
                                <button type="submit" class="button sorting_buttons">Update</button>

                                <div class="row">
                                <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="text" id="username"
                           name="username"
                           value="${user.getUsername()}"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="username">
						<span class="input__label-content input__label-content--hoshi">Username</span>
					</label>
				</span>


                                    <span class="input input--hoshi">
					<input class="input__field input__field--hoshi text-center" type="email" id="email" name="email"
                           value="${user.getEmail()}"/>
					<label class="input__label input__label--hoshi input__label--hoshi-color-1" for="email">
						<span class="input__label-content input__label-content--hoshi">Email</span>
					</label>
				</span>
                                </div>

                                <div class="row">
                                    <span class="input input--hoshi">
                            <input class="input__field input__field--hoshi text-center" type="text" id="first_name"
                                   name="first_name"
                                   value="${user.getFirstName()}"/>
                            <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="first_name">
                                <span class="input__label-content input__label-content--hoshi">First Name</span>
                            </label>
                        </span>
                                            <span class="input input--hoshi">
                            <input class="input__field input__field--hoshi text-center" type="text" id="last_name"
                                   name="last_name"
                                   value="${user.getLastName()}"/>
                            <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="last_name">
                                <span class="input__label-content input__label-content--hoshi">Last Name</span>
                            </label>
                        </span>
                                </div>


                                <h3 class="text-center form-text-color">Password Information</h3>

                                <div class="row">
                                    <span class="input input--hoshi">
                                        <input class="input__field input__field--hoshi text-center" type="password" id="current_password" name="current_password"/>
                                        <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="current_password">
                                            <span class="input__label-content input__label-content--hoshi">Current Password</span>
                                        </label>
                                    </span>
                                    <span class="input input--hoshi">
                                        <input class="input__field input__field--hoshi text-center" type="password" id="new_password" name="new_password"/>
                                        <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="new_password">
                                            <span class="input__label-content input__label-content--hoshi">New Password</span>
                                        </label>
                                    </span>
                                    <span class="input input--hoshi">
                                        <input class="input__field input__field--hoshi text-center" type="password" id="confirm_password" name="confirm_password"/>
                                        <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="confirm_password">
                                            <span class="input__label-content input__label-content--hoshi">Confrim New Password</span>
                                        </label>
                                    </span>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </section>
</div>
</div>

<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>