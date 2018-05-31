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
        <button><a href="${pageContext.request.contextPath}/signup">Sign Up</a></button>
        </div>
        <div class="nav">
          <ul>
            <li><a href="${pageContext.request.contextPath}/index">Home </a></li>
            <li><a href="${pageContext.request.contextPath}/blogs"> Blogs </a></li>
            <li><a href="${pageContext.request.contextPath}/categories"> Categories </a></li>
            <li><a href="${pageContext.request.contextPath}/tags"> Tags </a></li>
            <li><a href="${pageContext.request.contextPath}/users"> Users </a></li>
            <li><a href="${pageContext.request.contextPath}/about"> About</a></li>
            <!-- <li><a>Static Pages</a></li> STATIC PAGES UP FOR DISCUSSION-->
          </ul>
        </div>
  <!-- ONLY ADDING A TAGS FOR PURPOSE OF MAYBE LINKING TO OTHER BLOGS-->
        <div class="blog-container">
          <div class="blog-side">
            <div class="blog-desc">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th> Title </th>
                                            <th> Description </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="i" begin="0" end="9">
                                                <td>
                                                    <c:out value="${lastTenBlogs[i].title}"></c:out>
                                                </td>

                                                <td>
                                                    <c:out value="${lastTenBlogs[i].description}"></c:out>
                                                </td>


                                            
                                        </c:forEach>
                                        
                                    </tbody>
                                </table>

            </div>

          </div>
          <div class="blog-long-desc">
              <p>Single long blog here</p>
          </div>
        </div>
        <div class="icons">
          <button>Instagram</button>
          <button>FaceBook</button>
          <button>Twitter</button>
          <button>YouTube</button>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
