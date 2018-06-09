<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
        
        <div class="nav">
          <ul>
            <li><a href="${pageContext.request.contextPath}/index">Home </a></li>
            <li><a href="${pageContext.request.contextPath}/blogs"> Blogs </a></li>
            <li><a href="${pageContext.request.contextPath}/categories"> Categories </a></li>
            <li><a href="${pageContext.request.contextPath}/users"> Users </a></li>
            <li><a href="${pageContext.request.contextPath}/tags"> Tags</a></li>
            <li><a href="${pageContext.request.contextPath}/viewStaticPage"> Static Pages</a></li>
            <!-- <li><a>Static Pages</a></li> STATIC PAGES UP FOR DISCUSSION-->
          </ul>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <p>Hello : ${pageContext.request.userPrincipal.name} 
                |<a href="${pageContext.request.contextPath}/displayUserProfile?viewType=edit&username=${pageContext.request.userPrincipal.name}" /> Edit</a> |<a href="<c:url value="/j_spring_security_logout" />" > Logout</a> 
            </p>
        </c:if>
  <!-- ONLY ADDING A TAGS FOR PURPOSE OF MAYBE LINKING TO OTHER BLOGS-->
        <div class="container">
            <div class="row">
                <div class="col-md-12 ">
                    <table class="table">
                        <thead>
                            <tr>
                                <th> Title </th>
                                <th> Description </th>
                                <th> Author </th>
                                <th> Publish Date </th>
                                <th> EDIT</th>
                                <th> DELETE </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="i" begin="0" end="${allBlogs.size()}">
                                <tr >
                                    <td>
                                        <c:out value="${allBlogs[i].title}"></c:out>
                                    </td>

                                    <td>
                                        <c:out value="${allBlogs[i].description}"></c:out>
                                    </td>
                                    
                                    <td>
                                        <c:out value="${allBlogs[i].author}"></c:out>
                                    </td>

                                    <td>
                                        <c:out value="${allBlogs[i].publishDate}"></c:out>
                                    </td>
                                    
                                    <td>
                                        <button>EDIT</button>
                                    </td>

                                    <td>
                                        <button>DELETE</button>
                                    </td>
                                </tr>

                            </c:forEach>

                        </tbody>
                    </table>
    
                </div>
                
                
                

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
