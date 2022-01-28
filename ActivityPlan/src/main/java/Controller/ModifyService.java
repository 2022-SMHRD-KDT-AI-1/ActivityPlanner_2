package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.tribes.util.Arrays;
import java.util.*;

import Model.MemberDAO;
import Model.MemberDTO;

public class ModifyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[ModifyService]");

		String pw = request.getParameter("newPw");
		String nickname = request.getParameter("newNickname");
		String[] majors = request.getParameterValues("newMajors");

		String major_pick = Arrays.toString(majors);

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		// 아이디를 기준으로 정보 업데이트
		String id = info.getUser_id();

		info = new MemberDTO(id, pw, nickname, major_pick);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.modify(info);

		if (cnt > 0) {
			System.out.println("회원정보 수정 성공");

			// 성공하면 session 갱신
			session.setAttribute("info", info);
		} else {
			System.out.println("회원정보 수정 실패");
		}
		response.sendRedirect("login.html");
	}
}
