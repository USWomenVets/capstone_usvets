package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("posts", DaoFactory.getPostsDao().userPost(user.getId()));
        request.getRequestDispatcher("/WEB-INF/users/profile.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String gender = request.getParameter("gender");
        String birth = request.getParameter("birth");
        String age = request.getParameter("age");



    }
}
