package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.User;
import com.codeup.uswomenvets.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    User user;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = (User) request.getSession().getAttribute("user");
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/users/profile.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = (User) request.getSession().getAttribute("user");
        int age;
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        String password = request.getParameter("current_password");
        String newPassword = request.getParameter("new_password");
        String passwordConfirmation = request.getParameter("confirm_password");
        if (! newPassword.isEmpty()) {
            boolean inputHasErrors = newPassword.isEmpty()
                    || password.isEmpty()
                    || passwordConfirmation.isEmpty()
                    || (! newPassword.equals(passwordConfirmation));
            if (inputHasErrors) {
                request.getSession().setAttribute("errorMessageEmpty", "password fields cannot be empty when changing password.");
                response.sendRedirect("/profile");
                return;
            } else {
                boolean validAttempt = Password.check(password, user.getPassword());
                if (validAttempt) {
                    if (Password.check(password, Password.hash(newPassword))) {
                        password = "";
                    } else {
                        password = newPassword;
                    }
                } else {
                    request.getSession().setAttribute("errorMessageIncorrectPassword", "Password is incorrect");
                    response.sendRedirect("/profile");
                    return;
                }
            }
        } else if (! password.isEmpty() && newPassword.isEmpty() && passwordConfirmation.isEmpty()) {
            boolean validAttempt = Password.check(password, user.getPassword());
            password = "";
            if (!validAttempt) {
                request.getSession().setAttribute("errorMessageIncorrectPassword", "Password is incorrect");
                response.sendRedirect("/profile");
                return;
            }
        } else {
            request.getSession().setAttribute("errorMessageEmpty", "password field must be filled out to edit profile.");
            response.sendRedirect("/profile");
            return;
        }
        try {
            age = Integer.parseInt(request.getParameter("age"));
            if (age < 1 || age >= 150) {
                throw new RuntimeException("The input age is not a valid integer used for age");
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("/profile");
            request.getSession().setAttribute("errorMessageIncorrectAge", "age must be a valid integer");
            throw new RuntimeException("The input age is not a valid integer used for age", e);
        }

        User editUser = new User(
                user.getId(),
                password,
                age,
                request.getParameter("username"),
                request.getParameter("email"),
                request.getParameter("first_name"),
                request.getParameter("last_name"),
                request.getParameter("about"),
                request.getParameter("birth"),
                request.getParameter("gender")
        );
        DaoFactory.getUsersDao().editUser(editUser, user);
        User updatedUser = DaoFactory.getUsersDao().findByUsername(editUser.getUsername());
        request.getSession().setAttribute("user", updatedUser);
        request.getRequestDispatcher("/WEB-INF/users/profile.jsp").forward(request, response);
    }
}
