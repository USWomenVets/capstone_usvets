<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--Mobile Navigation Small-->
<div class="off-canvas position-left show-for-small-only" id="mobile-menu" data-off-canvas>
    <ul>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <div>
                <li><a href="/archive">Discuss</a></li>
                <li><a href="/locator">Your VA</a></li>
                <li><a href="/events">Events</a></li>
                <li><a href="/create">Post</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
                </div>
            </c:when>
            <c:otherwise>
                <div>
                <li><a href="/archive">Discuss</a></li>
                <li><a href="/locator">Your VA</a></li>
                <li><a href="/events">Events</a></li>
                <li><a href="/register">Register</a></li>
                <li><a href="/login">Login</a></li>
                </div>
            </c:otherwise>
        </c:choose>
    </ul>
</div>


<!--Mobile Navigation Medium/Tablet-->
<div class="off-canvas position-left show-for-medium" id="mobile-menu" data-off-canvas>
    <ul>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <div>
                    <li><a href="/archive">Discuss</a></li>
                    <li><a href="/locator">Your VA</a></li>
                    <li><a href="/events">Events</a></li>
                    <li><a href="/create">Post</a></li>
                    <li><a href="/profile">Profile</a></li>
                    <li><a href="/logout">Logout</a></li>
                </div>
            </c:when>
            <c:otherwise>
                <div>
                    <li><a href="/archive">Discuss</a></li>
                    <li><a href="/locator">Your VA</a></li>
                    <li><a href="/events">Events</a></li>
                    <li><a href="/register">Register</a></li>
                    <li><a href="/login">Login</a></li>
                </div>
            </c:otherwise>
        </c:choose>
    </ul>
</div>


<!--Mobile Navigation Area-->
<div class="off-canvas-content" data-off-canvas-content>
    <div class="title-bar">
        <div class="title-bar-left">
            <button class="menu-icon" type="button" data-open="mobile-menu"></button>
            <span class="title-bar-title">MENU || <a href="/index">USWOMENVETS</a></span>
        </div>
    </div>
    <!--Navigation-->
    <nav class="top-bar nav-desktop"> <!--nav-desktop specific style as opposed to mobile-->
        <div>
        <div class="top-bar-left">
            <a href="/index"><h3 class="site-logo hvr-grow">USWOMENVETS</h3></a>
        </div>
        <div class="top-bar-right">
            <ul class="menu menu-desktop nav-desktop dropdown menu" data-dropdown-menu>
                <div></div>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li class="hvr-grow medium_nav"><a href="/archive">Discuss</a></li>
                        <li class="hvr-grow medium_nav"><a href="/locator">Your VA</a></li>
                        <li class="hvr-grow medium_nav"><a href="/events">Events</a></li>
                        <li class="hvr-grow medium_nav"><a href="/create">Post</a></li>
                        <li class="hvr-grow medium_nav"><a href="/profile">Profile</a></li>
                        <li class="hvr-grow medium_nav"><a href="/logout">Logout</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="hvr-grow medium_nav"><a href="/archive">Discuss</a></li>
                        <li class="hvr-grow medium_nav"><a href="/locator">Your VA</a></li>
                        <li class="hvr-grow medium_nav"><a href="/events">Events</a></li>
                        <li class="hvr-grow medium_nav"><a href="/register">Register</a></li>
                        <li class="hvr-grow medium_nav"><a href="/login">Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
        </div>
    </nav>
</div>