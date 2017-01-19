<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
<script src="js/jquery.js"></script>


            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Wellness page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>


            <section class="main">
                <div class="wrap">
                    <div class="container">
                        <div class="row align-center">
                            <div class="column small-2">Aligned to</div>
                            <div class="column small-6">the middlethe middlethe middlethe middlethe middlethe middlethe middle</div>
                        </div>
                        <br>
                        <div class="row align-center">
                            <div class="column small-2">Aligned to</div>
                            <div class="column small-6">the middlethe middlethe middlethe middlethe middlethe middlethe middle</div>
                        </div>
                        <br>
                        <div class="row align-center">
                            <div class="column small-2">Aligned to</div>
                            <div class="column small-6">the middlethe middlethe middlethe middlethe middlethe middlethe middle</div>
                        </div>
                    </div>
                </div>
            </section>



            <!--Footer-->
            <footer>
                <div class="wrap row small-up-1 medium-up-2">
                    <div class="column">
                        <h4>Contact Info</h4>
                        <hr>
                        <a href="/contact"><span>Contact</span></a>
                        <a href="/about"><span>About</span></a><!--span is here to add a class for styling if possible-->
                    </div>
                    <div class="column">
                        <h4>Social Media</h4>
                        <hr>
                        <a href="http://www.facebook.com/justin.armer.52" target="_blank">Facebook</a>
                        <a href="http://www.twitter.com/ausgrave" target="_blank">Twitter</a>
                        <a href="https://www.github.com/calcious" target="_blank">GitHub</a>
                    </div>
                    <br>
                    <a href="/index">@Copyright 2017 Team Allies</a>
                </div>
            </footer>
        </div>
    </div>
</div>

<script src="js/foundation.min.js"></script>
<script src="js/foundation.js"></script>
<script src="js/what-input.js"></script>
<script src="js/app.js"></script>
</body>
</html>