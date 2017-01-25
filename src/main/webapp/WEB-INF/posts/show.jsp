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
                <form action="/edit">
                    <c:forEach var="post" items="${posts}">
                        <div class="wrap">
                            <h2>${post.title}</h2>
                            <h4>${post.getPostDate()}</h4>
                            <p>${post.content}</p>
                            <h4>${post.getUsername()}</h4>
                            <c:choose>
                                <c:when test="${sessionScope.user != null}"> <!--LOGGED IN USER-->
                                    <button href="/comment" class="resources button">Comment</button>
                                    <button href="/edit" id="id" name="id" value="${post.getId()}" class="resources button">Edit</button>
                                    <button class="resources button">Delete</button>
                                    <button class="resources button">Upvote</button>
                                    <button class="resources button">Downvote</button>
                                </c:when>
                                <c:otherwise> <!--ANON USER-->
                                    <a href="/login"><button class="resources button">Comment</button></a>
                                    <a href="/employment"><button class="resources button">Upvote</button></a>
                                    <a href="/events"><button class="resources button">Downvote</button></a>
                                </c:otherwise>
                            </c:choose>
                        </div>
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