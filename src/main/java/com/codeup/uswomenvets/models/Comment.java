package com.codeup.uswomenvets.models;

/**
 * Created by KJCurtis on 1/26/17.
 */
public class Comment {
    private int id;
    private int userId;
    private int postId;
    private int isDeleted;
    private String content;
    private String postDate;
    private String username;


    public Comment(int id, int userId, int postId, int isDeleted, String content, String postDate) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.isDeleted = isDeleted;
        this.content = content;
        this.postDate = postDate;
    }

    public Comment(int id, int userId, int postId, int isDeleted, String content, String postDate, String username) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.isDeleted = isDeleted;
        this.content = content;
        this.postDate = postDate;
        this.username = username;
    }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }

    public void setUserId(int userId) { this.userId = userId; }

    public int getPostId() { return postId; }

    public void setPostId(int postId) { this.postId = postId; }

    public int getIsDeleted() { return isDeleted; }

    public void setIsDeleted(int isDeleted) { this.isDeleted = isDeleted; }

    public String getContent() { return content; }

    public void setContent(String content) { this.content = content; }

    public String getPostDate() { return postDate; }

    public void setPostDate(String postDate) { this.postDate = postDate; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }
}
