package com.codeup.uswomenvets.models;

public class Post {
    private long userId;
    private int id;
    private int category;
    private String stringCategory;
    private String title;
    private String content;
    private String postDate;
    private String username;


    public Post(long userId, int category, String title, String content) {
        this.userId = userId;
        this.title = title;
        this.category = category;
        this.content = content;
    }

    public Post(int id, long userId, String title, String content, String postDate, String username, String category) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.postDate = postDate;
        this.username = username;
        this.stringCategory = category;
    }

    public Post(long userId, int id, String title, String content, int category) {
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.category = category;
        this.id = id;
    }

    public int getId() { return id; }

    public void setId(int id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public int getCategory() { return category; }

    public void setCategory(int category) { this.category = category; }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPostDate() { return postDate; }

    public void setPostDate(String postDate) {this.postDate = postDate;}

    public String getUsername() { return username;}

    public void setUsername(String username) { this.username = username; }

}
