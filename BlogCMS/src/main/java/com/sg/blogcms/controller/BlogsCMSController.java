/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.dao.BlogsCMSDao;
import com.sg.blogcms.dao.CategoryCMSDao;
import com.sg.blogcms.dao.StaticPageCMSDao;
import com.sg.blogcms.dao.TagsCMSDao;
import com.sg.blogcms.dao.UserCMSDao;
import com.sg.blogcms.dto.BlogPost;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author josesosa
 */
public class BlogsCMSController {
    //BlogCMS service;
    BlogsCMSDao blogsDao;
    CategoryCMSDao catDao;
    TagsCMSDao tagDao;
    UserCMSDao userDao;
    StaticPageCMSDao spDao;
    
    
    
    @Inject
    public BlogsCMSController(BlogsCMSDao blogsDao, CategoryCMSDao catDao, TagsCMSDao tagDao, UserCMSDao userDao, StaticPageCMSDao spDao ) {
        this.blogsDao = blogsDao;
        this.catDao = catDao;
        this.tagDao = tagDao;
        this.userDao = userDao;
        this.spDao = spDao;
        
    }
    
    @RequestMapping(value = {"/", "index", ""}, method = RequestMethod.GET)
    public String landingPage(HttpServletRequest request, Model model) {
        List<BlogPost> blogPosts;
        //blogPosts = service.getLastTenBlogs();
        //model.addAttribute("lastTenBlogs", blogPosts);
        return "index";
    }
    
    
}
