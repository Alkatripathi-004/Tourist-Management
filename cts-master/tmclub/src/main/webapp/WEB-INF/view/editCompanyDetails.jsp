<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/mystyle.css">
<script src="/js/myscript.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<header class="headerblock">
		<%@ include file="header.jsp"%>
	</header>

	<section class="bodyblock">


		<h2>Edit Tourist Details</h2>

		<form:form name="companyRegistrationForm"
			onsubmit="return validateCompanyRegistrationForm()" method="POST"
			action="/editCompanyDetails" modelAttribute="touristPojo">
             <table>
				<tr>
					<td><form:label path="id">Tourist Id</form:label></td>
					<form:hidden path="id" />
					<td>${touristPojo.id}</td>
				</tr>
			</table>

  <fieldset>
  <legend>Personal Information</legend>
  <table>
  <th>
  <tr>
  				
					<td><form:label path="cname" >Tourist Name</form:label></td>
					<td><form:input path="cname" required="required"  /></td>
					<td><form:errors path="cname" cssClass="error" /></td>
					
					<td><form:label path="add1">Address Line1</form:label></td>
					<td><form:input path="add1" /></td>  
					<td> </td>
					
					<td><form:label path="pcontact">Contact No.</form:label></td>
					<td><form:input path="pcontact" required="required"/></td>	
					<td></td>
					<td><form:label path="idno">Id Proof No.</form:label></td>
					<td><form:input path="idno" required="required" /></td>				
  </tr>
  <tr>
					<td><form:label path="age">age</form:label></td>
					<td><form:input path="age" /></td>
					<td></td>
					
					<td><form:label path="add2">Address Line2</form:label></td>
					<td><form:input path="add2" /></td>
					<td></td>
					
					<td><form:label path="scontact">Alternate No.</form:label></td>
					<td><form:input path="scontact" /></td>
					<td></td>
  </tr>
  <tr>
  					<td><form:label path="gender">Gender</form:label></td>
  						<td><form:radiobutton path="gender" value="male" />Male
						<form:radiobutton path="gender" value="Female"/>Female </td>
					
					
					
					<td></td>
					
					<td><form:label path="add3">Address Line3</form:label></td>
					<td><form:input path="add3" /></td>
					<td></td>
					
					<td><form:label path="email">E-mail</form:label></td>
					<td><form:input path="email" /></td>
					<td></td>
  </tr>
  </th>
  </table>	
 </fieldset>
<br>
 
 <fieldset>
 <legend>Food and Accommodation</legend>
  <table>
 <th>
					
				<tr>
					<td><form:label path="location">Location</form:label></td>
					<td><form:input path="location" /></td>
					<td><form:errors path="location" cssClass="error" /></td>
					
					<td><form:label path="preffered_food">Preferred food</form:label></td>
					<td><form:checkbox path="preffered_food" value="Chinese"/>Chinese</td>
					
					
					<td></td>
					
					<td><form:label path="arrdate">Exp. Arrival date</form:label></td>
					<td><form:input path="arrdate" /></td>
					<td>(mm/dd/yyyy)</td>				
				</tr>
				<tr>
					<td><form:label path="hotelname">Name of Hotel</form:label></td>
					<td><form:input path="hotelname" /></td>
					<td></td><td></td>
					
					
					<td><form:checkbox path="preffered_food" value="North Indian"/>North Indian</td>
					<td></td>
					
					<td><form:label path="depdate">Exp. Departure Date</form:label></td>
					<td><form:input path="depdate" /></td>
					<td>(mm/dd/yyyy)</td>
				</tr>
				<tr>
					<td><form:label path="roomno">Room Number</form:label></td>
					<td><form:input path="roomno" /></td>
					<td></td><td></td>
					<td><form:checkbox path="preffered_food" value="South Indian"/>South Indian</td>
					<td></td>
				</tr>
				<tr>
					<td><form:label path="roomtype">Room Type</form:label></td>
					<td><form:input path="roomtype" /></td>
					<td></td>
				</tr>
 </th>				
 </table>
 </fieldset>
 <br>
 
 <fieldset>
 <legend>Health</legend>
  <table>
 <th>
					
				<tr>
					<td><form:label path="emergencyContact">Emergency Contact</form:label></td>
					<td><form:input path="emergencyContact" required="required"/></td>
					<td><form:errors path="location" cssClass="error" /></td>
					
					<td><form:label path="bloodgroup">Blood group</form:label></td>
					<td><form:input path="bloodgroup" required="required" /></td>
					<td></td>
					
					<td><form:label path="arrdate">Exp. Arrival date</form:label></td>
					<td><form:input path="arrdate" /></td>
					<td></td>					
				</tr>
				
 </th>				
 </table>
 </fieldset>
 	
 <table>
 <tr>
				
					<td></td><td></td><td><td></td><td></td><td><td></td><td></td><td></td><td></td><td></td>
					<td><input type="submit" value="Register New Tourist" /></td>
						
 </tr>			
 </table>			
				
        </form:form>
	</section>

	<footer class="footerblock">
		<%@ include file="footer.jsp"%>
	</footer>



</body>
</html>