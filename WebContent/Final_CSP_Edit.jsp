<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit CSP</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
<% 
				String id=request.getParameter("id");
				String Branch_name=request.getParameter("Branch_name");
				String first_name=request.getParameter("first_name");
				String last_name= request.getParameter("last_name");
				String middel_name= request.getParameter("middel_name");
				String birth_date= request.getParameter("birth_date");
				String mobile_number = request.getParameter("mobile_number");
				String pan_no = request.getParameter("pan_no");
				String adhar_no = request.getParameter("adhar_no");
				String email_id = request.getParameter("email_id");
				String joining_date = request.getParameter("joining_date");
				String other = request.getParameter("other");
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
				String other_education_marks = request.getParameter("other_education_marks");
				String other_education_board = request.getParameter("other_education_board");
				String garantor = request.getParameter("garantor");
				String authentic = request.getParameter("authentic");
				String inheritor = request.getParameter("inheritor");
				String address_of_inheritor = request.getParameter("address_of_inheritor");
				String relation_with_inheritor = request.getParameter("relation_with_inheritor");
				String joining_place = request.getParameter("joining_place");
				String Cast = request.getParameter("Cast");
				String Religion = request.getParameter("Religion");
		
				
				
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
				PreparedStatement ps=con.prepareStatement("Update cspdetail1 set Branch_name=?, first_name=?, last_name=?, middel_name=?, birth_date=?, mobile_number=?, pan_no=?, adhar_no=?, email_id=?, joining_date=?, other=?, address=?, job_post=?, ssc_mark=?, ssc_board=?, hsc_mark=?,hsc_board=?, graduation_mark=?, graduation_board=?, postgraduation_mark=?,postgraduation_board=?,other_education_details=?, other_education_marks=?, other_education_board=?, garantor=?, authentic=?, inheritor=?, address_of_inheritor=?, relation_with_inheritor=?, joining_place=?, Cast=?, Religion=? where id=?");
			
			
				
			
				ps.setString(33,id);
				
				ps.setString(32,Religion);
				
				ps.setString(31,Cast);
				ps.setString(30,joining_place);
				ps.setString(29,relation_with_inheritor);
				
				ps.setString(28,address_of_inheritor);
				ps.setString(27,inheritor);
				ps.setString(26,authentic);
				ps.setString(25,garantor);
				ps.setString(24,other_education_board);
				ps.setString(23,other_education_marks);
				ps.setString(22,other_education_details);
				ps.setString(21,postgraduation_board);
				ps.setString(20,postgraduation_mark);
				ps.setString(19,graduation_board);
				ps.setString(18,graduation_mark);
				ps.setString(17,hsc_board);
				ps.setString(16,hsc_mark);
				ps.setString(15,ssc_board);
				ps.setString(14,ssc_mark);
				ps.setString(13,job_post);
				ps.setString(12,address);
				ps.setString(11,other);
				ps.setString(10,joining_date);
				ps.setString(9,email_id);
				ps.setString(8,adhar_no);
				ps.setString(7,pan_no);
				ps.setString(6,mobile_number);
				ps.setString(5,birth_date);
				ps.setString(4,middel_name);
				ps.setString(3,last_name);
				ps.setString(2,first_name);
				ps.setString(1,Branch_name);
				
				
				
				int i=ps.executeUpdate();
				
				
				
				if(i>0)
				{
					response.sendRedirect("CSP.jsp");
				}
				
				else
				{
					response.sendRedirect("Error.jsp");
				}
				
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}

		%>
</body>
</html>