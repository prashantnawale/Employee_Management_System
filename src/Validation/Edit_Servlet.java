package Validation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit_Servlet
 */
@WebServlet("/Edit_Servlet")
public class Edit_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		pw.print("Prashant");
		
		String uname =request.getParameter("uname");
		String Pass =request.getParameter("Pass");
		String CPass= request.getParameter("CPass");
		
		
		 try {
			 
				/* Class.forName("com.mysql.jdbc.Driver");
	 			
	 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "root");*/
	 			
			 
     	 Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "prashant");
			
			System.out.println("Oracle Connection Successful....");
	            
			//Statement stmt = con.createStatement();
			System.out.println("1");
			
			
			PreparedStatement pst = con.prepareStatement("update logo set username=? , Password=? , CPassword=?  where Username='"+uname+"' ");
				//	+ "(id,first_name,last_name,middel_name,birth_date,mobile_number,pan_no,adhar_no,email_id,joining_date,other,address,job_post,ssc_mark,ssc_board,hsc_mark,hsc_board,graduation_mark,graduation_board,postgraduation_mark,postgraduation_board,other_education_details,other_education_marks,other_education_board,garantor,authentic,inheritor,address_of_inheritor,relation_with_inheritor,joining_place,cast,religion,Branch_Name)"
					;
			
	/*		PreparedStatement pst = con.prepareStatement("insert into employeedetail "
					+ "(id,first_name,last_name,middel_name,birth_date,mobile_number,pan_no,adhar_no,email_id,joining_date,other,address,job_post,ssc_mark,ssc_board,hsc_mark,hsc_board,graduation_mark,graduation_board,postgraduation_mark,postgraduation_board,other_education_details,other_education_marks,other_eduction_board,garantor,authentic,inheritor,address_of_inheritor,relation_with_inheritor,joining_place)"
					+"values(id.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	 */
					
  //	ResultSet rs = stmt.executeQuery("select * from personaldetail where id='"+employee_id+"' or first_name='"+employee_firstname+"' or last_name='"+employee_lastname+"'");
  	System.out.println("2");



  
		pst.setString(1,uname);
		pst.setString(2,Pass);
		pst.setString(3,CPass);
	
		
		System.out.println("3");
		//response.sendRedirect("search_employee.jsp?");
		
	//	int count = pst.executeUpdate();
	//	System.out.println("Count : " + count);

		 int i=pst.executeUpdate();
	//	 System.out.println("entry :+i");

{
	  response.sendRedirect("Update.jsp");
}
		
		System.out.println("Execute Successfully");
		
		con.close();
		
	}
	catch(Exception ex) {
		ex.printStackTrace();
	}
	}

}
