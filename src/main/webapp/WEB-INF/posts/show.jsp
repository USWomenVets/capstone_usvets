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
                <form action="/posts/edit">
                    <c:forEach var="post" items="${posts}">
                        <div class="wrap form-text-color">
                            <h2>${post.getTitle()}</h2>
                            <h3>${post.getStringCategory()}</h3>
                            <h4>${post.getPostDate()}</h4>
                            <p>${post.getContent()}</p>
                            <h4>${post.getUsername()}</h4>
                            <c:choose>
                                <c:when test="${sessionScope.user != null}"> <!--LOGGED IN USER-->
                                    <a href="/comment/create" class="resources button">Comment</a>
                                    <button id="id" name="id" value="${post.getId()}" class="resources button">Edit</button>
                                    <a href="/delete?id=${post.getId()}" name="id" value="${post.getId()}" class="resources button">Delete</a>
                                </c:when>
                                <c:otherwise> <!--ANON USER-->
                                    <a href="/login"><button class="resources button">Sign in to comment</button></a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </c:forEach>
                </form>
                <br>
                <hr class="hr_comment">
                <br>
                <hr class="hr_comment">
                <div class="row wrap">
                    <form action="/posts/edit">
                        <c:forEach var="post" items="${posts}">
                            <div class="wrap form-text-color">
                                <h2>${post.getTitle()}</h2>
                                <h3>${post.getStringCategory()}</h3>
                                <h4>${post.getPostDate()}</h4>
                                <p>${post.getContent()}</p>
                                <h4>${post.getUsername()}</h4>
                                <c:choose>
                                    <c:when test="${sessionScope.user != null}"> <!--LOGGED IN USER-->
                                        <a href="/comment/create" class="resources button">Comment</a>
                                        <button id="id" name="id" value="${post.getId()}" class="resources button">Edit</button>
                                        <a href="/delete?id=${post.getId()}" name="id" value="${post.getId()}" class="resources button">Delete</a>
                                    </c:when>
                                    <c:otherwise> <!--ANON USER-->
                                        <a href="/login"><button class="resources button">Sign in to comment</button></a>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </c:forEach>
                    </form>
                </div>
            </div>
        </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>