package exam.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//SQL문을 사용하기 위한 준비
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con = null; //예외처리로 인해서 인위적으로 초기화시킴
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		//연결주소,아이디,패스워드
		
		PreparedStatement pstmt = null;
		
		String sql = "select * from member";
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
	
		//SQL문 실행
		
		try {
			pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			out.print("<table border=1>");
			while(rs.next() == true){
				
				
				out.print("<tr>");
				
				out.print("<td>"+rs.getString("id")+"</td>");
				out.print("<td>"+rs.getString("pass"+"</td>"));
				
				out.print("</tr>");
				
				out.print(rs.getString("name"));
				out.print("<td>"+rs.getInt("age")+"</td>");
				out.print(rs.getString("gender"));
				out.print(rs.getString("addr"));
				
				out.print("<br>");
				
			}
			out.print("</table>");
			//내가 보고자하는 행 갯수 만큼 해줘야됨
			//얼마나 더 써야할지 모르므로 반복문
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
