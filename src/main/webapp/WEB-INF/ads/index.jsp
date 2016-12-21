<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>AD LIST</h1>
    <br><br>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6 ad_div">
            <form role="search" action="/ad_individ" method="get">
                <button name="id" value=${ad.getId()}>
                    <h2>${ad.title}</h2>
                    <h4>${ad.timestamp}</h4>
                    <p>${ad.description}</p>
                    <h4>${ad.getUsername()}</h4>
                </button>
            </form>
        </div>
    </c:forEach>
    <style>
        button {
            background:none!important;
            border:1px solid #444;
            border-radius: 5px;
            padding:0!important;
        }
    </style>
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
