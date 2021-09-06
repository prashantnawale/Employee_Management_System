<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Type of Employee</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<style type="text/css">


	body  {
  background-image: url("images/Prati.jpg");
  background-repeat: no-repeat;
  background-size: auto;
   background-size: 1500px 800px;
    margin-left: 10px;
    font-family: "Trirong", serif;
          }

div.c {
  
  margin-left: 1100px;
} 

.button{
 background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 32px;
  margin: 8px 2px;
  cursor: pointer;
}
</style>
</head>
<body>
<br>
<center>
<h2 style="color: red;background-color:yellow; ">Select The Type Of Employee</h2>
</center>
<div class="c">
<h5>Prashant Nawale</h5>
</div>
<hr>
			<form action="Employee_Login.jsp" method="post" >
			<input type="submit" class="button" value="   Employee  "> 
			</form>

<form action="Agent_Login.jsp" method="post" >
<input type="submit" class="button" value="Pigmy Agent"> 
</form>

				<form action="Prerak_Login.jsp" method="post" >
				<input type="submit" class="button" value="      Prerak     "> 
				</form>
				
<form action="CSP_Login.jsp" method="post" >
<input type="submit" class="button" value="	CSP      "> 
</form>

</body>
</html>