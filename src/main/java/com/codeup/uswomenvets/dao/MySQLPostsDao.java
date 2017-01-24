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
            stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id where posts.user_id = ?;");
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
            stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id where posts.id = ?;");
            stmt.setLong(1, postID);
            ResultSet rs = stmt.executeQuery();
            return createPostsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving selected post");
        }
    }
    private Post extractPost(ResultSet rs) throws SQLException {
        return new Post(
                rs.getInt("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("content"),
                rs.getString("post_date"),
                rs.getString("user_name"),
                rs.getString("category"),
                rs.getInt("views"),
                rs.getInt("likes"),
                rs.getInt("comment_count")
        );
    }

    private List<Post> createPostsFromResults(ResultSet rs) throws SQLException {
        List<Post> posts = new ArrayList<>();

        while (rs.next()) {
            posts.add(extractPost(rs));
        }
        return posts;
    }

    public void editPost(Post post) {
        String query = "UPDATE posts";
        boolean validExecute = false;
        int validQueryIndex = 0;

        List currentPostList = DaoFactory.getPostsDao().specPost(Integer.toString(post.getId()));



    }


    @Override
    public List<Post> all(String q) {
        PreparedStatement stmt = null;
        try {
            if (q != null) {
                String selectQuery = "SELECT posts.* , users.user_name, category.category FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id WHERE title LIKE ? OR description LIKE ? OR users.user_name LIKE ? OR timestamp LIKE ?";
                stmt = connection.prepareStatement(selectQuery, Statement.RETURN_GENERATED_KEYS);
                String qa = "%" + q + "%";
                stmt.setString(1, qa);
                stmt.setString(2, qa);
                stmt.setString(3, qa);
                stmt.setString(4, qa);


                ResultSet rs = stmt.executeQuery();
                return createPostsFromResults(rs);
            } else {
                stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id;");
                ResultSet rs = stmt.executeQuery();
                return createPostsFromResults(rs);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all posts.", e);
        }
    }

    @Override
    public int insert(Post post) {
        try {
            String insertQuery = "INSERT INTO posts(user_id, title, content) VALUES (?, ?, ?);";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, post.getUserId());
            stmt.setString(2, post.getTitle());
            stmt.setString(3, post.getContent());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            int postId = rs.getInt(1);
            catInsert(post.getCategory(), postId);
            return postId;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new post.", e);
        }
    }

    public void catInsert(int category, int post_id) {
        try {
            PreparedStatement catStmt;
            catStmt = connection.prepareStatement("INSERT INTO category_post(category_id, post_id) VALUES(?, ?);", Statement.RETURN_GENERATED_KEYS);
            catStmt.setInt(1, category);
            catStmt.setInt(2, post_id);
            catStmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error creating category row for post", e);
        }
    }


}
