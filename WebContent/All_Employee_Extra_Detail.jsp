<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Employee Extra Detail</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<%
		try
				{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("select * from extradetail1  ");
					while(rs.next())
				{
	%>

<table align="center" border="1" width="100" style="width: 100%" class="table table-dark">
	<tbody>
				<tr>
						<th width="25%">Employee_Id </th>
						<th width="25%"> first_name  </th>
						<th width="25%"> middel_name  </th>
						<th width="25%"> last_name  </th>
						<th width="25%"> Insurance_Type  </th>
						<th width="25%"> insurance_company  </th>
						<th width="25%"> insurance_validity  </th>
						<th width="25%"> insurance_amount  </th>
						<th width="25%"> Maturity_Amount  </th>
						<th width="25%"> Insurance_Number  </th>
						<th width="25%"> Joining_Place  </th>
						<th width="25%">joining_date  </th>
						<th width="25%"> position  </th>
						<th width="25%">payment  </th>
						<th width="25%">Pramotion_Date1  </th>
						<th width="25%"> Working_Place1  </th>
						<th width="25%"> Position1  </th>
						<th width="25%"> payment1  </th>
						<th width="25%"> pramotion_date2  </th>
						<th width="25%"> working_place2  </th>
						<th width="25%"> Position2   </th>
						<th width="25%"> payment2   </th>
						<th width="25%"> Name_Of_Bank  </th>
						<th width="25%"> Branch_IFSC_Code  </th>
						<th width="25%"> Account_No  </th>
						<th width="25%">JKM_Account_NO </th>
						<th width="25%"> pramotion_date3  </th>
						<th width="25%"> working_place3  </th>
						<th width="25%"> Payment3 </th>
						<th width="25%"> Position3  </th>
						<th width="25%"> payment3  </th>
						<th width="25%"> pramotion_date4  </th>
						<th width="25%"> working_place4  </th>
						<th width="25%"> Position4  </th>
						<th width="25%">payment4 </th>
						<th width="25%"> pramotion_date5  </th>
						<th width="25%"> working_place5  </th>
						<th width="25%"> Position5  </th>
						<th width="25%"> payment5  </th>
						
						<th width="25%"> pramotion_date6  </th>
						<th width="25%"> working_place6  </th>
						<th width="25%"> Position6  </th>
						<th width="25%"> payment6  </th>
					
						<th width="25%"> pramotion_date7   </th>
						<th width="25%"> working_place7   </th>
						<th width="25%"> Position7   </th>
						<th width="25%"> payment7   </th>
						
				</tr>
	
	
	
	
	<td width="25%"><%=rs.getString(1) %></td>	
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
	<td width="25%"><%=rs.getString(33) %></td>
	<td width="25%"><%=rs.getString(34) %></td>
	<td width="25%"><%=rs.getString(35) %></td>
	<td width="25%"><%=rs.getString(36) %></td>
	<td width="25%"><%=rs.getString(37) %></td>
	<td width="25%"><%=rs.getString(38) %></td>
	<td width="25%"><%=rs.getString(39) %></td>
	<td width="25%"><%=rs.getString(40) %></td>
	<td width="25%"><%=rs.getString(41) %></td>
	<td width="25%"><%=rs.getString(42) %></td>
	<td width="25%"><%=rs.getString(43) %></td>
	<td width="25%"><%=rs.getString(44) %></td>
	<td width="25%"><%=rs.getString(45) %></td>
	<td width="25%"><%=rs.getString(46) %></td>
	<td width="25%"><%=rs.getString(47) %></td>
	<td width="25%"><%=rs.getString(48) %></td>
		

	
	<td>
	<a href='Edit_Employee_Extra_Detail.jsp?Employee_Id=<%=rs.getString("Employee_Id") %>'>Edit</a>
	</td>
	
	<%-- 
		<td>
		<a href='Final_Delete_Employee_extra.jsp?id=<%=rs.getString("id") %>'>Delete</a>
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
</body>
</html>