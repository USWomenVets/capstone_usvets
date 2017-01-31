package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.Comment;
import com.codeup.uswomenvets.models.Post;
import com.mysql.cj.api.jdbc.Statement;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by KJCurtis on 1/26/17.
 */

public class MySQLCommentsDao implements Comments {
    private Connection connection;

    public MySQLCommentsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error conecting the the database", e);
        }
    }

    @Override
    public boolean insert(Comment comment, Post post){
        try {
            if (comment.getContent() == null || comment.getContent().trim() == "") {
                return false;
            }
            String insertQuery = "INSERT INTO comments(post_id, user_id, comment) VALUES(?, ?, ?);";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, post.getId());
            stmt.setInt(2, comment.getUserId());
            stmt.setString(3, comment.getContent());
            stmt.executeUpdate();
        } catch  (SQLException e) {
            return false;
        }
        return true;
    }

    @Override
    public boolean deleteComment(Comment comment) {
        try {
            String deleteQuery = "UPDATE comments SET comments.is_deleted = 1 WHERE comments.id = ?";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery, java.sql.Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, comment.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }

    @Override
    public List<Comment> all(Post post) {
        try {
            String selectQuery = "SELECT comments.*, users.user_name FROM comments JOIN users ON users.id = comments.user_id WHERE comments.post_id = ?;";
            PreparedStatement stmt = connection.prepareStatement(selectQuery, java.sql.Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, post.getId());
            ResultSet rs = stmt.executeQuery();
            return createCommentsFromResults(rs);

        } catch (SQLException e) {
            throw new RuntimeException("error pulling comments for post", e);
        }
    }
    @Override
    public Comment specComment(int id) {
        try {
            String specQuery = "SELECT comments.*, users.user_name FROM comments JOIN users ON users.id = comments.user_id WHERE comments.id = ?;";
            PreparedStatement stmt = connection.prepareStatement(specQuery, java.sql.Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractComments(rs);

        } catch (SQLException e) {
            throw new RuntimeException("error retrieving comment", e);
        }
    }
    private List<Comment> createCommentsFromResults(ResultSet rs) throws SQLException {
        List<Comment> comments = new ArrayList<>();

        while (rs.next()) {
            if (rs.getInt("is_deleted") == 0) {
                comments.add(extractComments(rs));
            } else {
                continue;
            }
        }
        return comments;
    }

    private Comment extractComments(ResultSet rs) throws SQLException{
        return new Comment(
                rs.getInt("id"),
                rs.getInt("user_id"),
                rs.getInt("post_id"),
                rs.getInt("is_deleted"),
                rs.getString("comment"),
                rs.getString("timestamp"),
                rs.getString("user_name")
        );
    }

}
