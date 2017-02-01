package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.Contact;
import com.codeup.uswomenvets.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Calcious on 1/18/17.
 */
@WebServlet(name = "ContactServlet", urlPatterns = "/contact")
public class ContactServlet extends HttpServlet {
    User user;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            request.setAttribute("user", user);
        }
        request.getRequestDispatcher("/WEB-INF/users/contact.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Contact contact;
        User user = (User) request.getSession().getAttribute("user");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");
        if (user == null) {
            contact = new Contact(
                    user.getId(),
                    name,
                    email,
                    content
            );
        } else {
            contact = new Contact(
                    name,
                    email,
                    content
            );
        }
        DaoFactory.getContactDao().insertContact(contact);
        request.getRequestDispatcher("/WEB-INF/users/contact.jsp").forward(request, response);
    }


}
