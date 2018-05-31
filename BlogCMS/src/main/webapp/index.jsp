<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">        
    </head>
    <body>
        <h1>My Blog</h1>
  <button>Login</button>
  <button>Sign Up</button>
  <div class="nav">
    <ul>
      <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/blogs">Blogs</a></li>
      <li><a href="${pageContext.request.contextPath}/categories">Categories</a></li>
      <li><a href="${pageContext.request.contextPath}/tags">Tags</a></li>
      <li><a href="${pageContext.request.contextPath}/users">Users</a></li>
      <li><a href="${pageContext.request.contextPath}/about">About</a></li>
      <!-- <li><a>Static Pages</a></li> STATIC PAGES UP FOR DISCUSSION-->
    </ul>
  </div>
  <!-- ONLY ADDING A TAGS FOR PURPOSE OF MAYBE LINKING TO OTHER BLOGS-->
  <div class="blog-side">
    <div class="blog-desc">
      <a>
        <li>Blog 1</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 2</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 3</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 4</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 5</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 6</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 7</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 8</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 9</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
    <div class="blog-desc">
      <a>
        <li>Blog 10</li>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis purus magna, vitae gravida orci pharetra at. Nam rutrum, dolor quis tempor dapibus, est ipsum fermentum ante, eu bibendum purus ipsum at nunc. Sed imperdiet faucibus urna.</p>
      </a>
    </div>
  </div>
  <div class="blog-long-desc">
    <h1>Blog description</h1>
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

