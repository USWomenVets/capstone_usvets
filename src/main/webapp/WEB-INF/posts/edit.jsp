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
        <section class="main">
            <div class="wrap">
                <h1>Update</h1>
                <form action="/posts/edit" method="POST">
                    <c:forEach var="post" items="${posts}">
                        <h3>${post.title}</h3>
                        <h4>${post.getPostDate}</h4>
                        <p>${post.content}</p>
                        <h3>${post.getUsername()}</h3>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input id="title" name="title" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label for="content">Content</label>
                            <textarea id="content" name="content" class="form-control"></textarea>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary" name="id" value=${post.getId()}>Submit</button>
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