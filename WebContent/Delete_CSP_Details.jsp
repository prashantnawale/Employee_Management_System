<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete CSP Details</title>

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
   background-size: 1500px 1800px;
   font-family: "Trirong", serif;
          }


.username1{
text-align:right;
}

.button1 {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


hr.new51 {
  border: 5px solid green;
  border-radius: 2.5px;
  }
  
  .color1{
  boarder:2px;
  color:black;
  }
  
  .ex1
    {
        width:800px;
        padding:20px;
        margin:0px;
        align-items:flex-end;
                
      <--  background-image: url(""); 
        border:5px solid green;
         background-color:white;   -->
    }
  
</style>

</head>
<body>
<br>
<center>
<h1 class="color1"> Delete CSP </h1>
<br>

</center>
<hr class="new51">


			<div  class="username">
			<h3 style="color:black;">${param.msg}</h3>   <%--it is use for take msg from last page --%>
			</div>

<br></br>

<form action="Delete_CSP_Detail_Validation" method='post'>

<h5 class='color1'>
<div class="">    <%-- ex --%> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;


CSP ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <input type="text" placeholder='Employee_Id' name='employee_id' required>  <br></br>

<center>
CSP FirstName:<input type="text" placeholder='Employee_FirstName' name='employee_firstname'>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

CSP LastName:<input type="text" placeholder='Employee_LastName' name='employee_lastname'>

<br></br>



<div>

	 
  <button type="submit" class="button">DELETE</button>
  
</div>
</div>
</h5>
</center>

</form>
</body>
</html>