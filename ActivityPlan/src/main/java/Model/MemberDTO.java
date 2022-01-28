package Model;

public class MemberDTO {
	private String user_id;
	private String user_pw;
	private String user_nick;
	private String user_tel;
	private String user_gender;
	private String user_birthdate;
	private String user_name;
	private String user_major;
	private String user_joindate;
	private String admin_yn;
	
	public MemberDTO(String user_id, String user_pw, String user_nick, String user_major) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_major = user_major;
	}


	public MemberDTO(String user_id, String user_pw, String user_nick, String user_tel, String user_gender,
			String user_birthdate, String user_name, String user_major, String user_joindate, String admin_yn) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_tel = user_tel;
		this.user_gender = user_gender;
		this.user_birthdate = user_birthdate;
		this.user_name = user_name;
		this.user_major = user_major;
		this.user_joindate = user_joindate;
		this.admin_yn = admin_yn;
	}

	
	public MemberDTO(String user_id, String user_pw, String user_nick, String user_tel, String user_gender,
			String user_birthdate, String user_name, String user_major) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_tel = user_tel;
		this.user_gender = user_gender;
		this.user_birthdate = user_birthdate;
		this.user_name = user_name;
		this.user_major = user_major;
	}

	
	public MemberDTO(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}


	public String getUser_id() {
		return user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public String getUser_birthdate() {
		return user_birthdate;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_major() {
		return user_major;
	}

	public String getUser_joindate() {
		return user_joindate;
	}

	public String getAdmin_yn() {
		return admin_yn;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public void setUser_birthdate(String user_birthdate) {
		this.user_birthdate = user_birthdate;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public void setUser_major(String user_major) {
		this.user_major = user_major;
	}

	public void setUser_joindate(String user_joindate) {
		this.user_joindate = user_joindate;
	}

	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
	
}
