/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.service;

import com.sg.blogcms.dao.BlogsCMSDao;
import com.sg.blogcms.dto.BlogPost;
import com.sg.blogcms.dto.Category;
import com.sg.blogcms.dto.Tags;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author josesosa
 */
public class BlogsCMSService {
    BlogsCMSDao blogsDao;
    
    
    @Inject
    public BlogsCMSService(BlogsCMSDao blogsDao) {
        this.blogsDao = blogsDao;
    }
    
    public BlogPost createBlog(BlogPost bp){
        
        return blogsDao.createBlog(bp);
    }
    
    public void removeBlog (int bpId){
        blogsDao.removeBlogPost(bpId);
    }

    public List<BlogPost> selectLastTenBlogs() {
        return blogsDao.selectLastTenBlogs();
    }
    
    public List<BlogPost> selectAllBlogs() {
     return blogsDao.selectAllBlogs();
    }

    public void updateListOfBlogs(List<BlogPost> lastTenBlogs) {
        for (BlogPost blog: lastTenBlogs){
            blogsDao.appointUserToBlog(blog);
        }
    }

    public BlogPost selectBlog(int blogId) {
        return blogsDao.selectBlog(blogId);
    }
    
    public List<Tags> selectAllTags() {
     return blogsDao.selectAllTags();
    }
    
    public List<Category> selectAllCategories() {
       return blogsDao.selectAllCategories();
    }

    public void approveBlog(int bpId) {
         blogsDao.approveBlog(bpId);
    }
}
