/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.controller;


import com.sg.blogcms.dto.Category;
import com.sg.blogcms.service.CategoryCMSService;
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
public class CategoryCMSController {
    CategoryCMSService catService;
    
    
    
    @Inject
    public CategoryCMSController(CategoryCMSService catService) {
        this.catService = catService;
        
    }

    @RequestMapping(value= {"/categories"}, method = RequestMethod.GET)
    public String displayAllCategories(HttpServletRequest request, Model model) {
        List<Category> allCategories;
        allCategories = catService.selectAllCategories();
        model.addAttribute("allCategories", allCategories);
        return "categories";
    }
    
    @RequestMapping(value = "/deleteCategory", method = RequestMethod.GET)
    public String deleteCategory(HttpServletRequest request, Model model) {
        int catID = Integer.parseInt(request.getParameter("categoryId"));
        catService.removeCategory(catID);
        return "redirect:categories";
    }
    
    @RequestMapping(value = "/chooseCategoryToUpdate", method = RequestMethod.GET)
    public String chooseCategoryToUpdate(HttpServletRequest request, Model model) {
        int catID = Integer.parseInt(request.getParameter("categoryId"));
        Category cat = catService.selectCatById(catID);
        model.addAttribute("cat",cat);
        
        return "redirect:categories";
    }
    
    @RequestMapping(value = "/submitCategory", method = RequestMethod.GET)
    public String updateCategory(HttpServletRequest request, Model model) {
        int catID = Integer.parseInt(request.getParameter("categoryId"));
        Category cat = catService.selectCatById(catID);
        cat.setCatName("");
        cat.setDescription("");
        catService.updateCategory(cat);
        
        catService.updateCategory(cat);
        return "redirect:categories";
    }
    
}
