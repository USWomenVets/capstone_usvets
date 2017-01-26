package com.codeup.uswomenvets.controllers;

import com.codeup.uswomenvets.dao.DaoFactory;
import com.codeup.uswomenvets.models.Comment;
import com.codeup.uswomenvets.models.Post;
import com.codeup.uswomenvets.models.User;

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
    User user;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        List<Post> posts = DaoFactory.getPostsDao().specPost(id);
        Post post = DaoFactory.getPostsDao().specPost(Integer.parseInt(id));
        user = DaoFactory.getUsersDao().findByUsername(post.getUsername());
        List<Comment> comments = DaoFactory.getCommentsDao().all(posts.get(0));
        request.getSession().setAttribute("posts", posts);
        request.getSession().setAttribute("post", post);
        request.getSession().setAttribute("comments", comments);
        request.getRequestDispatcher("/WEB-INF/posts/show.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        String content = request.getParameter("content");
        Post post = (Post) request.getSession().getAttribute("post");
        Comment comment = new Comment(user.getId(), post.getId(), content);
        if (DaoFactory.getCommentsDao().insert(comment, post)) {
            request.getSession().setAttribute("commentSuccess", "Success! your comment was posted");
        } else {
            request.getSession().setAttribute("commentError", "unable to create a comment");
        }
        String id = request.getParameter("id");
        List<Post> posts = DaoFactory.getPostsDao().specPost(String.valueOf(post.getId()));
        Post updatePost = DaoFactory.getPostsDao().specPost(Integer.parseInt(String.valueOf(post.getId())));
        user = DaoFactory.getUsersDao().findByUsername(post.getUsername());
        List<Comment> comments = DaoFactory.getCommentsDao().all(posts.get(0));
        request.getSession().setAttribute("posts", posts);
        request.getSession().setAttribute("post", updatePost);
        request.getSession().setAttribute("comments", comments);
        request.getRequestDispatcher("/WEB-INF/posts/show.jsp").forward(request, response);
    }
}