/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.service;

import com.sg.blogcms.dao.CategoryCMSDao;
import javax.inject.Inject;

/**
 *
 * @author josesosa
 */
public class CategoryCMSService {
    CategoryCMSDao catDao;
    
    
    @Inject
    public CategoryCMSService(CategoryCMSDao catDao) {
        this.catDao = catDao;
    }
    
}
