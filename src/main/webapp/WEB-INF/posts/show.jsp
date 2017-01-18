<%--
  Created by IntelliJ IDEA.
  User: Calcious
  Date: 12/20/16
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>AdShow Page</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <div class="col-md-6 ad_div">
        <c:forEach var="ad" items="${ads}">
            <h2 id="large_headline">${ad.title}</h2>
            <h4>${ad.timestamp}</h4>
            <p id="cust_paragraph_text">${ad.description}</p>
            <h4 id="middle_headline">${ad.getUsername()}</h4>
        </c:forEach>
    </div>
    <footer class="footer navbar-fixed-bottom navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header navbar-inverted">
                <a class="navbar-brand welcome_title" href="/index">@ Copyright 2016</a>
                <a class="navbar-right navbar-brand welcome_title">BKJ Productions</a>
            </div>
        </div><!-- /.navbar-collapse -->
    </footer>
</div><!-- /.container-fluid -->
</body>
</html>
