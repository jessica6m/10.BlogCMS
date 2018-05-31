/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dao;

import com.sg.blogcms.dto.StaticPage;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author svlln
 */
public class StaticPageCMSDaoDbImpl implements StaticPageCMSDao {
    
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
//    ----------------------------------------------------------------------------
//    **********************PREPARED STATEMENTS **********************************
//    ----------------------------------------------------------------------------
    
    private static final String SQL_SELECT_STATIC_PAGE
            = "select * from blogs where idStaticPage = ? ";
    
    private static final String SQL_SELECT_ALL_STATIC_PAGES = 
            "select * from StaticPage";
    
//    ----------------------------------------------------------------------------
//    *******************INTERFACE METHODS****************************************
//    ----------------------------------------------------------------------------

    @Override
    public StaticPage createStaticPage(StaticPage sp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void removeStaticPage(int spId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public StaticPage updateStaticPage(StaticPage sp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public StaticPage selectStaticPage(int spId) {
        try {
            return jdbcTemplate.queryForObject(SQL_SELECT_STATIC_PAGE, 
                                               new StaticPageMapper(), 
                                               spId);
        } catch (EmptyResultDataAccessException ex) {
            return null;
        }
    }

    @Override
    public List<StaticPage> selectAllStaticPages() {
        return jdbcTemplate.query(SQL_SELECT_ALL_STATIC_PAGES,
                new StaticPageMapper());
    }

    @Override
    public List<StaticPage> selectAllStaticPagesByUser(int userID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
//    ----------------------------------------------------------------------------
//    ********************ROW MAPPER *********************************************
//    ----------------------------------------------------------------------------
    
    private static final class StaticPageMapper implements RowMapper<StaticPage>{
         @Override
         public StaticPage mapRow(ResultSet rs, int rowNum) throws SQLException{
            StaticPage sp = new StaticPage();
            
            sp.setId(rs.getInt("idStaticPage"));
            sp.setTitle(rs.getString("title"));
            sp.setDescription(rs.getString("description"));
            sp.setContent(rs.getString("content"));
            sp.setAuthor(rs.getString("author"));
            sp.setCreatedDate((rs.getTimestamp("createdDate")));
            sp.setPublishDate((rs.getTimestamp("publishDate")));
            sp.setExpirationDate((rs.getTimestamp("expirationDate")));
            sp.setIsActive(rs.getBoolean("isActive"));
            sp.setUserId(rs.getInt("idUser"));
            return sp;
         }
     }
   
    
}
