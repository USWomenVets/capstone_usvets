package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.Comment;
import com.codeup.uswomenvets.models.Post;

import java.util.List;

/**
 * Created by KJCurtis on 1/26/17.
 */
public interface Comments {

    List<Comment> all(Post post);

    boolean insert(Comment comment, Post post);

    boolean deleteComment(Comment comment);

    Comment specComment(int id);
}
