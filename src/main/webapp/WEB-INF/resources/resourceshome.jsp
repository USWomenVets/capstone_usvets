<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page" />
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
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Resources base page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

        <%--<section class="main">--%>
            <%--<div class="wrap">--%>
                <%--<div class="container row">--%>
                    <%--<div class="small-4 large-4 columns">--%>
                        <%--<a href="/wellness"><button class="resources button">Wellness</button></a>--%>
                    <%--</div>--%>
                    <%--<div class="small-4 large-4 columns">--%>
                        <%--<a href="/employment"><button class="resources button">Employment</button></a>--%>
                    <%--</div>--%>
                    <%--<div class="small-4 large-4 columns">--%>
                        <%--<a href="/events"><button class="resources button">Events</button></a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</section>--%>
        <section class="main">
            <div class="wrap">
                <div class="container row">
                    <div class="small-12 large-4 columns home_image resource_cat_div">
                        <div class="media-object-section">
                            <a href="/wellness">Wellness</a>
                        </div>
                        <p>Text</p>
                    </div>
                    <div class="small-12 large-4 columns home_image resource_cat_div">
                        <div class="media-object-section">
                            <a href="/employment">Employment</a>
                        </div>
                        <p>Text</p>
                    </div>
                    <div class="small-12 large-4 columns home_image resource_cat_div">
                        <div class="media-object-section">
                            <a href="/events">Events</a>
                        </div>
                        <p>Text</p>
                    </div>
                </div>
            </div>
        </section>

    </div>
    <div>
        <div id="map"></div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ&libraries=places&callback=initMap">
</script>
</body>
</html>