package com.codeup.uswomenvets.models;

import com.codeup.uswomenvets.util.Password;

public class User {
    private int id;
    private String username;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String creationDate;
    private String lastOnline;


    public User() { }
    //user creation in the register servlet
    public User(String username, String email, String password, String firstName, String lastName) {
        this.username = username;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        setPassword(password);
    }

    //user modification in the profile servlet
    public User(int id, String password, String username, String email, String firstName, String lastName) {
        this.id = id;
        this.username = username;
        this.email = email;
        if (password != null && password.trim() != "") {
            setPassword(password);
        } else {
            this.password = password;
        }
        this.firstName = firstName;
        this.lastName = lastName;
    }

    //user object creation to be sent to view
    public User(int id, String username, String email, String password, String firstName, String lastName, String lastOnline, String creationDate) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.creationDate = creationDate;
        this.lastOnline = lastOnline;
    }

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = Password.hash(password); }

    public String getFirstName() { return firstName; }

    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }

    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getCreationDate() { return creationDate; }

    public void setCreationDate(String creationDate) { this.creationDate = creationDate; }

    public String getLastOnline() { return lastOnline; }

    public void setLastOnline(String lastOnline) { this.lastOnline = lastOnline; }
}



