package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.controllers.Config;
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

    public List<Post> userPost(int user_id) {
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category, category_post.category_id, posts.is_deleted FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id where posts.user_id = ?;");
            stmt.setInt(1, user_id);
            ResultSet rs = stmt.executeQuery();
            return createPostsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving user's posts");
        }
    }

    public List<Post> specPost(String postId) {
        int postID = Integer.valueOf(postId);
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category, category_post.category_id, posts.is_deleted FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id where posts.id = ?;");
            stmt.setInt(1, postID);
            ResultSet rs = stmt.executeQuery();
            return createPostsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving selected post", e);
        }
    }
    public Post specPost(int postId) {
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category, category_post.category_id, posts.is_deleted FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id where posts.id = ?;");
            stmt.setInt(1, postId);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractPost(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving selected post", e);
        }
    }
    private Post extractPost(ResultSet rs) throws SQLException {
        return new Post(
                rs.getInt("id"),
                rs.getInt("user_id"),
                rs.getString("title"),
                rs.getString("content"),
                rs.getString("post_date"),
                rs.getString("user_name"),
                rs.getString("category"),
                rs.getInt("category_id"),
                rs.getInt("views"),
                rs.getInt("likes"),
                rs.getInt("comment_count"),
                rs.getInt("is_deleted")
        );
    }
    public Post extractPost(int postId) {
        try {

            String extractQuery = "SELECT posts.* , users.user_name, category.category, category_post.category_id, posts.is_deleted FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id where posts.id = ?;";
            PreparedStatement stmt = connection.prepareStatement(extractQuery);
            stmt.setInt(1, postId);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return new Post(
                    rs.getInt("id"),
                    rs.getInt("user_id"),
                    rs.getString("title"),
                    rs.getString("content"),
                    rs.getString("post_date"),
                    rs.getString("user_name"),
                    rs.getString("category"),
                    rs.getInt("category_id"),
                    rs.getInt("views"),
                    rs.getInt("likes"),
                    rs.getInt("comment_count"),
                    rs.getInt("is_deleted")
            );
        } catch (SQLException e) {
            throw new RuntimeException("unable to extract post", e);
        }
    }

    private List<Post> createPostsFromResults(ResultSet rs) throws SQLException {
        List<Post> posts = new ArrayList<>();

        while (rs.next()) {
            if (rs.getInt("is_deleted") == 0) {
                posts.add(extractPost(rs));
            } else {
                continue;
            }
        }
        return posts;
    }
    public boolean editPost(Post newPost) {
        int columnIndex = 1;
        String query = "UPDATE posts SET";
        boolean validExecute = false;
        int validQueryIndex = 0;
        DaoFactory.getPostsDao().specPost(Integer.toString(newPost.getId()));
        Post oldPost = extractPost(newPost.getId());
        if (oldPost.getIsDeleted() == 1) {
            return false;
        }

        String[] oldPostInfo = {
                oldPost.getTitle(),
                oldPost.getContent()
        };
        String[] newPostInfo = {
                newPost.getTitle(),
                newPost.getContent()
        };
        String[] dbColumns = {
                " title = ?",
                " content = ?",
        };
        for (int i = 0; i < 2; i++) {
            if (newPostInfo[i] != null && newPostInfo[i].trim() != "" && !(newPostInfo[i].trim().equals(oldPostInfo[i].trim()))) {
                validExecute = true;
                if (validQueryIndex > 0) {
                    query += ",";
                }
                query += dbColumns[i];
                validQueryIndex++;
            }
        }
        try {

            if (validExecute) {
                query += " WHERE id = ?;";
                PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
                for (int i = 0; i < 2; i++) {
                    if (newPostInfo[i] != null && newPostInfo[i].trim() != "" && !(newPostInfo[i].trim().equals(oldPostInfo[i].trim()))) {
                        stmt.setString(columnIndex, newPostInfo[i]);
                        columnIndex++;
                    }
                }

                stmt.setInt(columnIndex, newPost.getId());
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            return false;
        }
        try {
            if (newPost.getCategory() != oldPost.getCategory()) {
                String catQuery = "UPDATE category_post SET category_id = ? WHERE post_id = ?;";
                PreparedStatement stmt = connection.prepareStatement(catQuery, Statement.RETURN_GENERATED_KEYS);
                stmt.setInt(1, newPost.getCategory());
                stmt.setInt(2, newPost.getId());
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            return false;
        }
        return true;
    }

    public boolean deletePost(Post post) {
        try {
            String deleteQuery = "UPDATE posts SET posts.is_deleted = 1 WHERE posts.id = ?";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, post.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }



    @Override
    public List<Post> all(String q) {
        PreparedStatement stmt = null;
        try {
            if (q != null) {
                String selectQuery = "SELECT posts.* , users.user_name, category.category, category_post.category_id, posts.is_deleted  FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id WHERE title LIKE ? OR description LIKE ? OR users.user_name LIKE ? OR timestamp LIKE ?";
                stmt = connection.prepareStatement(selectQuery, Statement.RETURN_GENERATED_KEYS);
                String qa = "%" + q + "%";
                stmt.setString(1, qa);
                stmt.setString(2, qa);
                stmt.setString(3, qa);
                stmt.setString(4, qa);


                ResultSet rs = stmt.executeQuery();
                return createPostsFromResults(rs);
            } else {
                stmt = connection.prepareStatement("SELECT posts.* , users.user_name, category.category, category_post.category_id, posts.is_deleted FROM posts JOIN users ON users.id = posts.user_id JOIN category_post ON category_post.post_id = posts.id JOIN category On category_post.category_id = category.id;");
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
            stmt.setInt(1, post.getUserId());
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
