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

        <!--Main Section-->
        <section class="main">
            <div class="show">

                <!--ERROR MESSAGE AREA-->
                <c:if test="${sessionScope.commentError != null}">
                    <div class="callout alert">
                        <h5>We must apologize...</h5>
                        <p>Comment cannot be blank</p>
                    </div>
                </c:if>

                <!--POPULATES ALL OF THE INFORMATION ASSOCIATED WITH THE SELECTED POST-->
                <c:forEach var="post" items="${posts}">
                    <div class="wrap form-text-color">
                        <h2>${post.getUsername()}</h2>
                        <h3>${post.getTitle()}</h3>
                        <h4>${post.getContent()}</h4>
                        <p>${post.getPostDateMonth()}</p>
                        <h5>${post.getStringCategory()}</h5>

                        <!--MAKES CERTAIN OPTIONS AVAILABLE DEPENDING ON WHETHER LOGGED IN OR NOT-->
                        <c:choose>
                            <!--LOGGED IN USER WHO ALSO AUTHORED THE POST-->
                            <c:when test="${sessionScope.user != null && sessionScope.user.getId() == post.getUserId()}">
                                <form action="/posts/edit">
                                    <button name="id" value="${post.getId()}"
                                            class="resources button sorting_buttons">Edit
                                    </button>
                                    <a href="/delete?id=${post.getId()}" name="id" value="${post.getId()}"
                                       class="resources button sorting_buttons">Delete</a>
                                </form>
                            </c:when>

                            <!--LOGGED IN USER-->
                            <c:when test="${sessionScope.user != null}">

                            </c:when>
                            <c:otherwise>
                                <!--ANON USER-->
                                <a href="/login">
                                    <button class="resources button sorting_buttons hvr-grow">Sign in to comment
                                    </button>
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <hr class="hr_comment">
                </c:forEach>


                <!--LOGGED IN USER FOR COMMENTS-->
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <form action="/show" method="post">
                            <div class="form-group row wrap">
                                <div class="wrap">
                                    <label for="content">Comment</label>
                                    <textarea id="content" name="content" class="form-control"></textarea>
                                    <a class="button sorting_buttons hvr-grow">
                                        <button type="submit" name="id" value="${post.getId()}">Submit</button>
                                    </a>
                                </div>
                            </div>
                        </form>
                    </c:when>
                </c:choose>

                <div class="row wrap form-text-color">

                    <!--POPULATES THE VARIOUS COMMENTS ASSOCIATED WITH A POST-->
                    <c:forEach items="${comments}" var="comment">
                        <div class="wrap">
                            <h2>${comment.getUsername()}</h2>
                            <h4>${comment.getContent()}</h4>
                            <p>${comment.getCommentDateMonth()}</p>
                            <form action="/delete/comment">
                                <input type="hidden" name="postId" value="${comment.getPostId()}"
                                <c:choose>
                                    <c:when test="${sessionScope.user.getId() == comment.getUserId()}"> <!--LOGGED IN USER-->
                                        <button name="commentId" value="${comment.getId()}" class="resources button">
                                            Delete
                                        </button>
                                    </c:when>
                                </c:choose>
                            </form>
                        </div>
                        <hr class="hr_comment">
                    </c:forEach>
                    <br>
                </div>
            </div>
        </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>