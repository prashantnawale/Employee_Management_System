<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit_Prerak</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style type="text/css">
body  {
  background-image: url("images/Prati.jpg");
  <%--   background-repeat: no-repeat;  
   background-size: 1500px 1800px; --%>
  background-size: auto;
  font-family: serif;
 
          }

div.c {
  
  margin-left: 1000px; 
} 

.submit{
color: dodgerblue;
	
}


.l {
	height: 100px;
	width: 80%;
	
}
.r{

}

.custom-select{
	width:35%;
	padding: 8px 45px;
	margin: 8px 0;
	display:inline-flex;
	border: 2px solid #ccc;
	box-sizing:border-box;
	font-size:10px;
	background-color: #ffffff;

	
}
input[type=text], input[type=date],input[type=number],input[type=label] {
	width:25%;
	padding: 10px 25px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 16px;
	
}

.btn {
	border:no;
	background-color: White;
	padding: 6px 18px;
	font-size: 22px;
	cursor: pointer;
	display: inline-block;
}

</style>

</head>
<body>
			<center>
					<br>
						<h3 style="color: red;">Edit Employee</h3>
					</br>	
			</center>
			
			<h1>
				<hr>
			</h1>
<%
String id =request.getParameter("id");
String Branch_name =request.getParameter("Branch_name");
String first_name =request.getParameter("first_name");
String last_name= request.getParameter("last_name");
String middel_name= request.getParameter("middel_name");
String birth_date= request.getParameter("birth_date");
String mobile_number = request.getParameter("mobile_number");
String pan_no = request.getParameter("pan_no");
String adhar_no = request.getParameter("adhar_no");
String email_id = request.getParameter("email_id");
String joining_date = request.getParameter("joining_date");
String other = request.getParameter("other");
String Cast = request.getParameter("Cast");
String Religion = request.getParameter("Religion");
String address = request.getParameter("address");
String job_post = request.getParameter("job_post");
String ssc_mark = request.getParameter("ssc_mark");
String ssc_board = request.getParameter("ssc_board");
String hsc_mark= request.getParameter("hsc_mark");
String hsc_board = request.getParameter("hsc_board");
String graduation_mark = request.getParameter("graduation_mark");
String graduation_board = request.getParameter("graduation_board");
String postgraduation_mark = request.getParameter("postgraduation_mark");
String postgraduation_board = request.getParameter("postgraduation_board");
String other_education_details = request.getParameter("other_education_details");
String other_education_mark = request.getParameter("other_education_Marks");
String other_education_board = request.getParameter("other_education_board");
String garantor = request.getParameter("garantor");
String authentic = request.getParameter("authentic");
String inheritor = request.getParameter("inheritor");
String address_of_inheritor = request.getParameter("address_of_inheritor");
String relation_with_inheritor = request.getParameter("relation_with_inheritor");
String joining_place = request.getParameter("joining_place");

		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from prerakdetail1 where id='"+id+"'");
	
			while(rs.next())
		{
			%>

	  <div>  
	  <h5>
	  <centre>
			<form action="Final_Prerak_Edit.jsp"  method="post">
			
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
			Employee Id:
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="id" 			placeholder="id"  			required="id" value="<%=rs.getString("id")%>">
			
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
			Branch_Name:	
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="Branch_name" placeholder="Branch_name"  	required="uname" value="<%=rs.getString("Branch_name")%>">
				
				<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
						
			First_Name:	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="first_name" placeholder="first_name"	 required="first_name" value="<%=rs.getString("first_name")%>">
				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
			Middel_Name:	
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="last_name"  placeholder="last_name"  	required="last_name" value="<%=rs.getString("last_name")%>">
					
				<br>	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
			Last_Name:		
					  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="middel_name" placeholder="middel_name"	 value="<%=rs.getString("middel_name")%>">
				
				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
			Birth_date:	
						 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="birth_date"  placeholder="birth_date"  value="<%=rs.getString("birth_date")%>">
				
				<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
			Mobile_Number:	
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="mobile_number"  placeholder="mobile_number"  value="<%=rs.getString("mobile_number")%>">
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
			Pan_Number:
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="pan_no"  placeholder="pan_no" 	 value="<%=rs.getString("pan_no")%>">
					
				<br>	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
			
				Adhar_Number:
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="adhar_no"  placeholder="adhar_no" 	 value="<%=rs.getString("adhar_no")%>">
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
			email_id:		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="email_id"  placeholder="email_id" 	 value="<%=rs.getString("email_id")%>">
					
				<br>	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					
			joining_date:		
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="joining_date"  placeholder="joining_date"  value="<%=rs.getString("joining_date")%>">
					
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
			Other_Document:		
							&nbsp;&nbsp;
					<input type ="text" name="other"  placeholder="other"		 value="<%=rs.getString("other")%>">
					
				<br>	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					
			Cast:		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="Cast"  placeholder="Cast" 		 value="<%=rs.getString("Cast")%>">
				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
			Religion:	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="Religion"  placeholder="Religion"		 value="<%=rs.getString("Religion")%>">
					
				<br>	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					
			Address:		
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					<input type ="text" name="address"  placeholder="address"		 value="<%=rs.getString("address")%>">
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
			Job_post:		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="job_post"  placeholder="job_post" 		 value="<%=rs.getString("job_post")%>">
					
				<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
			
			SSC_mark:		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="ssc_mark"  placeholder="ssc_mark"		  value="<%=rs.getString("ssc_mark")%>">
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
			SSC_board:
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="ssc_board"  placeholder="ssc_board" 		 value="<%=rs.getString("ssc_board")%>">
				
				<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
			HSC_mark:	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="hsc_mark"  placeholder="hsc_mark"		  value="<%=rs.getString("hsc_mark")%>">
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
			HSC_board:		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="hsc_board"  placeholder="hsc_board"		  value="<%=rs.getString("hsc_board")%>">
				
			<br>	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
			Graduation_mark:
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="graduation_mark"  placeholder="graduation_mark"  value="<%=rs.getString("graduation_mark")%>">
							
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
			Graduation_board:		
								&nbsp;&nbsp;
					<input type ="text" name="graduation_board"  placeholder="graduation_board"  value="<%=rs.getString("graduation_board")%>">
				
				<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
				Postgraduation_mark:
										
					<input type ="text" name="postgraduation_mark"  placeholder="postgraduation_mark"  value="<%=rs.getString("postgraduation_mark")%>">
										
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										
				Postgraduation_board:
					<input type ="text" name="postgraduation_board"  placeholder="postgraduation_board"  value="<%=rs.getString("postgraduation_board")%>">
					
				<br>
				
				<hr>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
				Other_education_details:	
					<input type ="text" name="other_education_details"  placeholder="other_education_details"  value="<%=rs.getString("other_education_details")%>">
				<hr>
				
				<br>
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				Other_education_marks:
										
					<input type ="text" name="other_education_marks"  placeholder="other_education_Mark"  value="<%=rs.getString("other_education_marks")%>">
				
				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
										
				Other_education_board:
					<input type ="text" name="other_education_board"  placeholder="other_education_board"  value="<%=rs.getString("other_education_board")%>">
				
				<br>
					
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Garantor:	
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="garantor"  		placeholder="garantor"  value="<%=rs.getString("garantor")%>">
					
				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
					
				Authentic:	
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
					<input type ="text" name="authentic"  		placeholder="authentic"  value="<%=rs.getString("authentic")%>"/n"">
					
					<br>
					      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Inheritor:	
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="inheritor"  		placeholder="inheritor"  value="<%=rs.getString("inheritor")%>">
					
				
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;					
				Address_of_inheritor:	
										 &nbsp;&nbsp;&nbsp;
					<input type ="text" name="address_of_inheritor"  placeholder="address_of_inheritor"  value="<%=rs.getString("address_of_inheritor")%>">
					
					<br>
					                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Relation_with_inheritor:	
											
					<input type ="text" name="relation_with_inheritor"  placeholder="relation_with_inheritor"  value="<%=rs.getString("relation_with_inheritor")%>">
				
				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				
				Joining_place:
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type ="text" name="joining_place"  placeholder="joining_place"  value="<%=rs.getString("joining_place")%>">
					
				<br>
				</br>	
				
				
				<center>
				<input type="submit" value="update">
				</center>
				
			</form>
		   </centre>	
		</h5>	
	  </div>
	  <%
	}
}catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
</body>
</html>