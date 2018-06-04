/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.dto.Tags;
import com.sg.blogcms.service.TagsCMSService;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author josesosa
 */
@Controller
public class TagCMSController {
    TagsCMSService tagService;
    
    
    
    @Inject
    public TagCMSController(TagsCMSService tagService) {
        this.tagService = tagService;
        
    }
    
    //==========================================================================
    //                              CONTROLLER FOR TAGS
    //==========================================================================
    
    @RequestMapping(value = "/createTag", method = RequestMethod.POST)
    public String createTag(HttpServletRequest request, Model model){
        Tags newTag = new Tags();
        newTag.setTagName(request.getParameter("tagName"));
        newTag.setDescription(request.getParameter("tagDescription"));
        tagService.createTag(newTag);
        return "redirect:about";
    }
    
    
    @RequestMapping(value= {"/about"}, method = RequestMethod.GET)
    public String displayAllCategories(HttpServletRequest request, Model model) {
        List<Tags> allTags;
        allTags = tagService.SelectAllTags();
        model.addAttribute("allTags", allTags);
        return "about";
    }
    
    @RequestMapping(value = "/updateTag", method = RequestMethod.GET)
    public String updateTag(HttpServletRequest request, Model model){
        Tags updatedTag = new Tags();
        updatedTag.setTagName(request.getParameter("tagName"));
        updatedTag.setDescription(request.getParameter("tagDescription"));
        tagService.updateTag(updatedTag);
        
        String display = request.getParameter("viewType");
        model.addAttribute("display",display);
        return "redirect:about";
    }
   
    @RequestMapping(value= {"/deleteTag"}, method = RequestMethod.GET)
    public String removeTag(HttpServletRequest request, Model model) {
        int tagID = Integer.parseInt(request.getParameter("tagId"));
        tagService.removeTag(tagID);
        return "redirect:about";
    }
    
}
