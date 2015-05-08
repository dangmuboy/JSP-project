package exam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import exam.dto.Member;

public class MemberDAO {
	
	//생성자
	public MemberDAO(){
		System.out.println("생성자");
		
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
		}
	
	
	//회원가입
	public void insertMember(Member member){
		System.out.println("회원가입");
		String sql = "insert into member values(?,?,?,?,?,?,default)";
		
	}
	
	
	
	//회원삭제
	public void deleteMember(){
		System.out.println("회원삭제");
		
	}

}
