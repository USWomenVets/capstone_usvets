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

        <section class="main">
            <div class="wrap">
                <div class="container row">
                    <h1>Hello World</h1>
                </div>
                <div>
                    <div id="map"></div>
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