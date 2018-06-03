/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

import com.sg.blogcms.service.CategoryCMSService;
import javax.inject.Inject;

/**
 *
 * @author josesosa
 */
public class CategoryCMSController {
    CategoryCMSService catService;
    
    
    
    @Inject
    public CategoryCMSController(CategoryCMSService catService) {
        this.catService = catService;
        
    }
    
}
