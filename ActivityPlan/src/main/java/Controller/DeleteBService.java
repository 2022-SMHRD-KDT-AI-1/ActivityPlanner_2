package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDTO;
import Model.MyActingDAO;

public class DeleteBService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 즐겨찾기한 대외활동 삭제
		System.out.println("[DeleteBService]");
		
		int act_seq = Integer.parseInt(request.getParameter("act_seq"));
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		MyActingDAO dao = new MyActingDAO();
		int cnt = dao.deleteBookmark(act_seq);
		
		if(cnt > 0 ) {
			System.out.println("즐겨찾기한 대외활동 개별 삭제 성공!");
		}else {
			System.out.println("즐겨찾기 대외활동 개별 삭제 실패!");
		}
		response.sendRedirect("cal.jsp?user_id="+info.getUser_id());
	}

}
