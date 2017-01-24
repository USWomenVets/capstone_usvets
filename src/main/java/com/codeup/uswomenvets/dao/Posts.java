package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.Post;

import java.util.List;

public interface Posts {
    // get a list of all the posts
    List<Post> all(String q);
    // insert a new post and return the new post's id
    int insert(Post post);

    List <Post> userPost(long userId);

    List <Post> specPost(String postId);

    void editPost(Post post);
}
