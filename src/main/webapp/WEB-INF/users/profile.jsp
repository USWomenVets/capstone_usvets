<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</head>
<body>
<section class="main wrap row">
    <div class="container text-center">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

        <div>
            <div class="row">
                <!-- left column -->
                <div class="col-md-9">
                    <div>
                        <div class="col-md-9"><img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                        </div>
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
                                <label for="username" class="small-6 columns control-label name">USERNAME:</label>
                                <div class="col-lg-8">
                                    <input id="username" value="${user.getUsername()}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="small-6 columns control-label">EMAIL:</label>
                                <div class="col-lg-8">
                                    <input id="email" value="${user.getEmail()}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <label for="first_name" class="small-6 columns control-label name">FIRST NAME:</label>
                                <div class="col-lg-8">
                                    <input id="first_name" value="${user.getFirstName()}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="last_name" class="small-6 columns control-label name">LAST NAME:</label>
                                <div class="col-lg-8">
                                    <input id="last_name" value="${user.getLastName()}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <label for="gender" class="small-6 columns control-label name">GENDER:</label>
                                <div class="col-lg-8">
                                    <input id="gender" value="${user.getGender()}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="age" class="small-6 columns control-label name">AGE:</label>
                                <div class="col-lg-8">
                                    <input id="age" value="${user.getAge()}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <label for="birth" class="small-6 columns control-label name">BIRTH:</label>
                                <div class="col-lg-8">
                                    <input id="birth" value="${user.getBirth()}">
                                </div>
                            </div>
                        </div>
                        <button class="button" type="submit">Save</button>
                    </form>
                    <br>
                    <h3 class="text-center">Friend's List</h3>
                    <hr>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>