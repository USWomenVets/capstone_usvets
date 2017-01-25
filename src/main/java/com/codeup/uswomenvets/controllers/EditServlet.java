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
@WebServlet(name = "EditServlet", urlPatterns = "/posts/edit")
public class EditServlet extends HttpServlet {
    User user;
    Post post;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = (User) request.getSession().getAttribute("user");
        int postId = Integer.parseInt(request.getParameter("id"));
        Post oldPost = DaoFactory.getPostsDao().specPost(postId);
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        } else if (user.getId() != oldPost.getUserId()) {
            request.getSession().setAttribute("editErrorMessage", "you are not allowed to edit other user's posts");
            response.sendRedirect("/show?id=" + oldPost.getId());
        } else {
            request.setAttribute("posts", DaoFactory.getPostsDao().specPost(request.getParameter("id")));
            request.getRequestDispatcher("/WEB-INF/posts/edit.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int category = Integer.parseInt(request.getParameter("category"));
        int postId = Integer.parseInt(request.getParameter("id"));
        post = new Post(user.getId(), postId, title, content, category);
        if (DaoFactory.getPostsDao().editPost(post)) {
            request.setAttribute("posts", DaoFactory.getPostsDao().specPost(Integer.toString(post.getId())));
            request.getRequestDispatcher("/WEB-INF/posts/show.jsp").forward(request, response);
        } else {
            request.getSession().setAttribute("failureMessage", "You post was not able to be changed.");
        }




    }
}
