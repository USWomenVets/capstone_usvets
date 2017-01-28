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


        <section class="locator sort_title">
            <h3><strong>Discussion Board</strong></h3>
                <div class="button-group sort-by-button-group">
                    <button class="button sorting_buttons" data-sort-value="username">Username</button>
                    <button class="button sorting_buttons" data-sort-value="date">Date</button>
                    <button class="button sorting_buttons" data-sort-value="title">Title</button>
                    <button class="button sorting_buttons" data-sort-value="category">Category</button>
                    </div>

            <div class="grid">
            <br>
                <c:forEach var="post" items="${posts}">
                <div class="archive_post container hvr-grow-shadow element-item shadow" data-category="${post.stringCategory}">
                            <a href="/show?id=${post.getId()}" class="archive_post_button" name="id">
                                <div class="post_para username date">
                                    <span id="username_arch">By || ${post.username}</span>
                                    <span id="date_arch">${post.postDate}</span>
                                </div>
                                <hr />
                                <h1 class="post_para title" id="title_arch">${post.title}</h1>
                                <p class="post_para content truncate" id="content_arch">${post.content}</p>
                                <h2 class="post_para category" id="category_arch">${post.stringCategory}</h2>
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
