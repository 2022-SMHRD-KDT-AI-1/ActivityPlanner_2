package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// import org.apache.catalina.tribes.util.Arrays;
import java.util.*;

import Model.MemberDAO;
import Model.MemberDTO;

public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[JoinService]");

		// 1. post방식 > 인코딩
		request.setCharacterEncoding("UTF-8");
		// loginId , loginPw, name, cellphoneNo, gender, nickname, inp_s, birth2
		// 2. 데이터 가져오기
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		String tel = request.getParameter("cellphoneNo");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String nickname = request.getParameter("nickname");
		String[] major = request.getParameterValues("majors");
		String birth = request.getParameter("birth");

		String major_pick = Arrays.toString(major);

		// MemberDTO dto = new MemberDTO(id,pw,nickname,tel,gender,birth,major);
		MemberDTO dto = new MemberDTO(id, pw, nickname, tel, gender, birth, name, major_pick);
		// 2-1. 데이터를 잘 가져왔는지 console창에 출력해보기
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		System.out.println("tel : " + tel);
		System.out.println("nickname : " + nickname);
		System.out.println("name : " + name);
		System.out.println("birthday : " + birth);
		System.out.println("gender: " + gender);
//		System.out.println("major: "+Arrays.toString(major));
		System.out.println("major: " + major_pick);

		// 3. DB에 값 넣기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.signUp(dto);

		// 4. 실행결과에 따라서 다른 페이지 출력하기
		if (cnt > 0) {
			System.out.println("회원가입 성공");

			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getUser_id());
			
		} else {
			System.out.println("회원가입 실패");
			// response.sendRedirect("main.jsp");
		}
		
		response.sendRedirect("login.jsp");
	}
}
