/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.service;

import com.sg.blogcms.dao.UserCMSDao;
import com.sg.blogcms.dto.User;
import javax.inject.Inject;

/**
 *
 * @author josesosa
 */
public class UserCMSService {
    UserCMSDao userDao;
    
    
    @Inject
    public UserCMSService(UserCMSDao userDao) {
        this.userDao = userDao;
    }

    public User selectUserProfile(int userID) {
        return userDao.selectUser(userID);
    }
    
}
