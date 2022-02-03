package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberDTO;

public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[LoginService]");
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");

		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		// login메소드가 있는 MemberDAO 호출
		MemberDAO dao = new MemberDAO();
		// 입력 받아온 email,pw를 dto로 만들어주기
		MemberDTO dto = new MemberDTO(id, pw);
		// email, pw, tel, addr 4개를 받는 dto 생성
		MemberDTO info = dao.login(dto);

		if (info != null) {
			System.out.println("로그인 성공");

			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			// response.sendRedirect("C:/Users/smhrd/Desktop/WebStudy/test/WebContent/회원정보수정.html");
		} else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("main.html");

	}

}
