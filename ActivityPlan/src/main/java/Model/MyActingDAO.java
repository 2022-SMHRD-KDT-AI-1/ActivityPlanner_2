package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MyActingDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	MyActingDTO dto = null;

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
	
	/* 데이터베이스에 북마크한 데이터 추가 */
	public int insertBookmark(MyActingDTO bm) {
		try {
			conn();

			String sql = "insert into tbl_my_acting(myact_seq, act_seq,user_id,act_yn) values(tbl_my_acting_seq.nextval,?,?,'n')";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, bm.getAct_seq());
			psmt.setString(2, bm.getUser_id());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	/* 데이터베이스에 저장한 데이터 추가 */
	public int insertActing(MyActingDTO bm) {
		try {
			conn();

			String sql = "insert into tbl_my_acting(myact_seq, act_seq,user_id,act_yn) values(tbl_my_acting_seq.nextval,?,?,'y')";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, bm.getAct_seq());
			psmt.setString(2, bm.getUser_id());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	/* 데이터베이스에 북마크한 데이터 보여주기 */
	public ArrayList<ActivityDTO> showBookmark(String id) {
		ArrayList<ActivityDTO> b_list = new ArrayList<ActivityDTO>();
		try {
			conn();

			String sql = "select m.act_seq, a.act_name, a.act_type, a.act_center, a.act_edate, a.act_category "
					+ "from tbl_my_acting m, tbl_acting a, tbl_user u " + "where m.act_seq = a.act_seq "
					+ "and m.user_id = u.user_id " + "and m.user_id = ?" + "and m.act_yn = 'n'";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int act_seq = rs.getInt(1);
				String act_name = rs.getString(2);
				String act_type = rs.getString(3);
				String act_edate = rs.getString(5);
				String act_center = rs.getString(4);
				String act_category = rs.getString(6);

				ActivityDTO b_dto = new ActivityDTO(act_seq, act_type, act_name, act_edate, act_center, act_category);

				b_list.add(b_dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return b_list;
	}
	/* 데이터베이스에 저장한 데이터 보여주기 마감기한이 다가오는 순으로 */
	public ArrayList<ActivityDTO> showMyActing(String id) {
		ArrayList<ActivityDTO> m_list = new ArrayList<ActivityDTO>();
		try {
			conn();

			String sql = "select m.act_seq, a.act_name, a.act_type, a.act_center, a.act_edate, a.act_category "
					+ "from tbl_my_acting m, tbl_acting a, tbl_user u " + "where m.act_seq = a.act_seq "
					+ "and m.user_id = u.user_id " + "and m.user_id = ?" + "and m.act_yn = 'y'"
					+ "order by a.act_edate";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int act_seq = rs.getInt(1);
				String act_name = rs.getString(2);
				String act_type = rs.getString(3);
				String act_edate = rs.getString(5);
				String act_center = rs.getString(4);
				String act_category = rs.getString(6);

				ActivityDTO b_dto = new ActivityDTO(act_seq, act_type, act_name, act_edate, act_center, act_category);

				m_list.add(b_dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return m_list;
	}
}
