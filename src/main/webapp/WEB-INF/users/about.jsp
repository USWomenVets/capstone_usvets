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
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <div class="title large-12 columns text-center" id="about-title">
            <h1><strong>About US</strong></h1>
        </div>

        <!--Main section-->
        <section class="main">
            <div class="wrap">
                <div class="container" id="about">
                    <div class="media-object" >
                        <div class="media-object-section">
                            <img src= "/img/EuniceHeymann2.jpg">
                        </div>
                        <div class="media-object-section">
                            <h4>Eunice Heymann</h4>
                            <p>A multi-talented, multi-tasking, diligent, determined, outside of the box thinker, who loves being back in the tech world.</p>
                        </div>
                    </div>
                    <br>
                    <div class="media-object"><%----%>
                        <div class="media-object-section">
                            <h4>Kenneth Curtis</h4>
                            <p>Team oriented full-stack developer with a passion on the back end relation</p>
                        </div>
                        <div class="media-object-section">
                            <img src= "/img/KennethCurtis2.jpg">
                        </div>
                    </div>
                    <br>
                    <div class="media-object">
                        <div class="media-object-section">
                            <img src="/img/Justin_Armer_02.jpg">
                        </div>
                        <div class="media-object-section">
                            <h4>Justin Armer</h4>
                            <p>I am a web developer who recently graduated from the Code Up Full-Stack-Java boot camp in
                                San Antonio, TX. I decided to become a developer in order to form creative solutions to
                                practical problems and to supplement intersections with <a
                                        href="http://soundcloud.com/ausgraveroyalty" target="_blank">my digital music
                                    creation.</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>