  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script src="${pageContext.request.contextPath}/static/ajax-script.js"></script>


		<h1>Edit Employee</h1>
       <form:form method="POST" action="/SpringMVCCRUDSimple/editsave">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
          <td>Salary :</td>  
          <td><form:input path="salary" /></td>
         </tr> 
         <tr>  
          <td>Designation :</td>  
          <td><form:input path="designation" /></td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
         <tr>
        <td> </td>
        <td><input type="button" value="Edit Save (AJAX)" onclick="updateEmployee()" /></td>
    </tr>
        </table>  
       </form:form>  
       <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    function updateEmployee() {
        var formData = $('#editForm').serialize();

        $.ajax({
            type: 'POST',
            url: '/SpringMVCCRUDSimple/editsave',
            data: formData,
            success: function (data) {
                // Handle success (if needed)
                alert('Employee updated successfully!');
            },
            error: function (error) {
                // Handle error (if needed)
                alert('Error updating employee!');
            }
        });
    }
</script>