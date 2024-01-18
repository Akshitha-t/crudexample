<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<a href="${pageContext.request.contextPath}/user">user</a> 
 <a href="${pageContext.request.contextPath}/admin">admin</a> 
  <a href="javascript:document.getElementById('logout').submit()">Logout</a>

<h3>Welcome to Home Page</h3>


<c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>