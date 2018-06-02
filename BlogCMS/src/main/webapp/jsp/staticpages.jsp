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
        
        <div class = "container">

            <div class = "row">
                <div class = "col-md-6>">
                            <h1> TITLE  :  ${selectStaticPage.title}</h1>
                            <h2> AUTHOR  :  ${selectStaticPage.author}</h2>
                            <p> DESCRIPTION: ${selectStaticPage.description}</p>
                            <p> ${selectStaticPage.content}</p>
                            <p> Date Published: ${selectStaticPage.publishDate}</p>

                </div>

                <div class = "col-md-6>">



                </div>
            </div>
        </div>
            
        <div class="icons">
            <button>Instagram</button>
            <button>FaceBook</button>
            <button>Twitter</button>
            <button>YouTube</button>
        </div>
            
        </div
        
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>




                
