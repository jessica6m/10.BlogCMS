<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Company Contacts</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">              
    </head>
    <body>
        <h1>Users</h1>
        <hr/>
        <div class="nav">
            <ul>
              <li><a href="${pageContext.request.contextPath}/index">Home </a></li>
              <li><a href="${pageContext.request.contextPath}/blogs"> Blogs </a></li>
              <li><a href="${pageContext.request.contextPath}/categories"> Categories </a></li>
              <li><a href="${pageContext.request.contextPath}/users"> Users </a></li>
              <li><a href="${pageContext.request.contextPath}/tags"> Tags</a></li>
              <li><a href="${pageContext.request.contextPath}/viewStaticPage"> Static Pages</a></li>

            </ul>
        </div>
              
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <p>Hello : ${pageContext.request.userPrincipal.name} 
                |<a href="${pageContext.request.contextPath}/displayUserProfile?viewType=edit&username=${pageContext.request.userPrincipal.name}" /> Edit</a> |<a href="<c:url value="/j_spring_security_logout" />" > Logout</a> 
            </p>
        </c:if>
        <div class="container">
            <div class = "row"> 
                    <h1>Users</h1>
                    <div class="col-md-7 ">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th> First Name </th>
                                    <th> Last Name </th>
                                    <th> Username </th>
                                    <th> Email </th>
                                    <th> Password </th>
                                    <th> Bio </th>
                                    <th> Edit </th>
                                    <th> Delete </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="i" begin="0" end="${users.size() - 1}">
                                    <tr >
                                        <td>
                                            <c:out value="${users[i].firstName}"></c:out>
                                        </td>

                                        <td>
                                            <c:out value="${users[i].lastName}"></c:out>
                                        </td>
                                        
                                        <td>
                                            <c:out value="${users[i].username}"></c:out>
                                        </td>

                                        <td>
                                            <c:out value="${users[i].userEmail}"></c:out>
                                        </td>
                                        
                                        <td>
                                            <c:out value=" Password "></c:out>
                                        </td>

                                        <td>
                                            <c:out value="${users[i].userBio}"></c:out>
                                        </td>
                                        
                                        <td>
                                            <a href="${pageContext.request.contextPath}/chooseUser?viewType=edit&userId=${users[i].userId}" class = "btn btn-warning">EDIT</a>
                                        </td>

                                        <td>
                                            <a href="${pageContext.request.contextPath}/deleteUser?userId=${users[i].userId}" class = "btn btn-danger">DELETE</a>
                                        </td>
                                    </tr>

                                </c:forEach>

                            </tbody>
                        </table>

                    </div>
                    
                    <div class="col-md-4 col-md-offset-1">
                        <c:choose>
                            <c:when test="${viewType == 'edit'}">
                                <h2>Update User </h2>
                                <hr>
                                <form action="updateUser"  class="form-horizontal" role="form" method="GET" >
                                    <input type="hidden" name="userId" value="${userId}" />
                                    <div class="form-group">
                                        <label for="add-user-firstname" class="col-sm-3 control-label">First Name: </label>
                                        <div class="    ">
                                            <input type="text" name="userFirstName" placeholder="User's First Name : ${user.firstName}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-lastname" class="col-md-2 control-label">Last Name:</label>
                                        <div class="">
                                            <input type="text" name="userLastName" placeholder="User's Last Name : ${user.lastName}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-username" class="col-sm-3 control-label">Username </label>
                                        <div class="    ">
                                            <input type="text" name="username" placeholder="User's Username : ${user.username}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-useremail" class="col-sm-3 control-label">Email </label>
                                        <div class="    ">
                                            <input type="text" name="email" placeholder="User's Email : ${user.userEmail}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-password" class="col-sm-3 control-label">Password </label>
                                        <div class="    ">
                                            <input type="text" name="password" placeholder="User's Password : ${user.password}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-bio" class="col-md-2 control-label">Bio:</label>
                                        <div class="">
                                            <textarea  class="form-control" rows="3" name="userBio" placeholder="User Biography : ${user.userBio}"></textarea>
                                        </div>
                                    </div>
                                    <div>
                                        <input type="checkbox" name="isEnabled" value="yes"/>
                                    </div>
                                    <div>
                                        <input type="checkbox" name="isAdmin" value="yes"/>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <button type="submit" class="btn btn-default" value="${userId}"></button>
                                        </div>
                                    </div>
                                    
                                </form>

                            </c:when>
                            <c:otherwise>
                                <h2>Add New User </h2>
                                <hr>
                                <form action="adduser" class="form-horizontal" role="form" method="POST" >
                                    <div class="form-group">
                                        <label for="add-user-firstname" class="col-sm-3 control-label">First Name: </label>
                                        <div class="    ">
                                            <input type="text" name="userFirstName" placeholder="User's First Name : ">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-lastname" class="col-md-2 control-label">Last Name:</label>
                                        <div class="">
                                            <input type="text" name="userLastName" placeholder="User's Last Name : ">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-username" class="col-sm-3 control-label">Username </label>
                                        <div class="    ">
                                            <input type="text" name="username" placeholder="User's Username : ">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-useremail" class="col-sm-3 control-label">Email </label>
                                        <div class="    ">
                                            <input type="text" name="email" placeholder="User's Email : ">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-password" class="col-sm-3 control-label">Password </label>
                                        <div class="    ">
                                            <input type="text" name="password" placeholder="User's Password : ">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="add-user-bio" class="col-md-2 control-label">Bio:</label>
                                        <div class="">
                                            <textarea  class="form-control" rows="3" name="userBio" placeholder="User Biography : "></textarea>
                                        </div>
                                    </div>
                                    <div>
                                        Enable? <input type="checkbox" name="isEnabled" value="yes"/>
                                    </div>
                                    <div>
                                        Admin? <input type="checkbox" name="isAdmin" value="yes"/>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <button type="submit" class="btn btn-default btn-success" value="${userId}">SUBMIT</button>
                                        </div>
                                    </div>
                                    
                                </form>

                            </c:otherwise>
                        </c:choose>
                    </div>
           
            
            </div>
            <div class="footer">
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