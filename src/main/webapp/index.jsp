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
            <h1 class="large-12 columns">A Rally Point for</h1>
            <div class="hero-logo">
                <img src="/img/USLogo.png">
            </div>
        </section>
        <div class="about medium-up-1 large-up-2">
            <div class="row">
               <a href="/archive">
                <div class="medium-4 columns text-center">
                    <div class="callout">
                        <h4>Let's Talk</h4>
                        <hr>
                        <p>A discussion board for US to ask and give each other advice.</p>
                    </div>
                </div>
               </a>
                <a href="/locator">
                <div class="medium-4 columns text-center">
                    <div class="callout">
                        <h4>Your VA</h4>
                        <hr>
                        <p>A Google Map designed to geolocate your position and find your local VA facilities.</p>
                    </div>
                </div>
                </a>
                <a href="/events">
                <div class="medium-4 columns text-center">
                    <div class="callout">
                        <h4>Events</h4>
                        <hr>
                        <p>Find events and import events on your calendar.</p>
                    </div>
                </div>
                </a>
            </div>
        </div>
        <div class="statistics text-center">
            <div class="row">
                <h1>Did you know...</h1>
            </div>
            <div class="row">
                <div class="small-12 medium-6 large-3 columns text-center">
                    <h4>1st STAT</h4>
                    <hr>
                    <div class="circle"></div>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <h4>1st STAT</h4>
                    <hr>
                    <div class="circle"></div>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <h4>1st STAT</h4>
                    <hr>
                    <div class="circle"></div>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <h4>4th STAT</h4>
                    <hr>
                    <div class="circle"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>