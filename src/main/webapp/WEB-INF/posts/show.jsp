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
        <!-- This is my temp section while i get functionality working please overite with changes if a merge conflict occurs
         -->
        <section class="main">
            <div class="show">
                <form action="/show" method="post">
                    <input type="hidden" name="user" value="${sessionScope.user}">
                    <input type="hidden" name="post" value="${sessionScope.post}">
                    <textarea name="content"></textarea>
                    <button type="submit" class="resources button">Post Comment</button>
                </form>
            </div>
        </section>
        <section class="main">
            <div class="show">
                <form action="/delete/comment">
                    <c:forEach items="${comments}" var="comment">
                        <div class="wrap">
                            <h2>${comment.getUsername()}</h2>
                            <h3>${comment.getPostDate()}</h3>
                            <h4>${comment.getContent()}</h4>
                            <input type="hidden" name="postId" value="${comment.getPostId()}"
                            <c:choose>
                                <c:when test="${sessionScope.user.getId() == comment.getUserId()}"> <!--LOGGED IN USER-->
                                    <button name="commentId" value="${comment.getId()}" class="resources button">Delete</button>
                                </c:when>
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