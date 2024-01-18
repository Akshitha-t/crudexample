 <!--    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<title>Admin</title> 
	</head> 
<body> 
	<h1>Welcome Admin</h1>
	<a href="empform">Add Employee</a>
	<a href="empeditform">Employees Edit Form</a>
	<c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
	<a href="javascript:document.getElementById('logout').submit()">Logout</a>
</c:if> 
</body> 
</html>
    -->
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 20px;
        }

        h1 {
            color: #009688;
        }

        a {
            text-decoration: none; /* Remove underlines from links */
            color: #0066cc;
            margin-right: 20px; /* Add some spacing between links */
        }

        a:hover {
            color: #004080; /* Change link color on hover */
        }

        #logoutForm {
            display: inline; /* Align the logout form inline with the links */
        }

        #logoutButton {
            background-color: #fff;
            border: none;
            cursor: pointer;
            color: #ff0000;
            text-decoration: underline; /* Add underline to the logout link */
            margin-left: 20px; /* Add spacing between logout link and other links */
        }

        #logoutButton:hover {
            color: #cc0000;
        }
    </style>
</head>
<body>
    <h1>Welcome Admin</h1>
    <a href="empform">Add Employee</a>
   

    <c:url value="/logout" var="logoutUrl" />
    <form id="logoutForm" action="${logoutUrl}" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <button id="logoutButton" onclick="document.getElementById('logoutForm').submit()">Logout</button>
    </c:if>
</body>
</html>
    
    