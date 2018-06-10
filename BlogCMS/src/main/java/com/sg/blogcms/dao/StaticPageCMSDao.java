/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dao;

import com.sg.blogcms.dto.Category;
import com.sg.blogcms.dto.StaticPage;
import com.sg.blogcms.dto.Tags;
import java.util.List;

/**
 *
 * @author svlln
 */
public interface StaticPageCMSDao {
    StaticPage createStaticPage(StaticPage sp);
    void removeStaticPage(int spId);
    StaticPage updateStaticPage(StaticPage sp);
    StaticPage selectStaticPage(int spId);
    List<StaticPage> selectAllStaticPages();
    List<StaticPage> selectAllStaticPagesByUser(int userID);
    public List<Tags> selectAllTags();    
    public List<Category> selectAllCategories();
    
}
