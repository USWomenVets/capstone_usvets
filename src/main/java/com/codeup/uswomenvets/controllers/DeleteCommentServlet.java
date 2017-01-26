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

/**
 * Created by KJCurtis on 1/26/17.
 */
@WebServlet(name = "controllers.DeleteCommentServlet", urlPatterns = "/delete/comment")
public class DeleteCommentServlet  extends HttpServlet {
    User user;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = (User) request.getSession().getAttribute("user");
        int commentId = Integer.parseInt(request.getParameter("commentId"));
        int postId = Integer.parseInt(request.getParameter("postId"));
        request.setAttribute("commentId", commentId);
        Comment comment = DaoFactory.getCommentsDao().specComment(commentId);
        Post post = DaoFactory.getPostsDao().specPost(postId);

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        if (user.getId() != comment.getUserId()) {
            request.getSession().setAttribute("errorMessage", "You do not have the permissions to delete this comment");
            response.sendRedirect("/show?id=" + post.getId());

        } else {
            if (DaoFactory.getCommentsDao().deleteComment(comment)) {
                request.getSession().setAttribute("successMessage", "Your comment has been successfully deleted.");
                response.sendRedirect("/show?id=" + post.getId());

            } else {
                request.getSession().setAttribute("failureMessage", "There was a problem attempting to delete your comment.");
                response.sendRedirect("/show");
            }
        }
    }
}
