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
@WebServlet("*.first")
	//어노테이션
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
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		//여기서 response는 doGet의 매개변수의 이름과 일치하여야 함.
		//getter 메소드는 매개변수 없고, 리턴타입 있다. 
		//get 커서 올려서 처음 나오는게 리턴타입
		
		out.print("Hello");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
