<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
<script src="js/jquery.js"></script>

            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Events page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

            <!--Calendar-->
            <div class="wrap row small-up-1 medium-up-2">
                <iframe src="https://calendar.google.com/calendar/embed?title=Events&amp;height=600&amp;wkst=1&amp;bgcolor=%23990000&amp;src=01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com&amp;color=%232F6309&amp;ctz=America%2FChicago"
                        style="border-width:0" width="800" height="600" frameborder="0" scrolling="no">

                </iframe>

            </div>
            <!--Footer-->

            <footer>
                <div class="wrap row small-up-1 medium-up-2">
                    <div class="column">
                        <h4>Contact Info</h4>
                        <hr>
                        <a href="/contact"><span>Contact</span></a>
                        <a href="/about"><span>About</span></a>
                        <!--span is here to add a class for styling if possible-->
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