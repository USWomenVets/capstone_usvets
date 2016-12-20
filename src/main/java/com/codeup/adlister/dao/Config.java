package com.codeup.adlister.dao;

/**
 * Created by KJCurtis on 12/15/16.
 */




public class Config {
    private String url = "jdbc:mysql://localhost:3306/adlister_db";
    private String user = "root";
    private String password = "codeup";

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }




}
