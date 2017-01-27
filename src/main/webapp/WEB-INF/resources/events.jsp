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

        <!--Calendar-->
        <div class="responsive-iframe-container big-container text-center">
            <iframe src="https://calendar.google.com/calendar/embed?title=%20%20%20%20%20%20%20&amp;height=600&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com&amp;color=%232F6309&amp;ctz=America%2FChicago"
                    style="border-width:0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
        </div>
        <div class="responsive-iframe-container small-container text-center">
            <iframe src="https://calendar.google.com/calendar/embed?mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com&amp;color=%232F6309&amp;ctz=America%2FChicago"
                    style="border-width:0" width="500" height="600" frameborder="0" scrolling="no"></iframe>
        </div>

        <section class="locator">
            <div class="wrap">
                <div class="container">
                    <div class="map text-center" id="map"></div>
                    <div class="media-object">
                        <a href="https://www.eventbrite.com/e/the-fourth-annual-women-veterans-and-active-duty-women-warriors-resource-summit-tickets-30229252508?ref=enivtefor001&invite=MTEyMzQwMTAvYmV0dHkubW9zZWxleWJyb3duQHZhLmdvdi8w">
                        <div class="media-object-section">
                            <img src="http://placeimg.com/200/200/people">
                        </div>
                        <div class="media-object-section">
                            <h4>Fourth Annual Women Veterans and Active Duty Women Warriors Resource </h4>
                            <p>The summit will introduce the unique experiences of women Veterans and the need for tailored services that will allow them to find success in programs meant to serve them.</p>
                        </div>
                        </a>
                    </div>
                    <br>
                    <div class="media-object">
                        <div class="media-object-section">
                            <h4>VWise </h4>
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
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>