package exam.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");	//<-이게 있어야 BR태그가 됨, 한글이 안깨짐
		String n = request.getParameter("t");	//넘어오는 이름을 맞춰야되
		
		PrintWriter out = response.getWriter();	//내장객체가 없기 때문에 writer라는 별도의 메소드를 사용해야됨
		out.println(n);
		
		String m = request.getParameter("p");	//request는 리턴타입이 String
		String s = request.getParameter("gender");
		//getParameter를 써서 submit버튼을 누르면 값이 넘어오게함
		out.println(m);
		out.println("gender");
		
		String color = request.getParameter("mycolor");
		
		out.println("<font color='"+color+"'>"+color+"</font>");	//font color 속성에 color라는 변수를 넣어줌
		
		String mail = request.getParameter("email");
		
		out.println(mail);
		
		String[] hobby = request.getParameterValues("ball"); //리턴타입이 String 배열
		
		if(hobby == null)
			out.println("선택을 하고 누르세요");
		else{
			out.println(hobby.length + "개 선택!");
			
			for(int i=0; i<hobby.length;i++)
				out.println(hobby[i] + "<br>");
			
		}
		
		String subject = request.getParameter("lang");
		out.println(subject+"<br>");
		
		String area = request.getParameter("tx");
		out.println(area+"<br>");
		
		//값 하나만 넘어오는거는 getParameter!!!!!
		//여러개는 request.getParameterValues!!!!
		
		out.close();           //출력stream닫기
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
