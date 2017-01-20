<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="US Women Vets Home Page" />
    </jsp:include>
</head>
<body>

<div class="off-canvas-wrapper">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to USWOMENVETS!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>



</div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<script src="js/jquery.js"></script>
<script src="js/foundation.min.js"></script>
<script src="js/what-input.js"></script>
<script src="js/app.js"></script>

<jsp:include page="/WEB-INF/partials/javascript.jsp"/>

</body>
</html>