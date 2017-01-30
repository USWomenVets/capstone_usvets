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

        <div class="wrap row">
        <form class="form-horizontal">
            <fieldset>
                <legend>Contact US</legend>
                <div class="form-group">
                    <label for="inputEmail" class="large-2 columns control-label">Email</label>
                    <div class="large-10 columns">
                        <input class="form-control" id="inputEmail" placeholder="Email" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="large-2 columns control-label">Password</label>
                    <div class="large-10 columns">
                        <input class="form-control" id="inputPassword" placeholder="Password" type="password">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Checkbox
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="textArea" class="large-2 columns control-label">Textarea</label>
                    <div class="large-10 columns">
                        <textarea class="form-control" rows="3" id="textArea"></textarea>
                        <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="large-2 columns control-label">Radios</label>
                    <div class="large-10 columns">
                        <div class="radio">
                            <label>
                                <input name="optionsRadios" id="optionsRadios1" value="option1" checked="" type="radio">
                                Option one is this
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input name="optionsRadios" id="optionsRadios2" value="option2" type="radio">
                                Option two can be something else
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="select" class="large-2 columns control-label">Selects</label>
                    <div class="large-10 columns">
                        <select class="form-control" id="select">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <br>
                        <select multiple="" class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="large-10 columns large-offset-2">
                        <button type="reset" class="btn btn-default">Cancel</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </fieldset>
        </form>
            <%--<section class="main">--%>
    <div class="wrap">
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