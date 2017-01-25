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
 * Created by KJCurtis on 1/25/17.
 */

@WebServlet(name = "controllers.DeletePostServlet", urlPatterns = "/delete")
public class DeletePostServlet extends HttpServlet{
    User user;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = (User) request.getSession().getAttribute("user");
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);
        Post post = DaoFactory.getPostsDao().specPost(id);

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        if (user.getId() != post.getUserId()) {
            request.getSession().setAttribute("errorMessage", "You do not have the permissions to delete this post");
            response.sendRedirect("/show");

        } else {
            if (DaoFactory.getPostsDao().deletePost(post)) {
                request.getSession().setAttribute("successMessage", "Your post has been successfully deleted.");
                response.sendRedirect("/archive");

            } else {
                request.getSession().setAttribute("failureMessage", "There was a problem attempting to delete your post.");
                response.sendRedirect("/show");
            }
        }
    }
}
