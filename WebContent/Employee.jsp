<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style type="text/css">

	body  {
  background-image: url("images/sava.jpg");
  background-repeat: no-repeat;
  background-size: auto;
   background-size: 1500px 800px;
   font-family: "Trirong", serif;
          }

.button{
 background-color: #4CAF50;
  border: none;
  color: white;
  padding: 6px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 32px;
  margin: 7px 3px;
  cursor: pointer;
}

.button1{

  margin: 8px 4px;
  cursor: pointer;
}
</style>

</head>
<body>
				

	<form action="Add_Details_Employee.jsp" method="post">
	<input type="submit" class="button" value="   ADD Details    "> 
	</form>
				
				
						<form action="Extra_Details.jsp" method="post">
						<input type="submit" class="button" value="   Extra_Details   "> 
						</form>
				
				
	<form action="Search_Employee.jsp" method="post">
	<input type="submit" class="button" value="Search Employee"> 
	</form>
				
				
				<form action="Search_All_Employee" method="post">
				<input type="submit" class="button" value="   All_Employee  "> 
				</form>


	<form action="All_Employee_Edit.jsp" method="post">
	<input type="submit" class="button" value="    Edit Details     ">
	</form> 		
	
	
				<form action="Document.jsp" method="post">
				<input type="submit" class="button" value="      Document      "> 
				</form>
				
	
	<form action="Delete_Employee_Detail.jsp" method="post">
	<input type="submit" class="button" value="   Delete Details   "> 
	</form>

				
	<%--			<form action="Employee_Servise_Book.jsp" method="post">
				<input type="submit" class="button" value="Employee_Servise_Book"> 
				</form>                              --%>
				
	
				
	<form action="Type.jsp" method="post">
				<input type="submit" class="button1" value="      Logout      "> 
				</form>
				
</body>
</html>