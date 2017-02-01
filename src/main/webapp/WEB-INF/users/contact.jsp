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
        <div class="title large-12 columns text-center">
            <h1><strong>Contact US</strong></h1>
        </div>
        <div class="wrap">
            <form class="form" action="/contact" method="post">
                <fieldset>
                    <div class="row">
                        <label for="inputName" class="large-2 columns control-label">Name</label>
                        <div class="large-10 columns">
                            <input value="${user.getFullName()}" name="name" class="form-control" id="inputName" placeholder="Name" type="text" required>
                        </div>
                    </div>
                    <div class="row">
                        <label for="inputEmail" class="large-2 columns control-label">Email</label>
                        <div class="large-10 columns">
                            <input value="${user.getEmail()}" name="email" class="form-control" id="inputEmail" placeholder="Email" type="text" required>
                        </div>
                    </div>
                    <div class="row">
                        <label for="textArea" class="large-2 columns" >Message</label>
                        <div class="large-10 columns">
                            <textarea name="content" class="form-control" rows="5" id="textArea" placeholder="Message"required></textarea>
                        </div>
                    </div>

                    <div class="reveal" id="modal" data-reveal>
                        <h2>Thanks for Contacting US.</h2>
                        <p class="lead">We will reply to you as soon as possible.</p>
                        <button class="close-button" data-close aria-label="Close modal" type="button">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="row text-center">
                    <p><button type="submit" data-open="modal" class="button sorting_buttons hvr-grow">Submit</button></p>
                    </div>
                </fieldset>
            </form>
            <%--<section class="main">--%>
            <%--<div class="wrap">--%>
            <%--<form action="https://www.elformo.com/forms/3e8e34bc-bf8d-4f42-8b8f-2cf90c44f4c5" method="post">--%>
            <%--<div class="contact form line">--%>
            <%--<div class="mail">--%>
            <%--<label>EMAIL: <input type="email" id="email" name="email" value="justin.armer@gmail.com"></label>--%>
            <%--</div>--%>
            <%--<div class="contact form line">--%>
            <%--<div class="message">--%>
            <%--<label>MESSAGE: <textarea id="comment" name="comment" placeholder="Outgoing message through ElFormo"></textarea>--%>
            <%--</label>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="contact form line">--%>
            <%--<div class="submit">--%>
            <%--<input type="submit" class="button">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</form>--%>
            <%--</div>--%>
            <%--</section>--%>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>