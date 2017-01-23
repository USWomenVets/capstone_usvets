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
    public void editUser(User user) {

        int columnIndex = 1;
        String query = "UPDATE users SET";

        String[] userInfo = new String[8];
        userInfo[0] = user.getUsername();
        userInfo[1] = user.getEmail();
        userInfo[2] = user.getPassword();
        userInfo[3] = user.getFirstName();
        userInfo[4] = user.getLastName();
        userInfo[5] = user.getAbout();
        userInfo[6] = user.getGender();
        userInfo[7] = user.getBirth();

        String[] dbColumns = new String[8];
        dbColumns[0] = " user_name = ?";
        dbColumns[1] = " email = ?";
        dbColumns[2] = " password = ?";
        dbColumns[3] = " first_name = ?";
        dbColumns[4] = " last_name = ?";
        dbColumns[5] = " about = ?";
        dbColumns[6] = " gender = ?";
        dbColumns[7] = " birth = ?";


        for (int i = 0; i <= 7; i++) {
            if (userInfo[i] != null && userInfo[i].trim() != "") {
                if (i > 0) {
                    query += ",";
                }
                query += dbColumns[i];
            }
        }
        query += " WHERE id = ?;";

        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            for (int i = 0; i < 8; i++) {
                if (userInfo[i] != null && userInfo[i].trim() != "") {
                    stmt.setString(columnIndex, userInfo[i]);
                    columnIndex++;
                }
            }
            stmt.setLong(columnIndex, user.getId());
            stmt.executeUpdate();
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
