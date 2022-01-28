package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	MemberDTO dto = null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//Class.forName("oracle.jdbc.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "campus_e_4_0115";
			String dbpw = "smhrd4";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int signUp(MemberDTO dto) {
		try {
			conn();
			
			String sql = "insert into tbl_user(user_id, user_pw, user_nick, user_tel, user_gender, user_birthdate, user_name, user_major, user_joindate, admin_yn) "
					+ "values(?, ?, ?, ?,?,?,?,?,sysdate,'N')";
			//loginId , loginPw, name, cellphoneNo, gender, nickname, inp_s, birth2
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getUser_pw());
			psmt.setString(3, dto.getUser_nick());
			psmt.setString(4, dto.getUser_tel());
			psmt.setString(5, dto.getUser_gender());
			psmt.setString(6, dto.getUser_birthdate());
			psmt.setString(7, dto.getUser_name());
			psmt.setString(8, dto.getUser_major());
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
	}
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		try {
			conn();
			
			String sql = "select * from tbl_user where user_id=? and user_pw=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getUser_pw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String user_id = rs.getString("user_id");
				String user_pw = rs.getString("user_pw");
				String user_nick = rs.getString("user_nick");
				String user_tel = rs.getString("user_tel");
				String user_gender = rs.getString("user_gender");
				String user_birthdate = rs.getString("user_birthdate");
				String user_name = rs.getString("user_name");
				String user_major = rs.getString("user_major");
				String user_joindate = rs.getString("user_joindate");
				String admin_yn = rs.getString("admin_yn");
				
				info= new MemberDTO(user_id, user_pw, user_nick, user_tel, user_gender, user_birthdate, user_name, user_major, user_joindate, admin_yn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
	}

	public int modify(MemberDTO info) {
		try {
			conn();
			
			String sql = "update tbl_user set user_pw=?, user_nick=?, user_major=? where user_id=?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, info.getUser_pw());
				psmt.setString(2, info.getUser_nick());
				psmt.setString(3, info.getUser_major());
				psmt.setString(4, info.getUser_id());
				
				cnt = psmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				close();
			}return cnt;
//			String sql = "update tbl_user(user_id, user_pw, user_nick, user_tel, user_gender, user_birthdate, user_name, user_major, user_joindate, admin_yn) "
//					+ "values(?, ?, ?, ?,?,?,?,?,sysdate,'N')";
//			//loginId , loginPw, name, cellphoneNo, gender, nickname, inp_s, birth2
//			psmt = conn.prepareStatement(sql);
//			
//			psmt.setString(1, dto.getUser_id());
//			psmt.setString(2, dto.getUser_pw());
//			psmt.setString(3, dto.getUser_nick());
//			psmt.setString(4, dto.getUser_tel());
//			psmt.setString(5, dto.getUser_gender());
//			psmt.setString(6, dto.getUser_birthdate());
//			psmt.setString(7, dto.getUser_name());
//			psmt.setString(8, dto.getUser_major());
//			
//			cnt = psmt.executeUpdate();

	}
}