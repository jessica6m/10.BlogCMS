/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.blogcms.dao;

import com.sg.blogcms.dto.BlogPost;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author svlln
 */
public class BlogsCMSDaoDbImpl implements BlogsCMSDao{
   
    
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    //==========================================================================
    //                          SQL BLOGPOST
    //==========================================================================

    private static final String SQL_INSERT_BLOG
            = "insert into blogs (title, description, content, author, createdDate" 
            + "publishedDate, expirationDate,approved,idUser ,idCategories) values(?,?,?,?,?,?,?,?,?,?)";
    
    private static final String SQL_DELETE_BLOG
            = "delete from blogs where blogID = ?";
    
    private static final String SQL_UPDATE_BLOG
            = "update blogs set title = ?, content = ?, author = ?, ";
    
    private static final String SQL_SELECT_BLOG
            = "select * from blogs where blogID = ? ";
    
    private static final String SQL_SELECT_BLOG_BY_USER
            = "select * from blogs where userID =? ";
    
    private static final String SQL_SELECT_BLOG_BY_CAT
            = "select * from blogs where catID = ?";
    
    private static final String SQL_SELECT_BLOG_BY_TAG
            = "select * from blogs where tagID = ?";
    
    private static final String SQL_SELECT_LAST_TEN_BLOGPOST
           = "select * FROM BlogPost ORDER BY idBlogPost DESC LIMIT 10";
    
    private static final String SQL_SELECT_ALL_BLOGS = 
            "select * from blogs";
    
    
    //==========================================================================
    //                                 METHODS
    //==========================================================================
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public BlogPost createBlog(BlogPost blog) {
        jdbcTemplate.update(SQL_INSERT_BLOG,
                blog.getTitle(),
                blog.getDescription(),
                blog.getContent(),
                blog.getAuthor(),
                blog.getCreatedDate(),
                blog.getPublishDate(),
                blog.getExpirationDate(),
                blog.getIsApproved(),
                blog.getUserId(),
                blog.getCatId());
        int blogId = 
                jdbcTemplate.queryForObject("select LAST_INSERT_ID()", 
                                             Integer.class);

        blog.setId(blogId);
        return blog; 
    }

    @Override
    public void removeBlogPost(int blogID) {
        jdbcTemplate.update(SQL_DELETE_BLOG, blogID);
    }

    @Override
    public BlogPost updateBlog(BlogPost blog) {
         jdbcTemplate.update(SQL_UPDATE_BLOG,
                blog.getTitle(),
                blog.getDescription(),
                blog.getContent(),
                blog.getAuthor(),
                blog.getCreatedDate(),
                blog.getPublishDate(),
                blog.getExpirationDate(),
                blog.getIsApproved(),
                blog.getUserId(),
                blog.getCatId());
         return blog;
    }

    @Override
    public BlogPost selectBlog(int blogID) {
         try {
            return jdbcTemplate.queryForObject(SQL_SELECT_BLOG, 
                                               new BlogMapper(), 
                                               blogID);
        } catch (EmptyResultDataAccessException ex) {
            return null;
        }
    }
    

    @Override
    public List<BlogPost> selectAllBlogs() {
        return jdbcTemplate.query(SQL_SELECT_ALL_BLOGS,
                new BlogMapper());
    }
    
    @Override
    public List<BlogPost> selectLastTenBlogs() {
       return jdbcTemplate.query(SQL_SELECT_LAST_TEN_BLOGPOST,
               new BlogMapper());
    }
    
    @Override
    public List<BlogPost> selectAllBlogsByUser(int userID) {
       List<BlogPost> blogByUserList = 
                jdbcTemplate.query(SQL_SELECT_BLOG_BY_USER, 
                                   new BlogMapper(), 
                                   userID);
        // set the publisher and list of Authors for each book
       //return associateBlogAndUser(blogByUserList);
       return null;
    }

    @Override
    public List<BlogPost> selectAllBlogsByCategory(int catID) {
        return null;
    }

    @Override
    public List<BlogPost> selectAllBlogsByTag(int tagID) {
        return null;
    }
    
    
    //==========================================================================
    //                          HELPER METHODS
    //==========================================================================
    
    
//        private BlogPost findPublisherForBlog(BlogPost blog) {
//        return jdbcTemplate.queryForObject(SQL_SELECT_PUBLISHER_BY_BOOK_ID, 
//                                           new BlogMapper(), 
//                                           blog.getId());
//    }
//    
//     private List<BlogPost> associateBlogAndUser(List<BlogPost> blogList) {
//        // set the complete list of author ids for each book
//        for (BlogPost currentBlog : blogList) {
//            // add Authors to current book
//            currentBlog.setAuthor(SQL_UPDATE_BLOG);
//            currentBook.setAuthors(findAuthorsForBook(currentBook));
//            // add the Publisher to current book
//            currentBook.setPublisher(
//                findPublisherForBook(currentBook));
//        }
//        return bookList;
//    }
    
    //==========================================================================
    //                          MAPPERS
    //==========================================================================
    
     private static final class BlogMapper implements RowMapper<BlogPost>{
         @Override
         public BlogPost mapRow(ResultSet rs, int rowNum) throws SQLException{
            BlogPost bp = new BlogPost();
            
            bp.setId(rs.getInt("idBlogPost"));
            bp.setTitle(rs.getString("title"));
            bp.setDescription(rs.getString("description"));
            bp.setContent(rs.getString("content"));
            bp.setAuthor(rs.getString("author"));
            bp.setCreatedDate((rs.getTimestamp("createdDate")));
            bp.setPublishDate((rs.getTimestamp("publishDate")));
            bp.setExpirationDate((rs.getTimestamp("expirationDate")));
            bp.setIsApproved(rs.getBoolean("isApproved"));
            bp.setCatId(rs.getInt("idCat"));
            bp.setUserId(rs.getInt("idUser"));
            return bp;
         }
     }
}
