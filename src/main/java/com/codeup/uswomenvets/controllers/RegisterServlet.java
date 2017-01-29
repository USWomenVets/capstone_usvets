package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/users/register.jsp").forward(request, response);
        request.getSession().removeAttribute("errorMessage");
        System.out.println(request.getSession().getAttribute("errorMessage"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");

        // validate input
        boolean inputHasErrors = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            request.getSession().setAttribute("errorMessageEmpty", "Information cannot be left blank");
            response.sendRedirect("/register");
            return;
        }

        User userExists = DaoFactory.getUsersDao().findByUsername(username);

        if ( userExists != null){
            response.sendRedirect("/register");
            request.getSession().setAttribute("errorMessage", "Username or email already exists");
            return;
        }

        // create and save a new user
        User user = new User(username, email, password, firstName, lastName);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
