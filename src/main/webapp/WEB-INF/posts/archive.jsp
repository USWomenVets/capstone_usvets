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


        <section class="locator">
            <div class="wrap">
            <h3><strong>Please select a categoy</strong></h3>
            <nav aria-label="You are here:" role="navigation" class="button-group sort-by-button-group">
                <ul class="breadcrumbs">
                    <li><button class="button" data-sort-value="username">Username</button></li>
                    <li><button class="button" data-sort-value="date">Date</button></li>
                    <li><button class="button" data-sort-value="title">Ttile</button></li>
                    <li><button class="button" data-sort-value="category">Category</button></li>
                </ul>
            </nav>
            </div>
            <div class="grid">
            <br>
                <c:forEach var="post" items="${posts}">
                <div class="archive_post container hvr-grow-shadow element-item" data-category="${post.stringCategory} ">
                            <a href="/show?id=${post.getId()}" class="archive_post_button" name="id">
                                <p class="post_para category">${post.stringCategory}</p>
                                <p class="post_para title">${post.title}</p>
                                <p class="post_para username">${post.username}</p>
                                <p class="post_para date">${post.postDate}</p>
                            </a>
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
