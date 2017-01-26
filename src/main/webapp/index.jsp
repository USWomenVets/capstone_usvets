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

            <!--Hero Section-->
            <section class="hero text-center">
                    <h1>A Rally Point for</h1>
                    <img src="/img/USWV-Logo.png">

            </section>

        <div class="about medium-up-1 large-up-2">
            <div class="row">
                <div class="medium-6 columns text-center">
                    <h4>Talk With US</h4>
                    <hr>
                    <p>A discussion board</p>
                </div>
                <div class="medium-6 columns text-center">
                    <h4>Social Media</h4>
                    <hr>
                    <div class="row" id="icons">
                        <div class="small-4 columns">
                            <a href="https://twitter.com/USWomenVets" target="_blank" class="fi-social-twitter"></a>
                        </div>
                        <div class="small-4 columns">
                            <a href="https://www.linkedin.com/groups/12028850" target="_blank"
                               class="fi-social-linkedin"></a>
                        </div>
                        <div class="small-4 columns">
                            <a href="https://www.facebook.com/groups/222014964872906/" target="_blank"
                               class="fi-social-facebook"></a>
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