package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ArchiveServlet", urlPatterns = "/archive")
public class ArchiveServlet extends HttpServlet {
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {
        String q = request.getParameter("query");
        request.setAttribute("posts", DaoFactory.getPostsDao().all(q));
        request.getRequestDispatcher("/WEB-INF/posts/archive.jsp").forward(request, response);
    }
}
