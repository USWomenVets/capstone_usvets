package com.codeup.uswomenvets.models;

public class User {
    private long id;
    private String username;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String about;
    private String birth;
    private int age;
    private String gender;
    private String profileImg;
    private String creationDate;
    private String lastOnline;


    public User() {
    }
    //user creationregister servlet
    public User(String username, String email, String password, String firstName, String lastName) {
        this.username = username;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        setPassword(password);
    }

    //user modification profile servlet
    public User(long id, String username, String email, String password, String firstName, String lastName, String about, String birth, int age, String gender, String profileImg, String creationDate, String lastOnline) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.about = about;
        this.birth = birth;
        this.age = age;
        this.gender = gender;
        this.profileImg = profileImg;
        this.creationDate = creationDate;
        this.lastOnline = lastOnline;
    }

    public long getId() { return id; }

    public void setId(long id) { this.id = id; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = password; }

    public String getFirstName() { return firstName; }

    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }

    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getAbout() { return about; }

    public void setAbout(String about) { this.about = about; }

    public String getBirth() { return birth; }

    public void setBirth(String birth) { this.birth = birth; }

    public int getAge() { return age; }

    public void setAge(int age) { this.age = age; }

    public String getGender() { return gender; }

    public void setGender(String gender) { this.gender = gender; }

    public String getProfileImg() { return profileImg; }

    public void setProfileImg(String profileImg) { this.profileImg = profileImg; }

    public String getCreationDate() { return creationDate; }

    public void setCreationDate(String creationDate) { this.creationDate = creationDate; }

    public String getLastOnline() { return lastOnline; }

    public void setLastOnline(String lastOnline) { this.lastOnline = lastOnline; }
}



