<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="off-canvas position-left show-for-medium" id="mobile-menu" data-off-canvas>
    <ul>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <li><input type="search" placeholder="Search"></li>
                <li><a href="/archive">Board</a></li>
                <li><a href="/locator">Locator</a></li>
                <li><a href="/events">Events</a></li>
                <li><a href="/create">Post</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:when>
            <c:otherwise>
                <li><input type="search" placeholder="Search"></li>
                <li><a href="/archive">Board</a></li>
                <li><a href="/locator">Locator</a></li>
                <li><a href="/events">Events</a></li>
                <li><a href="/register">Register</a></li>
                <li><a href="/login">Login</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>


<!--Mobile Navigation-->
<div class="off-canvas-content" data-off-canvas-content>
    <div class="title-bar show-for-small">
        <div class="title-bar-left">
            <button class="menu-icon" type="button" data-open="mobile-menu"></button>
            <span class="title-bar-title">MENU || <a href="/index">USWOMENVETS</a></span>
        </div>
    </div>

    <!--Navigation-->
    <nav class="top-bar nav-desktop"> <!--nav-desktop specific style as opposed to mobile-->

        <div class="top-bar-left">
            <a href="/index"><h3 class="site-logo hvr-grow">USWOMENVETS || </h3></a>
        </div>
        <div class="top-bar-right">
            <ul class="menu menu-desktop nav-desktop dropdown menu" data-dropdown-menu>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><input type="search" placeholder="Search"></li>
                        <li><a href="/archive">Board</a></li>
                        <li><a>Resources</a>
                            <ul class="menu">
                                <li class="submenu_item"><a href="/locator">Locator</a></li>
                                <li class="submenu_item"><a href="/events">Events</a></li>
                            </ul>
                        </li>
                        <li><a href="/create">Post</a></li>
                        <li><a href="/profile">Profile</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><input type="search" placeholder="Search"></li>
                        <li><a href="/archive">Board</a></li>
                        <li><a>Resources</a>
                            <ul class="menu">
                                <li class="submenu_item"><a href="/locator">Locator</a></li>
                                <li class="submenu_item"><a href="/events">Events</a></li>
                            </ul>
                        </li>
                        <li><a href="/register">Register</a></li>
                        <li><a href="/login">Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
</div>