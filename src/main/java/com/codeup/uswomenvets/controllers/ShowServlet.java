package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Calcious on 12/20/16.
 */
@WebServlet(name = "controllers.ShowServlet", urlPatterns = "/show")
public class ShowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("ads", DaoFactory.getPostsDao().specPost(id));
        request.getRequestDispatcher("/WEB-INF/posts/show.jsp").forward(request, response);
    }
}
