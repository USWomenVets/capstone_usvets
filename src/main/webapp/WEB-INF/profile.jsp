<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

        <a href="/ads" class="btn btn-lg btn-default">BROWSE ADS</a>
        <a href="/ads/create" class="btn btn-lg btn-default">CREATE AD</a>

        <div class="container">

            <c:forEach var="ad" items="${ads}">
                <a href="ads/ad_individ.jsp">
                <div class="col-md-6 ad_div coupon">
                    <h2 id="large_headline">${ad.title}</h2>
                    <h4>${ad.timestamp}</h4>
                    <p id="cust_paragraph_text">${ad.description}</p>
                    <h4 id="middle_headline">${ad.getUsername()}</h4>
                </div>
                </a>
            </c:forEach>
        </div>
    </div>

        <div class="container">
            <hr>
        <h1>Edit Profile</h1>
        <hr>
        <div class="row">
            <!-- left column -->
            <div class="col-md-3">
                <div class="text-center">
                    <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                    <h6>Upload a different photo...</h6>

                    <input class="form-control" type="file">
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">
                <div class="alert alert-info alert-dismissable">
                    <a class="panel-close close" data-dismiss="alert">×</a>
                    <i class="fa fa-coffee"></i>
                    This is an <strong>.alert</strong>. Use this to show important messages to the user.
                </div>
                <h3>Personal info</h3>

                <form class="form-horizontal" role="form" method="post">

                    <div class="form-group">
                        <label class="col-lg-3 control-label name">name:</label>
                        <div class="col-lg-8">
                            <h4>${user.getUsername()}</h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                            <h4>${user.getEmail()}</h4>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        </div>
    <footer class="footer navbar navbar-fixed-bottom navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header navbar-inverted">
                <a class="navbar-brand welcome_title" href="/index">@ Copyright 2016</a>
                <a class="navbar-right navbar-brand welcome_title">BKJ Productions</a>
            </div>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </footer>
</body>
</html>
