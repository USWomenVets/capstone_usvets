package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.Post;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLPostsDao implements Posts {
    private Connection connection = null;

    public MySQLPostsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public List<Post> userPost(long user_id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT posts.* , users.user_name FROM posts JOIN users ON users.id = posts.user_id where users.id = ?;");
            stmt.setLong(1, user_id);
            ResultSet rs = stmt.executeQuery();
            return createPostsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving user's posts");
        }
    }

    public List<Post> specPost(String postId) {
        PreparedStatement stmt = null;
        int postID = Integer.valueOf(postId);
        try {
            stmt = connection.prepareStatement("SELECT posts.* , users.user_name FROM posts JOIN users ON users.id = posts.user_id where posts.id = ?;");
            stmt.setLong(1, postID);
            ResultSet rs = stmt.executeQuery();
            return createPostsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving selected post");
        }
    }


    @Override
    public List<Post> all(String q) {
        PreparedStatement stmt = null;
        try {
            if (q != null && q.trim() != "") {
                String selectQuery = "SELECT posts.* , users.user_name FROM posts JOIN users ON users.id = posts.user_id WHERE title LIKE ? OR description LIKE ? OR users.user_name LIKE ? OR timestamp LIKE ?";
                stmt = connection.prepareStatement(selectQuery, Statement.RETURN_GENERATED_KEYS);
                String qa = "%" + q + "%";
                stmt.setString(1, qa);
                stmt.setString(2, qa);
                stmt.setString(3, qa);
                stmt.setString(4, qa);


                ResultSet rs = stmt.executeQuery();
                return createPostsFromResults(rs);
            } else {
                stmt = connection.prepareStatement("SELECT posts.* , users.user_name FROM posts JOIN users ON users.id = posts.user_id;");
                ResultSet rs = stmt.executeQuery();
                return createPostsFromResults(rs);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all posts.", e);
        }
    }

    @Override
    public Long insert(Post post) {
        try {
            String insertQuery = "INSERT INTO posts(user_id, title, content) VALUES (?, ?, ?);";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, post.getUserId());
            stmt.setString(2, post.getTitle());
            stmt.setString(3, post.getContent());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new post.", e);
        }
    }

    private Post extractPost(ResultSet rs) throws SQLException {
        return new Post(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("content"),
                rs.getString("user_name"),
                rs.getString("content")
        );
    }

    private List<Post> createPostsFromResults(ResultSet rs) throws SQLException {
        List<Post> posts = new ArrayList<>();
        while (rs.next()) {
            posts.add(extractPost(rs));
        }
        return posts;
    }
}
