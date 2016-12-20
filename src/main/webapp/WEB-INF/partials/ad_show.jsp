<%--
  Created by IntelliJ IDEA.
  User: Calcious
  Date: 12/20/16
  Time: 8:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdShow Page</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        /*@import url('https://fonts.googleapis.com/css?family=Allerta+Stencil');*/
        @import url('https://fonts.googleapis.com/css?family=Raleway');

        *{
            font-family: 'Raleway', sans-serif;
            text-align: center;
        }
        #sign_up{
            color: #5bc0de;
        }
        #pending_ads{
            color: #f0ad4e;;
        }
    </style>
</head>
<body>

<blockquote>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
    <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
</blockquote>

<blockquote>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
    <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
</blockquote>

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
