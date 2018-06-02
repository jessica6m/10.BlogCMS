/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.dto.User;
import com.sg.blogcms.service.UserCMSService;
import javax.inject.Inject;
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
    
    UserCMSService userService;
    
    
    
    @Inject
    public UserCMSController(UserCMSService userService) {
        this.userService = userService;
        
    }
    @RequestMapping(value = "/displayUserProfilePage/{userID}", method = RequestMethod.GET)
    public String getUserProfile(Model model, @PathVariable int userID) {
        User user = userService.selectUserProfile(userID);
        model.addAttribute("user", user);
        return "userprofile";
    }
    
}

// =============== FOR SIGN UP ===========
    