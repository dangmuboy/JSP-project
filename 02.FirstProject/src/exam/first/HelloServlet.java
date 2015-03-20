package exam.first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
	//URL Mapping ; 원래 서버쪽으로 요청할때 URL을 적어야 되는데 
	//서비스를 구분해줄때 쓰는게 URL Mapping
	
	//원래 URL치고 들어가면 lib 하위 web.xml(welcome어쩌구)를 먼저 찾아가는데
	//어노테이션을 붙여서 이페이지를 찾아오게끔 만듬
	///Hello 대신에 "/a.first" 해도 같은효과 = "*.first"  => URL Mapping	




	//http://search.naver.com/search.naver?where=nexearch&query=%EC%84%9C%EC%A0%95%ED%9D%AC&sm=top_hty&fbm=0&ie=utf8
		//get 방식 	? 하위가 데이터;넘겨주는 / &이름 &이름 &이름 -> 넘겨주는 데이터들
		//get 방식의 UML은 외부에 노출됨, 255자 까지 밖에 안됨. 따라서 게시판도 post방식으로 -> jsp 코딩을
		//그래서 로그인같은 외부에 노출되며 안되는 방식은 post방식을 사용; request할때 -> jsp 코딩을
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        //부모생성자 호출
        // TODO Auto-generated constructor stub
        //클라이언트가 서버쪽으로 request 하면 자동으로 'new'하는 효과-> 생성자 호출 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		PrintWriter out = response.getWriter();
		//여기서 response는 doGet의 매개변수의 이름과 일치하여야 함.
		//getter 메소드는 매개변수 없고, 리턴타입 있다. 
		//get 커서 올려서 처음 나오는게 리턴타입
		
		
		String n = request.getParameter("name");
		//요청하는것 중에서 파라미터로 넘어오는애들(3개)중 name으로 넘어오는애
		//String name은 리턴타임; parameter에 마우스 올려놓으면 보임
		//페이지에서 name 타입에 넘어오는 애들을 왼쪽 String name에 대입 ★★★★★★★★★
		//왼쪽 변수 name은 out.print 매개변수랑 일치시켜야됨 ★★★★★★★★★★
		String i = request.getParameter("ID");
		String p = request.getParameter("pwd");
		request.getParameter("pwd");
		
		out.print("<html>");
		out.println("Hello-GET<br>");
		out.println("이름 : "+ n + "<br>" );
		out.println("ID : "+ i + "<br>");
		out.println("password : " + p + "<br>");
		out.print("</html>");
		
		//br태그 적용하기	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//get방식으로 요청 -> doGet 호출
		//post방식으로 요청 -> doPost 호출
		
		// TODO Auto-generated method stub
				
				//한글처리
				request.setCharacterEncoding("UTF-8");
				//클라이언트
				response.setContentType("text/html; charset=UTF-8");
				//서버
				
				PrintWriter out = response.getWriter();
				//응답헤더
				
				String n = request.getParameter("name");
				String i = request.getParameter("ID");
				String p = request.getParameter("pwd");
				request.getParameter("pwd");
				
				//out.print("<html>");
				out.println("Hello-POST<br>");
				out.println("이름 : "+ n + "<br>" );
				out.println("ID : "+ i + "<br>");
				out.println("password : " + p + "<br>");
				//out.print("</html>");
	}

}
