<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TAGS Page</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet"> 
    </head>
    <body>
        
            <div class="container">
                

                <div class="row">
                     <div class="col-md-8 ">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th> Tag Name </th>
                                    <th> Description </th>
                                    <th> EDIT</th>
                                    <th> DELETE</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="i" begin="0" end="${allTags.size() - 1}">
                                    <tr >
                                        <td>
                                            <c:out value="${allTags[i].tagName}"></c:out>
                                        </td>
                                        <td>
                                            <c:out value="${allTags[i].description}"></c:out>
                                        </td>

                                        <td>
                                            <a href="${pageContext.request.contextPath}/chooseTag?viewType=edit&tagId=${allTags[i].tagId}" class = "btn btn-danger">EDIT</a>
                                        </td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/deleteTag?tagId=${allTags[i].tagId}" class = "btn btn-danger">DELETE</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                    </div>
                    <div class="col-md-4 ">
                        
                        <c:choose>
                            <c:when test="${viewType=='edit'}">
                                <h2>Update Tag </h2>
                                <hr>
                                <form action="updateTag" class="form-horizontal" role="form" method="GET"> 
                                    <input type="hidden" name="categoryId" value="${tagID}" />

                                    <div class="form-group">
                                        <label for="tagName" class="col-sm-2 control-label">Tag Name</label>
                                        <div class="">
                                            <input type="text" name="tagName" placeholder="Tag Name : ${tags.tagName}" >
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="tagDescription" class="col-md-2 control-label">Description:</label>
                                        <div class="">
                                            <textarea type="text" class="form-control" rows="3" name="tagDescription" placeholder="Description : ${tags.description}"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="">
                                            <input type="submit" class="btn btn-default" value="${tagID}">
                                        </div>
                                    </div>

                                </form>
                                 <!--=======================================================================-
                                        <form action="updateCategory"  class="form-horizontal" role="form" method="GET" >
                                        <input type="hidden" name="categoryId" value="${catID}" />
                                        <div class="form-group">
                                            <label for="add-category-name" class="col-sm-3 control-label">Category </label>
                                            <div class="    ">
                                                <input type="text" name="categoryName" placeholder="Category Name : ${cat.catName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="add-category-description" class="col-md-2 control-label">Description:</label>
                                            <div class="">
                                                <textarea  class="form-control" rows="3" name="categoryDescription" placeholder="Category Description : ${cat.description}"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                <button type="submit" class="btn btn-default" value="${catID}"></button>
                                            </div>
                                        </div>
                                    </form>
                                    --=======================================================================--> 
                                        
                            </c:when>
                            <c:otherwise>
                                <h2>Add New Tag </h2>
                                <hr>
                                <form action="createTag" class="form-horizontal" role="form" method="POST"> 

                                    <div class="form-group">
                                        <label for="tagName" class="col-sm-2 control-label">Tag Name</label>
                                        <div class="">
                                            <input type="text" name="tagName" placeholder="Name">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="tagDescription" class="col-md-2 control-label">Description:</label>
                                        <div class="">
                                            <textarea type="text" class="form-control" rows="3" name="tagDescription" placeholder="Description of tag"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="">
                                            <input type="submit" class="btn btn-default" value="Submit">
                                        </div>
                                    </div>

                                </form>

                            </c:otherwise>    
                        </c:choose>
                    </div> <!-- End of column -->
                </div> <!-- End of row --> 

                
    </body>
    
    
</html>
