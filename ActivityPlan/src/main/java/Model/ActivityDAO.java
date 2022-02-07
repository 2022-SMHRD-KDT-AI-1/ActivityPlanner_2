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
	ActivityDTO dto = null;

	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// Class.forName("oracle.jdbc.OracleDriver");

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

	public ArrayList<ActivityDTO> search(String key) {
		ArrayList<ActivityDTO> list = null;
		try {
			
			conn();
			
			String sql="select * from tbl_Acting where act_name like in ('%?%')";
			
			psmt=conn.prepareStatement(sql);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	/*
	 * public ArrayList<ActivityDTO> showList(String type) { ArrayList<ActivityDTO>
	 * list = new ArrayList<ActivityDTO>(); try { conn();
	 * 
	 * String sql = "select * from tbl_acting where act_type = ?";
	 * 
	 * psmt = conn.prepareStatement(sql); psmt.setString(1, type);
	 * 
	 * rs = psmt.executeQuery();
	 * 
	 * while (rs.next()) { int num = rs.getInt("act_seq"); String name =
	 * rs.getString("act_name"); String poster = rs.getString("act_poster"); //
	 * String writer = rs.getString(3); // String fileName = rs.getString(4); //
	 * String content = rs.getString(5); // String b_date = rs.getString(6); // //
	 * BoardDTO dto = new BoardDTO(num, title, writer, fileName, content, b_date);
	 * ActivityDTO dto = new ActivityDTO(num, name, poster); list.add(dto);
	 * 
	 * } } catch (Exception e) { e.printStackTrace(); } finally { close(); } return
	 * list;
	 * 
	 * }
	 */

	public ActivityDTO showDetail(int seq) {
		try {
			conn();

			String sql = "select * from tbl_acting where act_seq=?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int act_seq = rs.getInt("act_seq");
				String act_name = rs.getString("act_name");
				String act_type = rs.getString("act_type");
				String act_sdate = rs.getString("act_sdate");
				String act_edate = rs.getString("act_edate");
				String act_intro = rs.getString("act_intro");
				String act_benefits = rs.getString("act_benefits");
				String act_center = rs.getString("act_center");
				String act_money = rs.getString("act_money");
				String act_category = rs.getString("act_category");
				String act_homepage = rs.getString("act_homepage");
				String act_poster = rs.getString("act_poster");

				dto = new ActivityDTO(act_seq, act_type, act_name, act_sdate, act_edate, act_intro, act_benefits,
						act_center, act_money, act_category, act_homepage, act_poster);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	public ArrayList<ActivityDTO> showList(String type) {
		ArrayList<ActivityDTO> list = new ArrayList<ActivityDTO>();
		try {
			conn();

			String sql = "select * from tbl_acting where act_type = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, type);

			rs = psmt.executeQuery();

			while (rs.next()) {
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
