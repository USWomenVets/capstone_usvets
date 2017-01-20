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
                    <h1>Welcome to Resources base page!</h1>
                    <p>Catchy tagline goes here!</p>
                    <a href="/wellness"><button class="resources button">Wellness</button></a>
                    <a href="/employment"><button class="resources button">Employment</button></a>
                    <a href="/events"><button class="resources button">Events</button></a>
                </div>
            </section>


<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<script src="js/foundation.min.js"></script>
<script src="js/foundation.js"></script>
<script src="js/what-input.js"></script>
<script src="js/app.js"></script>
</body>
</html>