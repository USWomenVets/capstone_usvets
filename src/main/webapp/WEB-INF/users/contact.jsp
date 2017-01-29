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
        <div class="title large-12 columns text-center">
            <h1><strong>Contact US</strong></h1>
        </div>
            <section class="main">
                <div class="wrap row">
                    <form action="https://www.elformo.com/forms/3e8e34bc-bf8d-4f42-8b8f-2cf90c44f4c5" method="post">
                        <div class="contact form line">
                            <div class="mail">
                                <label>EMAIL: <input type="email" id="email" name="email" value="justin.armer@gmail.com"></label>
                            </div>
                            <div class="contact form line">
                                <div class="message">
                                    <label>MESSAGE: <textarea id="comment" name="comment" placeholder="Outgoing message through ElFormo"></textarea>
                                    </label>
                                </div>
                            </div>
                            <div class="contact form line">
                                <div class="submit">
                                    <input type="submit" class="button">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>