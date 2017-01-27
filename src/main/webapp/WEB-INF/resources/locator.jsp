<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page"/>
    </jsp:include>
    <style>
        #map {
            height: 400px;
            width: 600px;
        }
    </style>
</head>
<body>
<div class="off-canvas-wrapper">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        <div class="large-12 columns text-center">
            <h1>Your VA Map</h1>
        </div>
        <section class="locator">
            <div class="wrap">
                <div class="container">

                    <div class="map text-center" id="map"></div>
                    <div class="media-object">
                        <div class="media-object-section">
                            <img src="http://placeimg.com/200/200/people">
                        </div>
                        <div class="media-object-section">
                            <h4>Dreams feel real while we're in them</h4>
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
                            <img src="http://placeimg.com/200/200/people">
                        </div>
                    </div>
                    <br>
                    <div class="media-object">
                        <div class="media-object-section">
                            <img src="http://placeimg.com/200/200/people">
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
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ&libraries=places&callback=initMap">
</script>
</body>
</html>