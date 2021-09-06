<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All CSP</title>
<meta name="viewpart" content="width=device-width",initial-scale="1.0">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
</head>
<body>
<body>
	<%
		try
				{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("select * from pigmydetail1 order by id");
					while(rs.next())
				{
	%>
	
	<table  align="center" border="1" width="100" style="width: 100%" class="table table-dark" >
	<tbody>
				<tr>
						<th width="25%">id</th>
						<th width="25%"> Branch_name </th>
						<th width="25%"> first_name </th>
						<th width="25%"> middel_name </th>
						<th width="25%"> last_name </th>
						<th width="25%"> birth_date </th>
						<th width="25%"> mobile_number </th>
						<th width="25%"> pan_no </th>
						<th width="25%"> adhar_no </th>
						<th width="25%"> email_id </th>
						<th width="25%"> joining_date </th>
						<th width="25%"> other </th>
						
						<th width="25%">cast </th>
						<th width="25%"> religion </th>

						<th width="25%">address </th>
						<th width="25%">job_post </th>
						<th width="25%"> ssc_mark </th>
						<th width="25%"> ssc_board </th>
						<th width="25%"> hsc_mark </th>
						<th width="25%"> hsc_board </th>
						<th width="25%"> graduation_mark </th>
						<th width="25%"> graduation_board </th>
						<th width="25%"> postgraduation_mark  </th>
						<th width="25%"> postgraduation_board  </th>
						<th width="25%"> other_education_details </th>
						<th width="25%"> other_education_marks </th>
						<th width="25%"> other_education_board </th>
						<th width="25%">garantor</th>
						<th width="25%"> Authentic </th>
						<th width="25%"> inheritor </th>
						<th width="25%"> Address_of_inheritor </th>
						<th width="25%"> Relation_inheritor </th>
						<th width="25%"> Joining_place </th>


						
				</tr>
	
	
	
	
	<td width="25%"><%=rs.getString(1) %></td>
	
	<td width="25%"><%=rs.getString(33) %></td>
	
	<td width="25%"><%=rs.getString(2) %></td>
	<td width="25%"><%=rs.getString(3) %></td>
	<td width="25%"><%=rs.getString(4) %></td>
	<td width="25%"><%=rs.getString(5) %></td>
	<td width="25%"><%=rs.getString(6) %></td>
	<td width="25%"><%=rs.getString(7) %></td>
	<td width="25%"><%=rs.getString(8) %></td>
	<td width="25%"><%=rs.getString(9) %></td>
	<td width="25%"><%=rs.getString(10) %></td>
	<td width="25%"><%=rs.getString(11) %></td>
	<td width="25%"><%=rs.getString(12) %></td>
	<td width="25%"><%=rs.getString(13) %></td>
	<td width="25%"><%=rs.getString(14) %></td>
	<td width="25%"><%=rs.getString(15) %></td>
	<td width="25%"><%=rs.getString(16) %></td>
	<td width="25%"><%=rs.getString(17) %></td>
	<td width="25%"><%=rs.getString(18) %></td>
	<td width="25%"><%=rs.getString(19) %></td>
	<td width="25%"><%=rs.getString(20) %></td>
	<td width="25%"><%=rs.getString(21) %></td>
	<td width="25%"><%=rs.getString(22) %></td>
	<td width="25%"><%=rs.getString(23) %></td>
	<td width="25%"><%=rs.getString(24) %></td>
	<td width="25%"><%=rs.getString(25) %></td>
	<td width="25%"><%=rs.getString(26) %></td>
	<td width="25%"><%=rs.getString(27) %></td>
	<td width="25%"><%=rs.getString(28) %></td>
	<td width="25%"><%=rs.getString(29) %></td>
	<td width="25%"><%=rs.getString(30) %></td>
	<td width="25%"><%=rs.getString(31) %></td>
	<td width="25%"><%=rs.getString(32) %></td>
	

	
	<td>
	<a href='Edit_Agent.jsp?id=<%=rs.getString("id") %>'>Edit</a>
	</td>
	
	<%-- 
	<td>
	<a href='Final_Delete_Employee.jsp?id=<%=rs.getString("id") %>'>Delete</a>
	</td>
	--%>
	</tr>
	</tbody>	
	</table>
	<%
}
}  catch(Exception e)
	{
	e.printStackTrace();
	}

	%>
</body>

</body>
</html>