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
                <form action="/posts/edit" method="POST" class="form-text-color">
                    <c:forEach var="post" items="${posts}">
                        <h3>${post.getTitle()}</h3>
                        <h4>${post.getPostDate()}</h4>
                        <p>${post.getContent()}</p>
                        <h3>${post.getUsername()}</h3>
                        <div class="form-group">
                            <label>Select Menu
                                <select name="category" id="selCategory">
                                    <option value="1" selected="">General</option>
                                    <option value="2" selected="">Events</option>
                                    <option value="3" selected="">Employment</option>
                                    <option value="4" selected="">Wellness</option>
                                </select>
                            </label>
                            <label for="title">Title</label>
                            <input id="title" name="title" class="form-control" type="text" value="${post.getTitle()}">
                        </div>
                        <div class="form-group">
                            <label for="content">Content</label>
                            <textarea id="content" name="content" class="form-control">${post.getContent()}</textarea>
                        </div>
                        <a class="button"><button type="submit" value=${post.getId()}>Submit</button></a>
                        <script>
                            var temp = "${post.getCategory()}";
                            var mySelect = document.getElementById('selCategory');

                            for(var i, j = 0; i = mySelect.options[j]; j++) {
                                if(i.value == temp) {
                                    mySelect.selectedIndex = j;
                                    break;
                                }
                            }
                        </script>
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