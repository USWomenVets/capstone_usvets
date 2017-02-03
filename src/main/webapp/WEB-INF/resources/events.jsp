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
            <h1 class="locator_heading"><strong>Your VA Events</strong></h1>
        </div>
        <div class="calendar">
            <div data-tockify-component="calendar" data-tockify-calendar="uswomenvets"></div>
            <script data-cfasync="false" data-tockify-script="embed"
                    src="https://public.tockify.com/browser/embed.js"></script>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>