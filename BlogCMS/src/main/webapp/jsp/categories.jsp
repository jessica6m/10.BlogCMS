<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">        
    </head>
    <body>
        <h1>My Blog</h1>
        <div class="account-float">
            <button><a href="${pageContext.request.contextPath}/login">Login</a></button>
            <button><a href="${pageContext.request.contextPath}/displayUserProfilePage/userID">Edit</a></button>
        </div>
        <div class="nav">
          <ul>
            <li><a href="${pageContext.request.contextPath}/index">Home </a></li>
            <li><a href="${pageContext.request.contextPath}/blogs"> Blogs </a></li>
            <li><a href="${pageContext.request.contextPath}/categories"> Categories </a></li>
            <li><a href="${pageContext.request.contextPath}/users"> Users </a></li>
            <li><a href="${pageContext.request.contextPath}/about"> About</a></li>
            <li><a href="${pageContext.request.contextPath}/viewStaticPage"> Static Pages</a></li>
            <!-- <li><a>Static Pages</a></li> STATIC PAGES UP FOR DISCUSSION-->
          </ul>
        </div>
  <!-- ONLY ADDING A TAGS FOR PURPOSE OF MAYBE LINKING TO OTHER BLOGS-->
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <table class="table">
                        <thead>
                            <tr>
                                <th> Category Name </th>
                                <th> Description </th>
                                <th> EDIT</th>
                                <th> DELETE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="i" begin="0" end="${allCategories.size() - 1}">
                                <tr >
                                    <td>
                                        <c:out value="${allCategories[i].catName}"></c:out>
                                    </td>

                                    <td>
                                        <c:out value="${allCategories[i].description}"></c:out>
                                    </td>

                                    <td>
                                        <a href="${pageContext.request.contextPath}/chooseCategoryToUpdate?viewType=edit&categoryId=${allCategories[i].catId}" class = "btn btn-warning">EDIT</a>
                                    </td>

                                    <td>
                                        <a href="${pageContext.request.contextPath}/deleteCategory?categoryId=${allCategories[i].catId}" class = "btn btn-danger">DELETE</a>
                                    </td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                        
                </div>
                <div class="col-md-4 body">
                    <c:choose>
                                <c:when test="${display == 'edit'}">
                                    <h2>Add New Category </h2>
                                    <hr>
                                    <form action="updateCategory" class="form-horizontal" role="form" method="GET" >
                                        <div class="form-group">
                                            <label for="add-category-name" class="col-sm-3 control-label">Category </label>
                                            <div class="    ">
                                                <input type="text" name="name" placeholder="Name : ${cate.catName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="add-category-description" class="col-md-2 control-label">Description:</label>
                                            <div class="">
                                                <textarea  class="form-control" rows="3" name="description" placeholder="Description : ${cate.description}"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                <input type="submit" class="btn btn-default" value="Submit">
                                            </div>
                                        </div>
                                    </form>
                                    
                                </c:when>
                                <c:otherwise>
                                    <h2>Add New Category </h2>
                                    <hr>
                                    <form action="createCategory" class="form-horizontal" role="form" method="POST" >
                                        <div class="form-group">
                                            <label for="add-category-name" class="col-sm-3 control-label">Category </label>
                                            <div class="    ">
                                                <input type="text" name="categoryName" placeholder="Name : ${cate.catName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="add-category-description" class="col-md-2 control-label">Description:</label>
                                            <div class="">
                                                    <textarea  class="form-control" rows="3" name="categoryDescription" placeholder="Description : ${cate.description}"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                <input type="submit" class="btn btn-default" value="Submit">
                                            </div>
                                        </div>
                                    </form>

                                </c:otherwise>
                    </c:choose>
                        
                </div> <!-- End of column -->
                
                
                

            </div>
            
            
            <div class="icons">
                <button>Instagram</button>
                <button>FaceBook</button>
                <button>Twitter</button>
                <button>YouTube</button>
            </div>
            
        </div>
        
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
