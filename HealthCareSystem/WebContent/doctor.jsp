<%@ page import="com.Doctor" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery.min.js"></script>
<script src="Components/doctor.js"></script>
  <style>
  
body {
  background-color: #EAF17B;
}

</style>

</head>
<body >
<nav class ="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><h1><center><b><p style="color:brown">Health Care Management</p></b></center></h1></a>
	<div class="navbar-header navbar-right">
		<ul class="nav navbar-nav">
			<li><a href="#"><b>Home</b></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="#"><b>Doctor</b></a></li>
		</ul>
	</div>
	</div>
</nav>



	<div class="container">
	<div class="row">
	<div class="col-6">
		
		<h2><center><p style="color:blue">Doctor Register Details</p></center></h2><br>
		
			<form id="formDoctor" name="formDoctor">
					<b>Doctor Name:</b>
					<input type="text" class="form-control form-control-sm"  id="doctorName" placeholder="Enter your name" name="doctorName"><br>
					
					<b>Doctor Age:</b>
					<input type="text" class="form-control form-control-sm"  id="doctorAge" placeholder="Enter your age" name="doctorAge"><br>
					
					<b>Mail:</b>
					<input type="text" class="form-control form-control-sm" id="doctorMail" placeholder="Enter your mail" name="doctorMail"><br>
					
					<b>Speciality:</b>
					<input type="text" class="form-control form-control-sm" id="doctorSpeciality" placeholder="Enter your speciality" name="doctorSpeciality"><br>
					
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					<input type="hidden" id="hidDoctorIDSave" name="hidDoctorIDSave" value="">					
			</form>
				<div id="alertSuccess" class="alert alert-success"></div>
	        	<div id="alertError" class="alert alert-danger"></div>
	        <br>
	        	
	       </div>  
	       </div>
	       </div>
	       
	       <div id="divDoctorGrid">
	        	<%
	                Doctor doctorObj = new Doctor();
	                out.print(doctorObj.readDoctor());
             	%>
             	</div>
				   
</body>
</html>