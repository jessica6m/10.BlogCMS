/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Brandon Mathura
 */
@Controller
public class UserCMSController {
    
//    UserCMSService userService;
//    
//    
//    
//    @Inject
//    public StaticPageCMSController(UserCMSService userService) {
//        this.userService = userService;
//        
//    }
    @RequestMapping(value = "/displayUserProfilePage/{userID}", method = RequestMethod.GET)
    public String getItemSelected(Model model, @PathVariable int userID) {
//        userService.selectUserProfile(userID);
        return "redirect:/";
    }
    
}

// =============== FOR SIGN UP ===========
    