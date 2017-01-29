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
            <h1 class="large-12 columns sub_title">A Rally Point for</h1>
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
                        <a href="<c:url value="/archive"/>" class="button sorting_buttons">Discuss</a>
                    </div>
                </div>
                <div class="small-12 medium-4 large-4 columns text-center">
                    <div class="callout">
                        <h4>Your VA</h4>
                        <hr>
                        <p>A map designed to locate your position to find your local VA facilities and a list of
                            additional resources.</p>
                        <a href="<c:url value="/locator"/>" class="button sorting_buttons">Locator</a>
                    </div>
                </div>
                <div class="small-12 medium-4 large-4 columns text-center">
                    <div class="callout">
                        <h4>Events</h4>
                        <hr>
                        <p>Find out about events for US and import it on your desktop or mobile calendar.</p>
                        <a href="<c:url value="/events"/>" class="button sorting_buttons">Events</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="statistics text-center">
            <div class="row">
                <h1>Did you know...</h1>
            </div>
            <div class="circles row">
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle"><h1>10%</h1></div>
                    <h4>of US currently serve in the military</h4>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle"><h1>20%</h1></div>
                    <h4>of US have experience military sexual trauma</h4>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle"><h1>11%</h1></div>
                    <h4>of US are in the labor force</h4>
                </div>
                <div class="small-12 medium-6 large-3 columns text-center">
                    <div class="circle"><h1>80%</h1></div>
                    <h4>of US use education benefits</h4>
                </div>
            </div>
        </div>

        <div class="item">

            <h3 class="level-title">Javascript &amp; jQuery</h3>

            <div class="level-bar">

                <div class="level-bar-inner" data-level="70%">

                </div>

            </div><!--//level-bar-->

        </div><!--//item-->
        <script>jQuery(document).ready(function($) {


            /*======= Skillset *=======*/


            $('.level-bar-inner').css('width', '0');

            $(window).on('load', function() {

                $('.level-bar-inner').each(function() {

                    var itemWidth = $(this).data('level');

                    $(this).animate({
                        width: itemWidth
                    }, 800);

                });

            });

            $('#resume-wrap').show('fold', 1000);

        </script>

        <div class="join-button">
            <a href="<c:url value="/register"/>">
                <div class="radius panel large-4 small-4 columns medium-centered">
                    <div class="callout">
                        <button class="button sorting_buttons text-center" data-sort-value="username"><h3>Join US!</h3>
                        </button>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>