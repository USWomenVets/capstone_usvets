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
                <div class="wrap">
                    <%--<c:if test="${sessionScope.errorMessageEmptyLogin != null}">--%>
                        <%--<div class="callout alert">--%>
                            <%--<h5>We must apologize...</h5>--%>
                            <%--<p>Username or password cannot be blank</p>--%>
                        <%--</div>--%>
                    <%--</c:if>--%><!--NEED BACKEND HERE TO CHECK IF TITLE/BODY ARE EMPTY-->
                    <label>Select Menu
                        <select>
                            <option>Wellness</option>
                            <option>Employment</option>
                            <option>Events</option>
                            <option>General</option>
                        </select>
                    </label>
                    <form action="/create" method="POST">
                        <label for="title">Title</label>
                        <input id="title" name="title" type="text" placeholder="Post title" aria-describedby="exampleHelpText">
                        <p class="help-text" id="exampleHelpText">Please fill in the title of your post</p>
                        <label for="content">Content</label>
                        <textarea id="content" name="content" ></textarea>
                        <button class="resources button" type="submit">Post!</button>
                    </form>
                </div>
            </section>

    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>