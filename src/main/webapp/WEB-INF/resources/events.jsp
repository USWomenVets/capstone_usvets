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
            <h1 class="locator_heading"><strong>Calendar of Events</strong></h1>
        </div>
        <!--Calendar-->
        <%--<div class="responsive-iframe-container big-container">--%>
        <div class="responsive-iframe-container big-container large-10 medium-10 columns large-centered medium-centered">
            <iframe src="https://calendar.google.com/calendar/embed?title=%20%20%20%20%20%20&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com&amp;color=%232F6309&amp;ctz=America%2FChicago"
                    style="border-width:0" width="800" height="300" frameborder="0" scrolling="no"></iframe>
        </div>
        <%--<div class="flex-video ">--%>
        <div class="flex-video small-container small-10 columns small-centered">
            <iframe src="https://calendar.google.com/calendar/embed?mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com&amp;color=%232F6309&amp;ctz=America%2FChicago"
                    style="border-width:0" width="500" height="600" frameborder="0" scrolling="no"></iframe>
        </div>
        <%--<div class="row">--%>
            <%--&lt;%&ndash;<div class="large-12 columns text-center">&ndash;%&gt;--%>
            <%--&lt;%&ndash;&lt;%&ndash;<a href="https://calendar.google.com/calendar/ical/01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com/public/basic.ics" class="sorting_buttons"><h6>Import iCal Calendar</h6></a>&ndash;%&gt;&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</div>--%>
        <div class="featured-events">
            <div class="title large-12 columns text-center">
                <h2 class="locator_heading"><strong>Featured Events</strong></h2>
            </div>
            <div class="large-10 small-10 columns large-centered small-centered">
                <ul class="tabs" data-deep-link="true" data-tabs id="deeplinked-tabs">
                    <li class="tabs-title is-active"><a href="#panel1d" aria-selected="true">Conferences</a>
                    </li>
                    <li class="tabs-title"><a href="#panel2d">Career Fairs</a></li>
                    <li class="tabs-title"><a href="#panel3d">Miscellaneous</a></li>
                </ul>
                <div class="tabs-content large-12 small-12 columns" data-tabs-content="deeplinked-tabs">
                    <div class="tabs-panel is-active" id="panel1d">
                        <div class="wrap">
                            <div class="media-object stack-for-small">
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <img src="<c:url value="/img/fronthumb-wvhp.jpeg"/>">
                                    </div>
                                </div>
                                <div class="media-object-section">
                                    <a href="https://www.eventbrite.com/e/the-fourth-annual-women-veterans-and-active-duty-women-warriors-resource-summit-tickets-30229252508?ref=enivtefor001&invite=MTEyMzQwMTAvYmV0dHkubW9zZWxleWJyb3duQHZhLmdvdi8w"
                                       target="_blank"><h4>Fourth Annual Women Veterans and Active Duty Women Warriors
                                        Resource Summit</h4></a>
                                    <p>The summit will introduce the unique experiences of women Veterans and the need
                                        for tailored services that will allow them to find success in programs meant to
                                        serve them.</p>
                                </div>
                            </div>
                            <br>
                            <div class="media-object stack-for-small">
                                <div class="media-object-section">
                                    <a href=https://www.eventbrite.com/e/women-veterans-leadership-and-diversity-conference-tickets-30596453817"
                                       target="_blank"><h4>Women Veterans Leadership and Diversity Conference</h4>
                                    </a>
                                    <p>This is the only conference in the country designed by women veterans for
                                        women veterans to Connect, Engage and Empower ALL women veterans and women
                                        in the military from around the nation, regardless to rank or branch of
                                        service.</p>
                                </div>
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <img src="<c:url value="/img/conf150x150.jpeg"/>">
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
                                        <img src="<c:url value="/img/Female-coastguard-150x150.jpeg"/>">
                                    </div>
                                </div>
                                <div class="media-object-section">
                                    <a href="https://www.uschamberfoundation.org/events/upcoming" target="_blank">
                                        <h4>Hiring Our Heroes Military Hiring Fair</h4></a>
                                    <p>Hiring Our Heroes is a nationwide initiative to help veterans, transitioning
                                        service members, and military spouses find meaningful employment
                                        opportunities.</p>
                                </div>
                            </div>
                            <br>
                            <div class="media-object stack-for-small">
                                <div class="media-object-section">
                                    <a href="https://events.recruitmilitary.com/events/san-antonio-veterans-job-fair-may-18-2017"
                                       target="_blank"><h4>San Antonio Veterans Job Fair</h4></a>
                                    <p>A RecruitMilitary Opportunity Expo is an event where transitioning
                                        military,
                                        veterans, and their spouses can meet with recruiters from dozens of
                                        companies. These events are free for attendees.</p>
                                </div>
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <img src="<c:url value="/img/milwoman-150x150.jpeg"/>">
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
                                        <img src="<c:url value="/img/programs-womeninmilitary-150x150.jpeg"/>">
                                    </div>
                                </div>
                                <div class="media-object-section">
                                    <a href="http://vwise.vets.syr.edu/calendar" target="_blank"><h4>V-Wise</h4>
                                    </a>
                                    <p>V-WISE helps women veterans and female military spouses/partners find
                                        their
                                        passion and learn the business savvy skills necessary to turn an idea or
                                        start-up into a growing venture.</p>
                                </div>
                            </div>
                            <br>
                            <div class="media-object stack-for-small">
                                <div class="media-object-section">
                                    <a href="https://www.meetup.com/Operation-Code-Austin/members/"
                                       target="_blank">
                                        <h4>Operation Code</h4></a>
                                    <p> Operation Code is a nonprofit devoted to helping the military community
                                        learn software development, enter the tech industry, and code the
                                        future!</p>
                                </div>
                                <div class="media-object-section">
                                    <div class="thumbnail">
                                        <img src="<c:url value="/img/women-veterans-150x150.jpeg"/>">
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
</body>
</html>