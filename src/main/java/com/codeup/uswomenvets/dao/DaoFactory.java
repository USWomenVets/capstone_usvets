package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.controllers.Config;

public class DaoFactory {
    private static Posts postsDao;
    private static Users usersDao;
    private static Comments commentsDao;
    private static Contacts contactDao;
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
    public static Comments getCommentsDao() {
        if (commentsDao == null) {
            commentsDao = new MySQLCommentsDao(config);
        }
        return commentsDao;
    }
    public static Contacts getContactDao() {
        if (contactDao == null) {
            contactDao = new MySQLContactDao(config);
        }
        return contactDao;
    }


}
