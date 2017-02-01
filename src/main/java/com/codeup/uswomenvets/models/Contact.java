package com.codeup.uswomenvets.models;

/**
 * Created by KJCurtis on 1/31/17.
 */
public class Contact {
    private int id;
    private int userId;
    private String name;
    private String email;
    private String content;
    private String creation;

    public Contact(int id, int userId, String name, String email, String content, String creation) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.content = content;
        this.creation = creation;
    }

    public Contact(int userId, String name, String email, String content) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.content = content;
    }

    public Contact(String name, String email, String content) {
        this.userId = 0;
        this.name = name;
        this.email = email;
        this.content = content;
    }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }

    public void setUserId(int userId) { this.userId = userId; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public String getContent() { return content; }

    public void setContent(String content) { this.content = content; }

    public String getCreation() { return creation; }

    public void setCreation(String creation) { this.creation = creation; }
}
