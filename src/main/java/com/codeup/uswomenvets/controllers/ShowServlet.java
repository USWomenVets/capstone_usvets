package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.Comment;
import com.codeup.uswomenvets.models.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Calcious on 12/20/16.
 */
@WebServlet(name = "controllers.ShowServlet", urlPatterns = "/show")
public class ShowServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        List<Post> posts = DaoFactory.getPostsDao().specPost(id);
        List<Comment> comments = DaoFactory.getCommentsDao().all(posts.get(0));
        request.getSession().setAttribute("posts", posts);
        request.getSession().setAttribute("comments", comments);
        request.getRequestDispatcher("/WEB-INF/posts/show.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/posts/show.jsp").forward(request, response);
    }
}