package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.Post;
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
@WebServlet(name = "EditServlet", urlPatterns = "/edit")
public class EditServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        String postId = request.getParameter("id");
        request.setAttribute("posts", DaoFactory.getPostsDao().specPost(postId));
        request.getRequestDispatcher("/WEB-INF/posts/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String title = request.getParameter("title");
        String content = request.getParameter("title");
        int category = Integer.parseInt(request.getParameter("category"));
        int postId = Integer.parseInt(request.getParameter("id"));



        Post post = new Post(user.getId(), postId, title, content, category);


    }
}
