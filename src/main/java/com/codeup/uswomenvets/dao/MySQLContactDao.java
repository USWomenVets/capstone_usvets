package com.codeup.uswomenvets.dao;


import com.codeup.uswomenvets.models.Contact;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

/**
 * Created by KJCurtis on 1/31/17.
 */
public class MySQLContactDao implements Contacts {
    private Connection connection = null;


    public MySQLContactDao(Config config) {
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
    public boolean insertContact(Contact contact) {
        String insertQuery;
        boolean isLoggedUser = false;
        if (contact.getUserId() == 0) {
            insertQuery = "INSERT INTO Contact (name, email, content) VALUES (?, ?, ?);";
            isLoggedUser = true;
        } else {
            insertQuery = "INSERT INTO Contact (name, email, content, user_id) VALUES (?, ?, ?, ?);";
        }
        try {
            PreparedStatement stmt = connection.prepareStatement(insertQuery, java.sql.Statement.RETURN_GENERATED_KEYS);
            if (isLoggedUser) {
                stmt.setString(1, contact.getName());
                stmt.setString(2, contact.getEmail());
                stmt.setString(3, contact.getContent());
                stmt.setInt(4, contact.getUserId());
            } else {
                stmt.setString(1, contact.getName());
                stmt.setString(2, contact.getEmail());
                stmt.setString(3, contact.getContent());
            }
            stmt.executeUpdate();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }
}
