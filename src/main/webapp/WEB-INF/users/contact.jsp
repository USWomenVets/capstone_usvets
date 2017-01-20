<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="US Women Vets Home Page" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>


            <!--Hero Section-->
            <section class="hero">
                <div class="wrap">
                    <h1>Welcome to Contact page!</h1>
                    <p>Catchy tagline goes here!</p>
                </div>
            </section>


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

<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>