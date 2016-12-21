package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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

    public List<Ad> userAd(long user_id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT ads.* , users.username FROM ads JOIN users ON users.id = ads.user_id where users.id = ?;");
            stmt.setLong(1, user_id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving user's ads");
        }
    }

    public List<Ad> specAd(String adId) {
        PreparedStatement stmt = null;
        int adID = Integer.valueOf(adId);
        try {
            stmt = connection.prepareStatement("SELECT ads.* , users.username FROM ads JOIN users ON users.id = ads.user_id where ads.id = ?;");
            stmt.setLong(1, adID);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("error retrieving selected ad");
        }
    }


    @Override
    public List<Ad> all(String q) {
        PreparedStatement stmt = null;
        try {
            if (q != null) {
                String selectQuery = "SELECT ads.* , users.username FROM ads JOIN users ON users.id = ads.user_id WHERE title LIKE ? OR description LIKE ? OR users.username LIKE ? OR timestamp LIKE ?";
                stmt = connection.prepareStatement(selectQuery, Statement.RETURN_GENERATED_KEYS);
                String qa = "%" + q + "%";
                stmt.setString(1, qa);
                stmt.setString(2, qa);
                stmt.setString(3, qa);
                stmt.setString(4, qa);


                ResultSet rs = stmt.executeQuery();
                return createAdsFromResults(rs);
            } else {
                stmt = connection.prepareStatement("SELECT ads.* , users.username FROM ads JOIN users ON users.id = ads.user_id;");
                ResultSet rs = stmt.executeQuery();
                return createAdsFromResults(rs);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?);";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("timestamp"),
                rs.getString("username"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
