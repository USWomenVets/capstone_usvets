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
        <!--Hero Section-->
        <section class="hero text-center">
            <h1 class="large-12 columns title">A Rally Point For</h1>
            <div class="hero-logo">
                <img src="<c:url value="/img/USLogo.png"/>">
            </div>
        </section>
        <div class="about">
            <div class="row">
                <div class="small-12 medium-4 large-4 columns text-center">
                    <div class="callout">
                        <h4>Let's Talk</h4>
                        <hr>
                        <p>A discussion board for US to ask questions, give each other advice, and be
                            supportive.</p>
                        <a href="<c:url value="/archive"/>" class="button sorting_buttons hvr-grow">Discuss</a>
                    </div>
                </div>
                <div class="small-12 medium-4 large-4 columns text-center">
                    <div class="callout">
                        <h4>Your VA</h4>
                        <hr>
                        <p>A map designed to locate your position to find your local VA facilities and a list of
                            additional resources.</p>
                        <a href="<c:url value="/locator"/>" class="button sorting_buttons hvr-grow">Locator</a>
                    </div>
                </div>
                <div class="small-12 medium-4 large-4 columns text-center">
                    <div class="callout">
                        <h4>Events</h4>
                        <hr>
                        <p>Find out about events for US and import it on your desktop or mobile calendar.</p>
                        <a href="<c:url value="/events"/>" class="button sorting_buttons hvr-grow">Events</a>
                    </div>
                </div>
            </div>
        </div>
        <%--<canvas id="currentlyServe" height="128" width="128"></canvas>--%>
        <%--<canvas id="militaryST" height="128" width="128"></canvas>--%>
        <%--<canvas id="laborForce" height="128" width="128"></canvas>--%>
        <div class="statistics text-center">
            <div class="row">
                <h1>Did You Know...</h1>
            </div>
            <div class="circles row">
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle"><h1>10%</h1></div>
                    <h4>of US currently serve in the military</h4>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle" ><h1>20%</h1></div>
                    <h4>of US have experience military sexual trauma</h4>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle" ><h1>11%</h1></div>
                    <h4>of US are in the labor force</h4>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle"><h1>80%</h1></div>
                    <h4>of US use education benefits</h4>
                </div>
            </div>
        </div>
        <div class="join">
            <div class="panel large-6 medium-6 small-12 columns medium-centered">
                    <div class="callout">
                        <h4>What Can We Do?</h4>
                        <hr>
                        <p>Let's create an environment where we can help each other out. Whether you are thinking about
                            joining, currently in the military, or have been out for a while, let's talk about it.</p>
                        <a href="<c:url value="/register"/>" class="button sorting_buttons hvr-grow">Join US!</a>
                    </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>