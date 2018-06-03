/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;

<<<<<<< HEAD
import com.sg.blogcms.service.CategoryCMSService;
import javax.inject.Inject;
=======
import com.sg.blogcms.dto.Category;
import com.sg.blogcms.service.CategoryCMSService;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
>>>>>>> 8a96ec318bafb345a7c11b30feca3e11f8b0f410

/**
 *
 * @author josesosa
 */
<<<<<<< HEAD
=======
@Controller
>>>>>>> 8a96ec318bafb345a7c11b30feca3e11f8b0f410
public class CategoryCMSController {
    CategoryCMSService catService;
    
    
    
    @Inject
    public CategoryCMSController(CategoryCMSService catService) {
        this.catService = catService;
        
    }
    
<<<<<<< HEAD
=======
    @RequestMapping(value= {"/categories"}, method = RequestMethod.GET)
    public String displayAllCategories(HttpServletRequest request, Model model) {
        List<Category> allCategories;
        allCategories = catService.selectAllCategories();
        model.addAttribute("allCategories", allCategories);
        return "categories";
    }
    
>>>>>>> 8a96ec318bafb345a7c11b30feca3e11f8b0f410
}
