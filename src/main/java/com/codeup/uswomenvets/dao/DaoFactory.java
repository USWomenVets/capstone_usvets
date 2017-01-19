package com.codeup.uswomenvets.dao;

public class DaoFactory {
    private static Posts postsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Posts getPostsDao() {
        if (postsDao == null) {
            postsDao = new MySQLPostsDao(config);
        }
        return postsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
