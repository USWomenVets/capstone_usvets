package com.codeup.uswomenvets.models;

public class Post {
    private int userId;
    private int id;
    private int category;
    private int views;
    private int likes;
    private int commentCount;
    private int isDeleted;
    private String username;
    private String title;
    private String stringCategory;
    private String content;
    public String postDateTime;
    public String postDate = "";
    public String postTime = "";
    public String postDateMonth = "";


    public Post(int userId, int category, String title, String content) { this.userId = userId;
        this.title = title;
        this.category = category;
        this.content = content;
    }

    public Post(int id, int userId, String title, String content, String postDateTime, String username, String stringCategory, int category, int views, int likes, int commentCount, int isDeleted) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.postDateTime = postDateTime;
        this.username = username;
        this.stringCategory = stringCategory;
        this.category = category;
        this.views = views;
        this.likes = likes;
        this.commentCount = commentCount;
        this.isDeleted = isDeleted;
        formatPostDateTime();
        convertPostDate();
    }

    public Post(int userId, int id, String title, String content, int category) {
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

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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

    public void setPostDate(String postDate) { this.postDate = postDate; }

    public String getPostDateTime() { return postDateTime; }

    public void setPostDateTime(String postDateTime) { this.postDateTime = postDateTime; }

    public String getPostTime() { return postTime; }

    public void setPostTime(String postTime) { this.postTime = postTime; }

    public String getPostDateMonth() { return postDateMonth; }

    public void setPostDateMonth(String postDateMonth) { this.postDateMonth = postDateMonth; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    private void formatPostDateTime() {
        int i;
        for (i = 0; i < this.postDateTime.length(); i++) {
            if (i < 10) {
                this.postDate += this.postDateTime.charAt(i);
            } else if (i > 10) {
                this.postTime += this.postDateTime.charAt(i);
            }
        }
    }

    private void convertPostDate() {
        int i;
        String day = "";
        String month = "";
        String year = "";

        for (i = 0; i < this.postDateTime.length(); i++) {
            if (i > 1 && i < 4) {
                year += this.postDateTime.charAt(i);
            } else if (i > 4 && i < 7) {
                month += this.postDateTime.charAt(i);
            } else if (i > 7 && i < 10) {
                day += this.postDateTime.charAt(i);
            }
        }
        switch (month) {
            case "01":
                month = " Jan ";
                break;
            case "02":
                month = " Feb ";
                break;
            case "03":
                month = " Mar ";
                break;
            case "04":
                month = " Apr ";
                break;
            case "05":
                month = " May ";
                break;
            case "06":
                month = " Jun ";
                break;
            case "07":
                month = " Jul ";
                break;
            case "08":
                month = " Aug ";
                break;
            case "09":
                month = " Sept ";
                break;
            case "10":
                month = " Oct ";
                break;
            case "11":
                month = " Nov ";
                break;
            case "12":
                month = " Dec ";
                break;
        }
        this.postDateMonth = day + month + year;
    }
}


