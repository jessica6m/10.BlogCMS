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
    CategoryCMSDao catDao;
    TagsCMSDao tagDao;
    UserCMSDao userDao;
    StaticPageCMSDao spDao;
    
    @Inject
    public BlogsCMSService(BlogsCMSDao blogsDao, CategoryCMSDao catDao, TagsCMSDao tagDao, UserCMSDao userDao, StaticPageCMSDao spDao) {
        this.blogsDao = blogsDao;
        this.catDao = catDao;
        this.tagDao = tagDao;
        this.userDao = userDao;
        this.spDao = spDao;
    }

    public List<BlogPost> selectLastTenBlogs() {
        return blogsDao.selectLastTenBlogs();
    }
}
