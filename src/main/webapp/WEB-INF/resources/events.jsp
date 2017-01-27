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
        <div class="wrap small-up-1 medium-up-2">
            <iframe src="https://calendar.google.com/calendar/embed?title=%20%20%20%20%20%20%20&amp;height=600&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com&amp;color=%232F6309&amp;ctz=America%2FChicago"
                    style="border-width:0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
        </div>
        <div>
            <a href="https://calendar.google.com/calendar/ical/01lq9ra7c9dck3otfogmtgk7bo%40group.calendar.google.com/public/basic.ics"
               class="button tiny">iCal Button</a>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>