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
 * Servlet implementation class Add_Details_Agent_validation
 */
@WebServlet("/Add_Details_Agent_validation")
public class Add_Details_Agent_validation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
PrintWriter pw=response.getWriter();
		
String Branch_Name =request.getParameter("Branch_Name");
		String first_name =request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String middel_name= request.getParameter("middel_name");
		String birth_date= request.getParameter("birth_date");
		String mobile_number = request.getParameter("mobile_number");
		String pan_number = request.getParameter("pan_number");
		String adhar_number = request.getParameter("adhar_number");
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
		String other_education_mark = request.getParameter("other_education_Mark");
		String other_education_board = request.getParameter("other_education_board");
		String garantor = request.getParameter("guarantor");
		String authentic = request.getParameter("authentic");
		String inheritor = request.getParameter("inheritor");
		String address_of_inheritor = request.getParameter("address_of_inheritor");
		String relation_with_inheritor = request.getParameter("relation_with_inheritor");
		String joining_place  = request.getParameter("joining_place ");
		String Cast = request.getParameter("Cast");
		String Religion = request.getParameter("Religion");
		String Name_Of_Bank= request.getParameter("Name_Of_Bank");
		String Branch_IFSC_Code= request.getParameter("Branch_IFSC_Code");
		String Account_No= request.getParameter("Account_No");
		String JKM_Account_No= request.getParameter("JKM_Account_No");
			

			
		 try {
			 
				/* Class.forName("com.mysql.jdbc.Driver");
	 			
	 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "root");*/
	 			
			 
        	 Class.forName("oracle.jdbc.driver.OracleDriver");
 			
 			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "prashant");
 			
 			System.out.println("Oracle Connection Successful....");
	            
 			//Statement stmt = con.createStatement();
 			System.out.println("1");
 			
			PreparedStatement pst = con.prepareStatement("insert into pigmydetail1 "
					+ "(id,first_name,last_name,middel_name,birth_date,mobile_number,pan_no,adhar_no,Name_Of_Bank,Branch_IFSC_Code,Account_No,JKM_Account_No,email_id,joining_date,other,address,job_post,ssc_mark,ssc_board,hsc_mark,hsc_board,graduation_mark,graduation_board,postgraduation_mark,postgraduation_board,other_education_details,other_education_marks,other_education_board,garantor,authentic,inheritor,address_of_inheritor,relation_with_inheritor,joining_place,cast,religion,Branch_Name)"
					+"values(id.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");                                                                                                                                                                                                                                   

 					
     //	ResultSet rs = stmt.executeQuery("select * from personaldetail where id='"+employee_id+"' or first_name='"+employee_firstname+"' or last_name='"+employee_lastname+"'");
     	System.out.println("2");



     
		pst.setString(1,first_name);
		pst.setString(2,last_name);
		pst.setString(3,middel_name);
		pst.setString(4,birth_date);
		pst.setString(5,mobile_number);
		pst.setString(6,pan_number);
		pst.setString(7,adhar_number);
		

		pst.setString(8,Name_Of_Bank);
		pst.setString(9,Branch_IFSC_Code);
		pst.setString(10,Account_No);
		pst.setString(11,JKM_Account_No);
		pst.setString(12,email_id);
		pst.setString(13,joining_date);
		pst.setString(14,other);
		pst.setString(15,address);
		pst.setString(16,job_post);
		pst.setString(17,ssc_mark);
		pst.setString(18,ssc_board);
		pst.setString(19,hsc_mark);
		pst.setString(20,hsc_board);
		pst.setString(21,graduation_mark);
		pst.setString(22,graduation_board);
		pst.setString(23,postgraduation_mark);
		pst.setString(24,postgraduation_board);
		pst.setString(25,other_education_details);
		pst.setString(26,other_education_mark);
		pst.setString(27,other_education_board);
		pst.setString(28,garantor);
		pst.setString(29,authentic);	
		pst.setString(30,inheritor);
		pst.setString(31,address_of_inheritor);
		pst.setString(32,relation_with_inheritor);
		pst.setString(33,joining_place );
		pst.setString(34,Cast);
		pst.setString(35,Religion);
		pst.setString(36, Branch_Name);
		
		
		
		System.out.println("3");
		//response.sendRedirect("search_employee.jsp?");
		
	//	int count = pst.executeUpdate();
	//	System.out.println("Count : " + count);

		 int i=pst.executeUpdate();
	//	 System.out.println("entry :+i");
  
  {
	  response.sendRedirect("Pigmy_Agent.jsp");
  }
		
  		System.out.println("Add Pigmy Agent detail Successfully");
  
  		System.out.println("Add Pigmy Agent Detail Successfully?msg=  "+first_name+"  "+last_name+"  "+middel_name+" ");
  
		System.out.println("Execute Successfully");
		
		con.close();
		
	}
	catch(Exception ex) {
		ex.printStackTrace();
	}
		
	}

}
