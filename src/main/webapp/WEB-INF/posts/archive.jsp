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


        <section class="gradient sort_title">
            <div class="title large-12 columns text-center">
                <h1 class="locator_heading"><strong>Discuss</strong></h1>
            </div>
            <div class="row">
                <div class="large-12 columns button-group sort-by-button-group">
                    <button class="button sorting_buttons button_margin hvr-grow" data-sort-value="username">Username</button>
                    <button class="button sorting_buttons button_margin hvr-grow" data-sort-value="date">Date</button>
                    <button class="button sorting_buttons button_margin hvr-grow" data-sort-value="title">Title</button>
                    <button class="button sorting_buttons button_margin hvr-grow" data-sort-value="category">Category</button>
                </div>
            </div>
            <div class="grid main">
                <div class="wrap">
                    <div class="container">
                <c:forEach var="post" items="${posts}">
                    <div class="row">
                    <div class="archive_post hvr-grow element-item" id="table_test" data-category="${post.stringCategory}">
                            <a href="/show?id=${post.getId()}" name="id">
                                <div class="post_para username date">
                                    <span id="username_arch">${post.username}</span>
                                    <span id="date_arch">${post.getPostDateMonth()}</span>
                                </div>
                                <h1 class="post_para title" id="title_arch">${post.title}</h1>
                                <hr />
                                <p class="post_para content truncate" id="content_arch">${post.content}</p>
                                <h2 class="post_para category" id="category_arch">${post.stringCategory}</h2>
                            </a>
                    </div>
                    </div>
                </c:forEach>
                    </div>
                </div>
            </div>

        </section>

    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>
