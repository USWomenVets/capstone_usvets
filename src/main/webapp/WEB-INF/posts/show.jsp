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

            <!--Main Section-->
            <section class="main">
                <div class="show">
                    <c:forEach var="post" items="${posts}">
                        <div class="wrap">
                            <p>${post.title}</p>
                            <p>${post.postDate}</p>
                            <p>${post.content}</p>
                            <p>${post.getUsername()}</p>
                        <c:choose>
                            <c:when test="${sessionScope.user != null}"> <!--LOGGED IN USER-->
                                <a href="/login"><button class="resources button">Comment</button></a>
                                <a href="/edit"><button class="resources button">Edit</button></a>
                                <a href="/events"><button class="resources button">Delete</button></a>
                                <a href="#"><button class="resources button">Upvote</button></a>
                                <a href="#"><button class="resources button">Downvote</button></a>
                            </c:when>
                            <c:otherwise> <!--ANON USER-->
                                <a href="/login"><button class="resources button">Comment</button></a>
                            </c:otherwise>
                        </c:choose>
                        </div>
                    </c:forEach>
                </div>
            </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>