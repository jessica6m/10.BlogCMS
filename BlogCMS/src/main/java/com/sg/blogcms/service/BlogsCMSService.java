/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.service;

import com.sg.blogcms.dao.BlogsCMSDao;
import com.sg.blogcms.dao.CategoryCMSDao;
import com.sg.blogcms.dao.StaticPageCMSDao;
import com.sg.blogcms.dao.TagsCMSDao;
import com.sg.blogcms.dao.UserCMSDao;
import com.sg.blogcms.dto.BlogPost;
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

    public List<BlogPost> selectLastTenBlogs() {
        return blogsDao.selectLastTenBlogs();
    }
    
    public List<BlogPost> selectAllBlogs() {
     return blogsDao.selectAllBlogs();
    }
}
