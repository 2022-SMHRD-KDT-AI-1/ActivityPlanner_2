package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[LogoutService]");
      
      // 로그아웃기능 만들기
      // 로그아웃 = session에 저장된 로그인 정보를 삭제 -> session 삭제
      HttpSession session = request.getSession();
      
      session.removeAttribute("info");
//      session.invalidate();
      
      System.out.println("로그아웃 성공");
      response.sendRedirect("main.jsp");
   }

}