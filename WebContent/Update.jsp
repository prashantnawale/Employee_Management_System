<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

</head>

	<%--	HttpSession session2=request.getSession(true);  
        String un=(String)session2.getAttribute("uname");  
        out.print("Hello "+un);  --%>


<body>
<form action="Edit_Servlet" method="post">
user_name:<input type='text' name='uname' required>
Password:<input type='text' name='Pass'>
Con_Password:<input type='text' name='CPass'>
<input type="submit" value='update'>


		
</body>
</html>