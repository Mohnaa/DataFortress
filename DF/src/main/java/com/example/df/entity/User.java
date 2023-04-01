package com.example.df.entity;

public class User {
    private String name;
    private String email;
    private String password;
    private String mob;

    public User() {
    }

    public User(String name, String email, String password, String mob) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.mob = mob;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getMob() {
        return mob;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }
}
