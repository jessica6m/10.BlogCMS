/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Brandon Mathura
 */
@Controller
public class LoginSignupCMSController {
    @RequestMapping(value= {"/login"}, method = RequestMethod.GET)
    public String login() {

        return "login";
    }
}

// =============== FOR SIGN UP ===========
    