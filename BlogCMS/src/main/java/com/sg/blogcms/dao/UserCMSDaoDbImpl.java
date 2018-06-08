/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dao;

import com.sg.blogcms.dto.User;
import com.sg.blogcms.mappers.UserMapper;
import java.util.List;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author svlln
 */
public class UserCMSDaoDbImpl implements UserCMSDao {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    //==========================================================================
    //                          SQL USER
    //==========================================================================
    private static final String SQL_SELECT_USER
            = "select * from User where idUser = ? ";

    private static final String SQL_DELETE_USER
            = "delete from User where idUser = ?";

    private static final String SQL_SELECT_ALL_USERS
            = "select * from User";

    private static final String SQL_UPDATE_USER
            = "update User set firstName = ?, lastName = ?, userName = ?, userEmail = ?, userPassword = ?, bio = ?, isAdministrator = ? where idUser = ?";

    private static final String SQL_INSERT_USER
            = "insert into User (firstName, lastName, userName, userEmail, userPassword, bio, isAdministrator) values(?,?,?,?,?,?,?)";

    //==========================================================================
    //                                 METHODS
    //==========================================================================
    @Override
    public User selectUser(int userID) {
        try {
            return jdbcTemplate.queryForObject(SQL_SELECT_USER,
                    new UserMapper(),
                    userID);
        } catch (EmptyResultDataAccessException ex) {
            return null;
        }
    }

    @Override
    public List<User> selectAllUsers() {
        return jdbcTemplate.query(SQL_SELECT_ALL_USERS,
                new UserMapper());
    }

    @Override
    public void removeUser(int userID) {
        jdbcTemplate.update(SQL_DELETE_USER, userID);
    }

    @Override
    public User updateUser(User user) {
        jdbcTemplate.update(SQL_UPDATE_USER,
                user.getFirstName(),
                user.getLastName(),
                user.getUserName(),
                user.getUserEmail(),
                user.getUserPassword(),
                user.getUserBio(),
                user.getIsAdmin(),
                user.getUserId());
        return user;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public User createUser(User user) {
        jdbcTemplate.update(SQL_INSERT_USER,
                user.getFirstName(),
                user.getLastName(),
                user.getUserName(),
                user.getUserEmail(),
                user.getUserPassword(),
                user.getUserBio(),
                user.getIsAdmin());

        int userId
                = jdbcTemplate.queryForObject("select LAST_INSERT_ID()",
                        Integer.class);
        user.setUserId(userId);
        return user;
    }

}
