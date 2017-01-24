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

        <section class="main">
            <div class="wrap">
                <div class="container">
                    <div class="media-object">
                        <div class="media-object-section">
                            <img src= "http://placeimg.com/200/200/people">
                        </div>
                        <div class="media-object-section">
                            <h4>Dreams feel real while we're in them.</h4>
                            <p>I'm going to improvise. Listen, there's something you should know.</p>
                        </div>
                    </div>
                    <br>
                    <div class="media-object">
                        <div class="media-object-section">
                            <h4>Dreams feel real while we're in them.</h4>
                            <p>I'm going to improvise. Listen, there's something you should know.</p>
                        </div>
                        <div class="media-object-section">
                            <img src= "http://placeimg.com/200/200/people">
                        </div>
                    </div>
                    <br>
                    <div class="media-object">
                        <div class="media-object-section">
                            <img src= "http://placeimg.com/200/200/people">
                        </div>
                        <div class="media-object-section">
                            <h4>Dreams feel real while we're in them.</h4>
                            <p>I'm going to improvise. Listen, there's something you should know.</p>
                        </div>
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