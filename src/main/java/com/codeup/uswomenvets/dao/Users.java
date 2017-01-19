package com.codeup.uswomenvets.dao;

import com.codeup.uswomenvets.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
}
