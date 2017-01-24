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
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Show page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

            <!--Main Section-->
            <section class="main">
                <div class="wrap">
                    <form action="/edit">
                        <c:forEach var="post" items="${posts}">
                            <div>
                                <h2>${post.title}</h2>
                                <h4>${post.getPostDate()}</h4>
                                <p>${post.content}</p>
                                <h4>${post.getUsername()}</h4>
                            </div>
                            <c:choose>
                                <c:when test="${sessionScope.user != null}"> <!--LOGGED IN USER-->
                                    <button href="/login"><button class="resources button">Comment</button>
                                    <button class="resources button" href="/edit" id="id" name="id" value="${post.getId()}">Edit</button>
                                    <button href="/events"><button class="resources button">Delete</button>
                                    <button href="#"><button class="resources button">Upvote</button>
                                    <button href="#"><button class="resources button">Downvote</button>
                                </c:when>
                                <c:otherwise> <!--ANON USER-->

                                    <a href="/login"><button class="resources button">Comment</button></a>
                                    <a href="/employment"><button class="resources button">Upvote</button></a>
                                    <a href="/events"><button class="resources button">Downvote</button></a>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </form>
                </div>
            </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>