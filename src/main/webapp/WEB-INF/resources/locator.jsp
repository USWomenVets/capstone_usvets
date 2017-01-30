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
<div class="off-canvas-wrapper gradient">
    <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
        <div class="title large-12 columns text-center">
            <h1><strong>Your VA Locator</strong></h1>
        </div>
        <div class="row">
            <div class="map" id="map">
                <%--<iframe src="https%3A%2F%2Fmaps.googleapis.com%2Fmaps%2Fapi%2Fjs%3Fkey%3DAIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ%26libraries%3Dplaces%26callback%3DinitMap"></iframe>--%>
            </div>

        </div>
        <%--Attempt to create list--%>
        <%--<div id="results-container">--%>
            <%--<h3>Results</h3>--%>
            <%--<ul id="results-list">--%>
            <%--</ul><!-- #results-list -->--%>
        <%--</div><!-- #results-container -->--%>
        <div class="additional-resources">
            <div class="subTitle text-center"><h2>Additional Resources</h2></div>
            <div class="row">
                <div class="large-10 small-10 columns large-centered small-centered">
                    <ul class="tabs" data-deep-link="true" data-tabs id="deeplinked-tabs">
                        <li class="tabs-title is-active"><a href="#panel1d" aria-selected="true">Veteran Affairs</a>
                        </li>
                        <li class="tabs-title"><a href="#panel2d">Benefits and Compensation</a></li>
                        <li class="tabs-title"><a href="#panel3d">Education and Training</a></li>
                        <li class="tabs-title"><a href="#panel4d">Miscellaneous</a></li>
                    </ul>
                    <div class="tabs-content large-12 small-12 columns" data-tabs-content="deeplinked-tabs">
                        <div class="tabs-panel is-active" id="panel1d">
                            <div class="wrap">
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/DepartmentofVeteransAffairs.jpeg"/>">
                                        </div>
                                    </div>
                                    <div class="media-object-section">
                                        <a href="https://www.va.gov/womenvet/" target="_blank"><h4>Center for Women
                                            Veterans</h4></a>
                                        <p>U.S. Department of Veteran Affairs created this section especially for Women
                                            Veterans.</p>
                                    </div>
                                </div>
                                <br>
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <a href="http://www.benefits.va.gov/persona/veteran-women.asp" target="_blank">
                                            <h4>Department of Veteran
                                                Affairs-Women Veterans</h4></a>
                                        <p>Women Veterans may be eligible for a wide-variety of benefits available to
                                            all U.S. military Veterans.</p>
                                    </div>
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/index.jpeg"/>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tabs-panel" id="panel2d">
                            <div class="wrap">
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/U.S.-Army-women-150x150.jpeg"/>">
                                        </div>
                                    </div>
                                    <div class="media-object-section">
                                        <a href="http://www.military.com/benefits/veterans-health-care/va-benefits-women-veterans-health-care.html"
                                           target="_blank"><h4>VA Benefits: Women Veterans Health Care</h4></a>
                                        <p>Women Veterans are eligible for the same VA benefits as male Veterans.
                                            Comprehensive health services are available to women Veterans including
                                            primary care, specialty care, mental health care, residential treatment and
                                            reproductive health care services.</p>
                                    </div>
                                </div>
                                <br>
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <a href=https://www.va.gov/" target="_blank"><h4>Department of Veteran
                                            Affairs</h4></a>
                                        <p>General link to the Veteran Affairs site for further VA benefits and
                                            compensation.</p>
                                    </div>
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/programs-womeninmilitary-150x150.jpeg"/>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tabs-panel" id="panel3d">
                            <div class="wrap">
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/Grace-Hopper-150x150.jpeg"/>">
                                        </div>
                                    </div>
                                    <div class="media-object-section">
                                        <a href="https://codeup.com" target="_blank"><h4>Codeup</h4></a>
                                        <p>Codeup is a career accelerator that prepares you to become a software
                                            developer, even if you have no prior coding experience (Accepts GI
                                            Bill).</p>
                                    </div>
                                </div>
                                <br>
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <a href="http://www.benefits.va.gov/gibill/index.asp" target="_blank"><h4>VA
                                            Education and Training</h4></a>
                                        <p>Find out how you can utilize your education benefits for higher education
                                            and/or training.</p>
                                    </div>
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/reading.jpeg"/>">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tabs-panel" id="panel4d">
                            <div class="wrap">
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/womanpic-150x150.jpeg"/>">
                                        </div>
                                    </div>
                                    <div class="media-object-section">
                                        <a href="http://vwise.vets.syr.edu/" target="_blank"><h4>V-Wise</h4></a>
                                        <p>V-WISE is operated by the Institute for Veterans and Military Families at
                                            Syracuse University (IVMF). V-WISE is funded
                                            in part through a Cooperative Agreement with the U.S. Small Business
                                            Administration.</p>
                                    </div>
                                </div>
                                <br>
                                <div class="media-object stack-for-small">
                                    <div class="media-object-section">
                                        <a href="http://www.womenshealth.va.gov/" target="_blank"><h4>VA Womens Health
                                            Care</h4></a>
                                        <p>Did you know that women are the fastest growing group within the Veteran
                                            population? Learn more about the changing face of women Veterans and what VA
                                            is
                                            doing to meet their health care needs.</p>
                                    </div>
                                    <div class="media-object-section">
                                        <div class="thumbnail">
                                            <img src="<c:url value="/img/Women-Ranger-School-150x150.jpeg"/>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/javascript.jsp"/>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ&libraries=places&callback=initMap">
    </script>
</body>
</html>