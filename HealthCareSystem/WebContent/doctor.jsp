<%@ page import="com.Doctor" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
     	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./Components/doctor.js"></script>
  <style>
 body {
 	background-color: #E6E6FA;
 }
  </style>
</head>
<body >
<h1 style="font-family:verdana">Health Care Management</h1><br><br>
	<div class="container">
	<div class="row">
	<div class="col-6">
		
		<h2>Doctor Register Details</h2><br><br>
		
		<form class="formDoctor" name="formDoctor" method="post" action="doctor.jsp">
				<div class="form-group">
				
					<label for="name">Doctor Name:</label>
					<input type="text" class="form-control"  id="name" placeholder="Enter your name" name="name"><br>
					
					<label for="age">Doctor Age:</label>
					<input type="text" class="form-control"  id="age" placeholder="Enter your age" name="age"><br>
					
					<label for="mail">Mail:</label>
					<input type="text" class="form-control" id="mail" placeholder="Enter your mail" name="mail"><br>
					
					<label for="speciality">Speciality:</label>
					<input type="text" class="form-control" id="speciality" placeholder="Enter your speciality" name="speciality"><br>
					
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					<input type="hidden" id="hidDoctorIDSave" name="hiDoctorIDSave" value="">					
				</div>
			</form>
			<div id="alertSuccess" class="alert alert-success"></div>
	        <div id="alertError" class="alert alert-danger"></div>
	        <br>
	        	<div id="DoctorGrid">
	        		<%
	                	Doctor doctorObj = new Doctor();
	                	out.print(doctorObj.readDoctor());
             		%>
             	</div>
	       </div>  
	       </div>
	       </div>
				   
</body>
</html>


