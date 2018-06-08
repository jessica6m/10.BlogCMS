/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.mappers;

import com.sg.blogcms.dto.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author josesosa
 */
public class UserMapper implements RowMapper<User>{
    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException{
       User user = new User();
       user.setUserId(rs.getInt("idUser"));
       user.setFirstName(rs.getString("firstName"));
       user.setLastName(rs.getString("lastName"));
       user.setUserName(rs.getString("username"));
       user.setUserEmail(rs.getString("userEmail"));
       user.setUserPassword(rs.getString("password"));
       user.setUserBio(rs.getString("bio"));
       user.setIsAdmin(rs.getBoolean("enabled"));

       return user;
    }
}
