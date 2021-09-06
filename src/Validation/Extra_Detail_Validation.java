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
 * Servlet implementation class Extra_Detail_Validation
 */
@WebServlet("/Extra_Detail_Validation")
public class Extra_Detail_Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		
		String Employee_Id=request.getParameter("Employee_Id");
		String First_name =request.getParameter("First_name");
		String Middel_name= request.getParameter("Middel_name");
		String Last_name= request.getParameter("Last_name");
		String Insurance_Type= request.getParameter("Insurance_Type");
		String Insurance_Company= request.getParameter("Insurance_Company");
		String Insurance_Validity= request.getParameter("Insurance_Validity");
		String Insurance_Amount= request.getParameter("Insurance_Amount");
		String Maturity_Amount= request.getParameter("Maturity_Amount");
		String Insurance_Number= request.getParameter("Insurance_Number");
		String Joining_Place= request.getParameter("Joining_Place");
		String Joining_Date= request.getParameter("Joining_Date");
		String Position= request.getParameter("Position");
		String Payment= request.getParameter("Payment");
		String Pramotion_Date1= request.getParameter("Pramotion_Date1");
		String Working_Place1= request.getParameter("Working_Place1");
		String Position1= request.getParameter("Position1");
		String Payment1= request.getParameter("Payment1");
		
		String Pramotion_Date2= request.getParameter("Pramotion_Date2");
		String Working_Place2= request.getParameter("Working_Place2");
		String Position2= request.getParameter("Position2");
		String Payment2= request.getParameter("Payment2");
	

					
		String Name_Of_Bank= request.getParameter("Name_Of_Bank");
		String Branch_IFSC_Code= request.getParameter("Branch_IFSC_Code");
		String Account_No= request.getParameter("Account_No");
		String JKM_Account_No= request.getParameter("JKM_Account_No");
		
		
		String Pramotion_Date3= request.getParameter("Pramotion_Date3");
		String Working_Place3= request.getParameter("Working_Place3");
		String Position3= request.getParameter("Position3");
		String Payment3= request.getParameter("Payment3");

		String Pramotion_Date4= request.getParameter("Pramotion_Date4");
		String Working_Place4= request.getParameter("Working_Place4");
		String Position4= request.getParameter("Position4");
		String Payment4= request.getParameter("Payment4");

		String Pramotion_Date5= request.getParameter("Pramotion_Date5");
		String Working_Place5= request.getParameter("Working_Place5");
		String Position5= request.getParameter("Position5");
		String Payment5= request.getParameter("Payment5");

		String Pramotion_Date6= request.getParameter("Pramotion_Date6");
		String Working_Place6= request.getParameter("Working_Place6");
		String Position6= request.getParameter("Position6");
		String Payment6= request.getParameter("Payment6");

		String Pramotion_Date7= request.getParameter("Pramotion_Date7");
		String Working_Place7= request.getParameter("Working_Place7");
		String Position7= request.getParameter("Position7");
		String Payment7= request.getParameter("Payment7");
		


		
		 try {
			 
				/* Class.forName("com.mysql.jdbc.Driver");
	 			
	 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "root");*/
	 			
			 
     	 Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "prashant");
			
			System.out.println("Oracle Connection Successful....");
	            
			//Statement stmt = con.createStatement();
			System.out.println("1");
			
			PreparedStatement pst = con.prepareStatement("insert into extradetail1 "
					+ "(Employee_id,first_name,middel_name,last_name,Insurance_type,Insurance_company,Insurance_validity,Insurance_amount,maturity_amount,Insurance_number,joining_place,joining_date,position,payment,pramotion_date1,working_place1,Position1,payment1,pramotion_date2,working_place2,Position2,payment2,Name_Of_Bank,Branch_IFSC_Code,Account_No,JKM_Account_No,pramotion_date3,working_place3,Position3,payment3,pramotion_date4,working_place4,Position4,payment4,pramotion_date5,working_place5,Position5,payment5,pramotion_date6,working_place6,Position6,payment6,pramotion_date7,working_place7,Position7,payment7)"
					+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  

			
		//	PreparedStatement pst = con.prepareStatement("insert into Emp_Extra "
		//			+ "(Employee_id,first_name,middel_name,last_name,Insurance_type,Insurance_company,Insurance_validity,Insurance_amount,maturity_amount,Insurance_number,joining_place,joining_date,position,payment,pramotion_date1,working_place1,Position1,payment1,pramotion_date2,working_place2,Position2,payment2,pramotion_date3,working_place3,Position3,payment3,pramotion_date4,working_place4,Position4,payment4,pramotion_date5,working_place5,Position5,payment5,pramotion_date6,working_place6,Position6,payment6,pramotion_date7,working_place7,Position7,payment7)"
		//			+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  

					
  //	ResultSet rs = stmt.executeQuery("select * from personaldetail where id='"+employee_id+"' or first_name='"+employee_firstname+"' or last_name='"+employee_lastname+"'");
  	System.out.println("2");
  	
	pst.setString(1,Employee_Id);
	pst.setString(2,First_name);
	pst.setString(3,Middel_name);
	pst.setString(4,Last_name);
	pst.setString(5,Insurance_Type);
	pst.setString(6,Insurance_Company);
	pst.setString(7,Insurance_Validity);
	pst.setString(8,Insurance_Amount);
	pst.setString(9,Maturity_Amount);
	pst.setString(10,Insurance_Number);
	pst.setString(11,Joining_Place);
	pst.setString(12,Joining_Date);
	pst.setString(13,Position);
	pst.setString(14,Payment);
	pst.setString(15,Pramotion_Date1);
	pst.setString(16,Working_Place1);
	pst.setString(17,Position1);
	pst.setString(18,Payment1);
	pst.setString(19,Pramotion_Date2);
	pst.setString(20,Working_Place2);
	pst.setString(21,Position2);
	pst.setString(22,Payment2);
	
	pst.setString(23,Name_Of_Bank);
	pst.setString(24,Branch_IFSC_Code);
	pst.setString(25,Account_No);
	pst.setString(26,JKM_Account_No);
	
	
	pst.setString(27,Pramotion_Date3);
	pst.setString(28,Working_Place3);
	pst.setString(29,Position3);
	pst.setString(30,Payment3);
	pst.setString(31,Pramotion_Date4);
	pst.setString(32,Working_Place4);
	pst.setString(33,Position4);
	pst.setString(34,Payment4);
	pst.setString(35,Pramotion_Date5);
	pst.setString(36,Working_Place5);
	pst.setString(37,Position5);
	pst.setString(38,Payment5);
	pst.setString(39,Pramotion_Date6);
	pst.setString(40,Working_Place6);
	pst.setString(41,Position6);
	pst.setString(42,Payment6);
	pst.setString(43,Pramotion_Date7);
	pst.setString(44,Working_Place7);
	pst.setString(45,Position7);
	pst.setString(46,Payment7);
	
/*	pst.setString(23,Pramotion_Date3);
	pst.setString(24,Working_Place3);
	pst.setString(25,Position3);
	pst.setString(26,Payment3);
	pst.setString(27,Pramotion_Date4);
	pst.setString(28,Working_Place4);
	pst.setString(29,Position4);
	pst.setString(30,Payment4);
	pst.setString(31,Pramotion_Date5);
	pst.setString(32,Working_Place5);
	pst.setString(33,Position5);
	pst.setString(34,Payment5);
	pst.setString(35,Pramotion_Date6);
	pst.setString(36,Working_Place6);
	pst.setString(37,Position6);
	pst.setString(38,Payment6);
	pst.setString(39,Pramotion_Date7);
	pst.setString(40,Working_Place7);
	pst.setString(41,Position7);
	pst.setString(42,Payment7);
	
*/
	
	System.out.println("3");
	
	
	int i=pst.executeUpdate();
	
	 {
		  response.sendRedirect("Employee.jsp");
	  }
	 
	 
	 System.out.println("Add Extra Detail Successfully?msg=  "+Employee_Id+"  "+First_name+"  "+Middel_name+"   "+Last_name+"  ");
	 
		System.out.println("Execute Successfully");
		
		con.close();
		
	}
		 
		 catch (Exception e)
		 
		 {
			e.printStackTrace();
		 }	
		
	}

}
