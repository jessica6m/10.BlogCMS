/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.service.TagsCMSService;
import javax.inject.Inject;

/**
 *
 * @author josesosa
 */

public class TagCMSController {
    TagsCMSService tagService;
    
    
    
    @Inject
    public TagCMSController(TagsCMSService tagService) {
        this.tagService = tagService;
        
    }
    
}
