package com.codeup.uswomenvets.models;

public class Post {
    private long id;
    private long userId;
    private String title;
    private String content;
    private String postDate;
    private String username;


    public Post(long id, long userId, String title, String content, String postDate, String username) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.postDate = postDate;
        this.username = username;
    }

    public Post(long userId, String title, String content) {
        this.userId = userId;
        this.title = title;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

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

    public String getPostDate() {return postDate;}

    public void setPostDate(String postDate) {this.postDate = postDate;}

    public String getUsername() {return username;}

    public void setUsername(String username) {this.username = username;}
}
