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
        <div class="account-float">
            <button><a href="${pageContext.request.contextPath}/login">LOGOUT</a></button>
        </div>
        
        
        <div class="nav">
          <ul>
            <li><a href="${pageContext.request.contextPath}/index">Home </a></li>
            <li><a href="${pageContext.request.contextPath}/blogs"> Blogs </a></li>
            <li><a href="${pageContext.request.contextPath}/categories"> Categories </a></li>
            <li><a href="${pageContext.request.contextPath}/users"> Users </a></li>
            <li><a href="${pageContext.request.contextPath}/about"> About</a></li>
            <!-- <li><a>Static Pages</a></li> STATIC PAGES UP FOR DISCUSSION-->
          </ul>
        </div>
  <!-- ONLY ADDING A TAGS FOR PURPOSE OF MAYBE LINKING TO OTHER BLOGS-->
        <h1>${user.lastName}, ${user.firstName}</h1>
        <div class="container">
            <div class="col-md-4 ">
                    <table class="table">
                        <thead>
                            <tr>
                                <th> Title </th>
                                <th> Description </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="i" begin="0" end="${lastTenBlogs.size()}">
                                <tr >
                                    <td>
                                        <c:out value="${lastTenBlogs[i].title}"></c:out>
                                    </td>

                                    <td>
                                        <c:out value="${lastTenBlogs[i].description}"></c:out>
                                    </td>
                                </tr>

                            </c:forEach>

                        </tbody>
                    </table>
    
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
