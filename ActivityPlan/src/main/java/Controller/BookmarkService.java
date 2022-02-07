package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MyActingDAO;
import Model.MyActingDTO;

public class BookmarkService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Bookmark]");		
		
		String user_id = request.getParameter("user_id");
		int act_seq = Integer.parseInt(request.getParameter("act_seq"));
		
		MyActingDTO dto = new MyActingDTO(act_seq, user_id);
		MyActingDAO dao = new MyActingDAO();
		
		int cnt = dao.insertBookmark(dto);
		
		if(cnt>0) {
			System.out.println("북마크 성공");
			HttpSession se=request.getSession();
			se.setAttribute("myinfo", dto.getAct_seq());
		}else {
			System.out.println("북마크 실패");
		}
		response.sendRedirect("detail.jsp?act_seq="+act_seq);
	}

}
