package com.codeup.uswomenvets.models;

public class Post {
    private long userId;
    private int id;
    private int category;
    private int views;
    private int likes;
    private int commentCount;
    private int isDeleted;
    private String stringCategory;
    private String title;
    private String content;
    private String postDate;
    private String username;

    public Post() {
        this.id = 0;
        this.userId = 0;
        this.category = 1;
        this.views = 0;
        this.likes = 0;
        this.commentCount = 0;
        this.isDeleted = 1;
        this.title = "This post does not exist";
        this.content = "I apologize, but this post no longer exists. The post has either been deleted.";
        this.postDate = "";
        this.username = "System";
        this.stringCategory = "";
    }
    public Post(long userId, int category, String title, String content) {
        this.userId = userId;
        this.title = title;
        this.category = category;
        this.content = content;
    }

    public Post(int id, long userId, String title, String content, String postDate, String username, String stringCategory,int category, int views, int likes, int commentCount, int isDeleted) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.postDate = postDate;
        this.username = username;
        this.stringCategory = stringCategory;
        this.category = category;
        this.views = views;
        this.likes = likes;
        this.commentCount = commentCount;
        this.isDeleted = isDeleted;
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

    public int getViews() { return views; }

    public void setViews(int views) { this.views = views; }

    public int getLikes() { return likes; }

    public void setLikes(int likes) { this.likes = likes; }

    public int getCommentCount() { return commentCount; }

    public void setCommentCount(int commentCount) { this.commentCount = commentCount; }

    public int getIsDeleted() { return isDeleted; }

    public void setIsDeleted(int isDeleted) { this.isDeleted = isDeleted; }

    public String getStringCategory() { return stringCategory; }

    public void setStringCategory(String stringCategory) { this.stringCategory = stringCategory; }

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
