/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dao;

import com.sg.blogcms.dto.BlogPost;
import com.sg.blogcms.dto.Category;
import com.sg.blogcms.dto.Tags;
import java.util.List;

/**
 *
 * @author svlln
 */
public interface BlogsCMSDao {
    
    BlogPost createBlog(BlogPost blog);
    void removeBlogPost(int blogID);
    BlogPost updateBlog(BlogPost blog);
    BlogPost selectBlog(int blogID);
    List<BlogPost> selectAllBlogs();
    List<BlogPost> selectAllBlogsByUser(int userID);
    List<BlogPost> selectAllBlogsByCategory(int catID);
    List<BlogPost> selectAllBlogsByTag(int tagID);
    List<BlogPost> selectLastTenBlogs();
    
    public BlogPost appointUserToBlog(BlogPost blog);
    
    public List<Tags> selectAllTags();    
    public List<Category> selectAllCategories();

    public void approveBlog(int bpId);
    
}
