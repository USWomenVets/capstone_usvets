package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
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

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(user_name, email, password, first_name, last_name) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getFirstName());
            stmt.setString(5, user.getLastName());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    @Override
    public void editUser(User newUser, User oldUser) {
        int columnIndex = 1;
        String query = "UPDATE users SET";
        boolean validExecute = false;
        int validQueryIndex = 0;
        User currentUser = DaoFactory.getUsersDao().findByUsername(oldUser.getUsername());
        String[] oldUserInfo = {
                currentUser.getUsername(),
                currentUser.getEmail(),
                currentUser.getPassword(),
                currentUser.getFirstName(),
                currentUser.getLastName(),
                currentUser.getAbout(),
                currentUser.getGender(),
                currentUser.getBirth()
        };
        String[] newUserInfo = {
                newUser.getUsername(),
                newUser.getEmail(),
                newUser.getPassword(),
                newUser.getFirstName(),
                newUser.getLastName(),
                newUser.getAbout(),
                newUser.getGender(),
                newUser.getBirth()
        };

        String[] dbColumns = {
                " user_name = ?",
                " email = ?",
                " password = ?",
                " first_name = ?",
                " last_name = ?",
                " about = ?",
                " gender = ?",
                " birth = ?"
        };


        for (int i = 0; i <= 7; i++) {
            if (newUserInfo[i] != null && newUserInfo[i].trim() != "" && !(newUserInfo[i].trim().equals(oldUserInfo[i].trim()))) {
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
                for (int i = 0; i < 8; i++) {
                    if (newUserInfo[i] != null && newUserInfo[i].trim() != "" && !(newUserInfo[i].trim().equals(oldUserInfo[i].trim()))) {
                        stmt.setString(columnIndex, newUserInfo[i]);
                        columnIndex++;
                    }
                }
                stmt.setLong(columnIndex, newUser.getId());
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error editing user info", e);
        }
    }




    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE user_name = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
                rs.getLong("id"),
                rs.getString("user_name"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("first_name"),
                rs.getString("last_name"),
                rs.getString("about"),
                rs.getString("birth"),
                rs.getInt("age"),
                rs.getString("gender"),
                rs.getString("prof_img"),
                rs.getString("last_online"),
                rs.getString("creation_date")
        );
    }
}
