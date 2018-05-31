/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.dto.StaticPage;
import com.sg.blogcms.service.StaticPageCMSService;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author svlln
 */
public class StaticPageCMSController {
    StaticPageCMSService spService;
    
    
    
    @Inject
    public StaticPageCMSController(StaticPageCMSService spService) {
        this.spService = spService;
        
    }
    
    @RequestMapping(value = {"/", "staticPage", ""}, method = RequestMethod.GET)
    public String StaticPage(HttpServletRequest request, Model model) {
        StaticPage selectSP;
        selectSP = spService.selectStaticPage(0);
        model.addAttribute("selectStaticPage", selectSP);
        return "staticPage";
    }
    
    @RequestMapping(value = { "/","staticPage", ""}, method = RequestMethod.GET)
    public String StaticPages(HttpServletRequest request, Model model){
        List<StaticPage> staticPages;
        staticPages = spService.selectAllStaticPages();
        model.addAttribute("selectAllStaticPages", staticPages);
        return "staticPage";
    }
    
    
}
