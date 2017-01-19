package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.Post;

import java.util.ArrayList;
import java.util.List;

public class ListPostsDao implements Posts {
    private List<Post> posts;

    public List<Post> all(String q) {
        if (posts == null) {
            posts = generatePosts();
        }
        return posts;
    }

    public Long insert(Post post) {
        // make sure we have posts
        if (posts == null) {
            posts = generatePosts();
        }
        // we'll assign an "id" here based on the size of the posts list
        // really the dao would handle this
        post.setId((long) posts.size());
        posts.add(post);
        return post.getId();
    }

    @Override
    public List<Post> userPost(long userId) {
        return null;
    }

    @Override
    public  List<Post> specPost(String postId) { return null; }

    private List<Post> generatePosts() {
        List<Post> posts = new ArrayList<>();
        posts.add(new Post(
                1,
                1,
                "playstation for sale",
                "This is a slightly used playstation",
                "",
                ""
        ));
        posts.add(new Post(
                2,
                1,
                "Super Nintendo",
                "Get your game on with this old-school classic!",
                "",
                ""
        ));
        posts.add(new Post(
                3,
                2,
                "Junior Java Developer Position",
                "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript",
                "",
                ""
        ));
        posts.add(new Post(
                4,
                2,
                "JavaScript Developer needed",
                "Must have strong Java skills",
                "",
                ""

        ));
        return posts;
    }
}
