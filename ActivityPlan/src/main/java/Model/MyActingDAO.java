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

			String sql = "select m.act_seq, a.act_type, a.act_name, a.act_sdate, a.act_edate, a.act_category, a.act_poster "
					+ "from tbl_my_acting m, tbl_acting a, tbl_user u "
					+ "where m.act_seq = a.act_seq and m.user_id = u.user_id and m.user_id = ? and m.act_yn = 'n'";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int act_seq = rs.getInt(1);
				String act_type = rs.getString(2);
				String act_name = rs.getString(3);
				String act_sdate = rs.getString(4);
				String act_edate = rs.getString(5);
				String act_category = rs.getString(6);
				String act_poster = rs.getString(7);

				ActivityDTO b_dto = new ActivityDTO(act_seq, act_type, act_name, act_sdate, act_edate, act_category,
						act_poster);

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

			String sql = "select m.act_seq, a.act_type, a.act_name, a.act_sdate, a.act_edate, a.act_category, a.act_poster "
					+ "from tbl_my_acting m, tbl_acting a, tbl_user u "
					+ "where m.act_seq = a.act_seq and m.user_id = u.user_id and m.user_id = ? and m.act_yn = 'y'";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int act_seq = rs.getInt(1);
				String act_type = rs.getString(2);
				String act_name = rs.getString(3);
				String act_sdate = rs.getString(4);
				String act_edate = rs.getString(5);
				String act_category = rs.getString(6);
				String act_poster = rs.getString(7);

				ActivityDTO m_dto = new ActivityDTO(act_seq, act_type, act_name, act_sdate, act_edate, act_category,
						act_poster);

				m_list.add(m_dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return m_list;
	}

	/* 저장한 대외활동 삭제 */
	public int deleteSave(int act_seq) {
		try {
			conn();

			String sql = "delete from tbl_my_acting where act_seq=? and act_yn='y'";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, act_seq);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	/* 즐겨찾기한 대외활동 삭제 */
	public int deleteBookmark(int act_seq) {
		try {
			conn();

			String sql = "delete from tbl_my_acting where act_seq=? and act_yn='n'";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, act_seq);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}