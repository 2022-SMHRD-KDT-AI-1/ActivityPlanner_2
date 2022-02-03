package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ActivityDAO {
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

	public ArrayList<ActivityDTO> search(String key){
		ArrayList<ActivityDTO> list = null;
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return list;
	}

	public ArrayList<ActivityDTO> showList(String type){
		ArrayList<ActivityDTO> list = new ArrayList<ActivityDTO>();
		try {
			conn();
			
			String sql = "select * from tbl_acting where act_type = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, type);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("act_seq");
				String name = rs.getString("act_name");
				String poster = rs.getString("act_poster");
//				String writer = rs.getString(3);
//				String fileName = rs.getString(4);
//				String content = rs.getString(5);
//				String b_date = rs.getString(6);
//				
//				BoardDTO dto = new BoardDTO(num, title, writer, fileName, content, b_date);
				ActivityDTO dto = new ActivityDTO(num, name, poster);
				list.add(dto);
				
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
		
	}
	
}
