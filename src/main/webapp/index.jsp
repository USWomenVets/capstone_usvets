<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="BKJ Ad Lister" />
    </jsp:include>

</head>

<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">

        <div class="site-wrapper">

            <div class="site-wrapper-inner">

                <div class="cover-container">

                    <div class="inner cover">
                        <h1 class="cover-heading">WELCOME TO ADLSTR</h1>
                        <br><br>
                        <p class="lead"> The premier service for finding the opportunities you seek.</p>
                        <p class="lead">
                            <a href="/ads" class="btn btn-lg btn-default">BROWSE ADS</a>
                            <a href="/register" class="btn btn-lg btn-default">SIGN-UP</a>
                        </p>
                    </div>

                </div>

            </div>

        </div>
    </div>

    <footer class="footer navbar-fixed-bottom navbar navbar-default">
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
