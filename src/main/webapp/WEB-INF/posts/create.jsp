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
                    <h1>Welcome to Create a post page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>

            <!--Main Section-->
            <section class="main">
                <div class="wrap">
                    <label>Select Menu
                        <select>
                            <option value="husker">Wellness</option>
                            <option value="starbuck">Employment</option>
                            <option value="hotdog">Events</option>
                            <option value="apollo">General</option>
                        </select>
                    </label>
                    <form action="/create" method="post">
                        <label>Title
                            <input type="text" placeholder="Post title" aria-describedby="exampleHelpText">
                        </label>
                        <p class="help-text" id="exampleHelpText">Please fill in the title of your post</p>
                        <label>
                            Content
                            <textarea></textarea>
                        </label>
                        <a href="/archive"><button class="resources button" type="submit">Post!</button></a>
                    </form>
                </div>
            </section>

    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>