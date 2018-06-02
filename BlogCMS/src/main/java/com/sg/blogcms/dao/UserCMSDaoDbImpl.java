/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dao;

import com.sg.blogcms.dto.User;
import com.sg.blogcms.mappers.UserMapper;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author svlln
 */
public class UserCMSDaoDbImpl implements UserCMSDao {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    private static final String SQL_SELECT_BLOG
            = "select * from User where idUser = ? ";
    

    @Override
    public User selectUser(int userID) {
        try {
            return jdbcTemplate.queryForObject(SQL_SELECT_BLOG, 
                                               new UserMapper(), 
                                               userID);
        } catch (EmptyResultDataAccessException ex) {
            return null;
        }
    }
    
    
}
