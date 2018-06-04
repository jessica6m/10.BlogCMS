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
        <title>About</title>
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
                                            <button>EDIT</button>
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
                    </div> <!-- End of column -->
                </div> <!-- End of row --> 

                
    </body>
    
    
</html>
