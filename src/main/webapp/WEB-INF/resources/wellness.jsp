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


    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>