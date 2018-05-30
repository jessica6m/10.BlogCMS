/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dto;

import java.util.List;
import java.util.Objects;

/**
 *
 * @author svlln
 */
public class User {
    private int userId;
    private String firstName;
    private String lastName;
    private String userName;
    private String userEmail;
    private String userPassword;
    private String userBio;
    private Boolean isAdmin;
    private List<BlogPost> associatedBlogs;
    private List<StaticPage> associatedStaticPages;
    private List<Category> associatedCategories;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserBio() {
        return userBio;
    }

    public void setUserBio(String userBio) {
        this.userBio = userBio;
    }

    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public List<BlogPost> getAssociatedBlogs() {
        return associatedBlogs;
    }

    public void setAssociatedBlogs(List<BlogPost> associatedBlogs) {
        this.associatedBlogs = associatedBlogs;
    }

    public List<StaticPage> getAssociatedStaticPages() {
        return associatedStaticPages;
    }

    public void setAssociatedStaticPages(List<StaticPage> associatedStaticPages) {
        this.associatedStaticPages = associatedStaticPages;
    }

    public List<Category> getAssociatedCategories() {
        return associatedCategories;
    }

    public void setAssociatedCategories(List<Category> associatedCategories) {
        this.associatedCategories = associatedCategories;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + this.userId;
        hash = 37 * hash + Objects.hashCode(this.firstName);
        hash = 37 * hash + Objects.hashCode(this.lastName);
        hash = 37 * hash + Objects.hashCode(this.userName);
        hash = 37 * hash + Objects.hashCode(this.userEmail);
        hash = 37 * hash + Objects.hashCode(this.userPassword);
        hash = 37 * hash + Objects.hashCode(this.userBio);
        hash = 37 * hash + Objects.hashCode(this.isAdmin);
        hash = 37 * hash + Objects.hashCode(this.associatedBlogs);
        hash = 37 * hash + Objects.hashCode(this.associatedStaticPages);
        hash = 37 * hash + Objects.hashCode(this.associatedCategories);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final User other = (User) obj;
        if (this.userId != other.userId) {
            return false;
        }
        if (!Objects.equals(this.firstName, other.firstName)) {
            return false;
        }
        if (!Objects.equals(this.lastName, other.lastName)) {
            return false;
        }
        if (!Objects.equals(this.userName, other.userName)) {
            return false;
        }
        if (!Objects.equals(this.userEmail, other.userEmail)) {
            return false;
        }
        if (!Objects.equals(this.userPassword, other.userPassword)) {
            return false;
        }
        if (!Objects.equals(this.userBio, other.userBio)) {
            return false;
        }
        if (!Objects.equals(this.isAdmin, other.isAdmin)) {
            return false;
        }
        if (!Objects.equals(this.associatedBlogs, other.associatedBlogs)) {
            return false;
        }
        if (!Objects.equals(this.associatedStaticPages, other.associatedStaticPages)) {
            return false;
        }
        if (!Objects.equals(this.associatedCategories, other.associatedCategories)) {
            return false;
        }
        return true;
    }
    
    
    
    
    
    
    
}
