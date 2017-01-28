<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page"/>
    </jsp:include>

</head>
<body>
<div class="off-canvas-wrapper">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        <div class="title large-12 columns text-center">
            <h1>Your VA Locator</h1>
        </div>
        <div class="map large-centered" id="map" style="height: 575px; width: 1200px;">
            <%--<iframe src="https%3A%2F%2Fmaps.googleapis.com%2Fmaps%2Fapi%2Fjs%3Fkey%3DAIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ%26libraries%3Dplaces%26callback%3DinitMap"></iframe>--%>
        </div>
        <section class="additional-resources">
            <div class="subTitle text-center"><h2>Additional Resources</h2></div>
                <%--<div class="container text-center">--%>
            <div class="row">
                <div class="large-10 small-10 columns large-centered small-centered">
                <ul class="tabs" data-deep-link="true" data-tabs id="deeplinked-tabs">
                    <li class="tabs-title is-active"><a href="#panel1d" aria-selected="true">Veteran Affairs</a></li>
                    <li class="tabs-title"><a href="#panel2d">Benefits and Compensation</a></li>
                    <li class="tabs-title"><a href="#panel3d">Education and Training</a></li>
                    <li class="tabs-title"><a href="#panel4d">Miscellaneous</a></li>
                </ul>

                <div class="tabs-content large-12 small-12 columns" data-tabs-content="deeplinked-tabs">
                    <div class="tabs-panel is-active" id="panel1d">
                        <div class="media-object">
                            <div class="media-object-section">
                                <img src="/img/salute-USVW.png">
                            </div>
                            <div class="media-object-section">
                                <a href="https://www.va.gov/womenvet/" target="_blank"><h4>Center for Women Veterans</h4></a>
                                <p>U.S. Department of Veteran Affairs created this section especially for Women Veterans.</p>
                            </div>
                        </div>
                        <br>
                        <div class="media-object">
                            <div class="media-object-section">
                                <h4>Dreams feel real while we're in them.</h4>
                                <p>I'm going to improvise. Listen, there's something you should know.</p>
                            </div>
                            <div class="media-object-section">
                                <img src="/img/Famouswomen.jpeg">
                            </div>
                        </div>


                    </div>
                    <div class="tabs-panel" id="panel2d">
                        <div class="media-object">
                            <div class="media-object-section">
                                <img src="/img/Famouswomen.jpeg">
                            </div>
                            <div class="media-object-section">
                                <h4>VWise </h4>
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
                                <img src="/img/Famouswomen.jpeg">
                            </div>
                        </div>
                    </div>
                    <div class="tabs-panel" id="panel3d">
                        <div class="media-object">
                            <div class="media-object-section">
                                <img src="http://placeimg.com/200/200/people">
                            </div>
                            <div class="media-object-section">
                                <h4>VWise </h4>
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
                    </div>
                    <div class="tabs-panel" id="panel4d">
                        <div class="media-object">
                            <div class="media-object-section">
                                <img src="http://placeimg.com/200/200/people">
                            </div>
                            <div class="media-object-section">
                                <h4>VWise </h4>
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