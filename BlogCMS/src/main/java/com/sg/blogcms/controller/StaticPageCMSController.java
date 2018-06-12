/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.dto.Category;
import com.sg.blogcms.dto.StaticPage;
import com.sg.blogcms.dto.Tags;
import com.sg.blogcms.service.StaticPageCMSService;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author svlln
 */
@Controller
public class StaticPageCMSController {
    StaticPageCMSService spService;
    
    
    @Inject
    public StaticPageCMSController(StaticPageCMSService spService) {
        this.spService = spService;
        
    }
    
    @RequestMapping(value = {"/viewAllStaticPages"}, method = RequestMethod.GET)
    public String viewAllStaticPage(HttpServletRequest request, Model model) {
        
        List<StaticPage> sp = spService.selectAllStaticPages();
        model.addAttribute("sp",sp);
        return "allStaticPages";
    }
    
    @RequestMapping(value="/displayStaticPage/{spId}", method = RequestMethod.GET)
    public String displayStaticPage(HttpServletRequest request, Model model,@PathVariable int spId){
        StaticPage sp = spService.selectStaticPage(spId);
        model.addAttribute("sp",sp);
        
        return "staticpages";
    }
    
//    @RequestMapping(value = {"/createBlogPost/{viewType2}"}, method = RequestMethod.GET)
//    public String StaticPageAddCategory(HttpServletRequest request, Model model,@PathVariable String viewType2) {
//        
//        List<Category> allCategories = spService.selectAllCategories();
//
//        model.addAttribute("viewType2",viewType2);
//        model.addAttribute("allCategories",allCategories);
//        return "createBlogPost";
//    }
//    
//    @RequestMapping(value = {"/createBlogPost/{viewType}"}, method = RequestMethod.GET)
//    public String StaticPageAddTag(HttpServletRequest request, Model model,@PathVariable String viewType) {
//        
//        List<Tags> allTags = spService.selectAllTags();
//        
//        
//        
//        
//        model.addAttribute("viewType",viewType);
//        model.addAttribute("allTags",allTags);
//        return "createBlogPost";
//    }
    
//    @RequestMapping(value = { "/","staticPage", ""}, method = RequestMethod.GET)
//    public String StaticPages(HttpServletRequest request, Model model){
//        List<StaticPage> staticPages;
//        staticPages = spService.selectAllStaticPages();
//        model.addAttribute("selectAllStaticPages", staticPages);
//        return "staticpages";
//    }
    
    
}
