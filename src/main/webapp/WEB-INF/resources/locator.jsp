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
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        <div class="large-12 columns text-center">
            <div class="panel">
                <h1>Your VA Map</h1>
            </div>
        </div>
        <section class="locator">
            <div class="wrap">
                <%--<div class="container text-center">--%>
                    <div class="map flex-video" id="map" style="height: 200px; width: 500px;">
                        <%--<iframe src="https%3A%2F%2Fmaps.googleapis.com%2Fmaps%2Fapi%2Fjs%3Fkey%3DAIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ%26libraries%3Dplaces%26callback%3DinitMap"></iframe>--%>
                    </div>
                    <ul class="tabs" data-deep-link="true" data-tabs id="deeplinked-tabs">
                        <li class="tabs-title is-active"><a href="#panel1d" aria-selected="true">Tab 1</a></li>
                        <li class="tabs-title"><a href="#panel2d">Tab 2</a></li>
                        <li class="tabs-title"><a href="#panel3d">Tab 3</a></li>
                        <li class="tabs-title"><a href="#panel4d">Tab 4</a></li>
                    </ul>

                    <div class="tabs-content" data-tabs-content="deeplinked-tabs">
                        <div class="tabs-panel is-active" id="panel1d">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                        <div class="tabs-panel" id="panel2d">
                            <p>Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus.</p>
                        </div>
                        <div class="tabs-panel" id="panel3d">
                            <img class="thumbnail" src="assets/img/generic/rectangle-3.jpg">
                        </div>
                        <div class="tabs-panel" id="panel4d">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>


                    <%--<div class="additional-resources">--%>


                            <%--<img src="/img/Famouswomen.jpeg" style="height: 10px; width: 10px">--%>

                            <%--<div class="information">--%>
                                <%--<a href="https://www.va.gov/womenvet/" target="_blank"><h4>Center for Women Veterans</h4></a>--%>
                                <%--<p>U.S. Department of Veteran Affairs created this section especially for Women Veterans.  </p>--%>
                            <%--</div>--%>
                    <%--</div>--%>

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