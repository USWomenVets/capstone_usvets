package com.codeup.uswomenvets.models;

import com.codeup.uswomenvets.dao.DateTimeDao;

/**
 * Created by KJCurtis on 1/26/17.
 */
public class Comment extends DateTimeDao {
    private int id;
    private int userId;
    private int postId;
    private int isDeleted;
    private String content;
    private String username;
    public String commentDateTime = "";
    public String commentDate = "";
    public String commentTime = "";
    public String commentDateMonth ="";

    public Comment(int userId, int postId, String content) {
        this.userId = userId;
        this.postId = postId;
        this.content = content;
    }

    public Comment(int id, int userId, int postId, int isDeleted, String content, String commentDateTime) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.isDeleted = isDeleted;
        this.content = content;
        this.commentDateTime = commentDateTime;
    }

    public Comment(int id, int userId, int postId, int isDeleted, String content, String commentDateTime, String username) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.isDeleted = isDeleted;
        this.content = content;
        this.commentDateTime = commentDateTime;
        this.username = username;
        formatCommentDateTime();
        convertCommentDate();
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

    public String getCommentDateTime() { return commentDateTime; }

    public void setCommentDateTime(String commentDateTime) { this.commentDateTime = commentDateTime; }

    public String getCommentDate() { return commentDate; }

    public void setCommentDate(String commentDate) { this.commentDate = commentDate; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    public String getCommentTime() { return commentTime; }

    public void setCommentTime(String commentTime) { this.commentTime = commentTime; }

    public String getCommentDateMonth() { return commentDateMonth; }

    public void setCommentDateMonth(String commentDateMonth) { this.commentDateMonth = commentDateMonth; }

    private void formatCommentDateTime() {
        int i;
        for (i = 0; i < this.commentDateTime.length(); i++) {
            if (i < 10) {
                this.commentDate += this.commentDateTime.charAt(i);
            } else if (i > 10) {
                this.commentTime += this.commentDateTime.charAt(i);
            }
        }
    }

    private void convertCommentDate() {
        int i;
        String day = "";
        String month = "";
        String year = "";

        for (i = 0; i < this.commentDateTime.length(); i++) {
            if (i > 1 && i < 4) {
                year += this.commentDateTime.charAt(i);
            } else if (i > 4 && i < 7) {
                month += this.commentDateTime.charAt(i);
            } else if (i > 7 && i < 10) {
                day += this.commentDateTime.charAt(i);
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
        this.commentDateMonth = day + month + year;
    }

}