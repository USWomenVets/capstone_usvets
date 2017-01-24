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
    <div class="off-canvas-wrapper-inner row" data-off-canvas-wrapper>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />


        <section class="main">
            <div class="wrap">
            <h3><strong>Please select a category</strong></h3>
            <nav aria-label="You are here:" role="navigation">
                <ul class="breadcrumbs">
                    <li><a href="#0">Wellness</a></li>
                    <li><a href="#0">Events</a></li>
                    <li><a href="#0">Employment</a></li>
                    <li><a href="#0">General</a></li>
                </ul>
            </nav>
            <div>
            <br>
                <c:forEach var="post" items="${posts}">
                <div class="archive_post">
                        <form role="search" action="/show" method="GET">
                            <button class="archive_post_button" name="id" value=${post.getId()}>
                                <p>${post.title}</p>
                                <p>${post.postDate}</p>
                                <p>${post.userId}</p>
                                <p>${post.getStringCategory}</p>
                            </button>
                        </form>
                    </div>
                </c:forEach>
            </div>
            </div>
        </section>

    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>
