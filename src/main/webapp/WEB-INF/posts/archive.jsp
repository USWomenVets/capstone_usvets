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
                    <h1>Welcome to Archive Page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

        <section class="main">
            <div class="wrap">
                <c:forEach var="post" items="${posts}">
                    <div>
                        <form role="search" action="/create" method="get">
                            <button name="id" value=${post.getId()}>
                                <h2>${post.title}</h2>
                                <h4>${post.postDate}</h4>
                                <p>${post.content}</p>
                                <h4>${post.username}</h4>
                            </button>
                        </form>
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
