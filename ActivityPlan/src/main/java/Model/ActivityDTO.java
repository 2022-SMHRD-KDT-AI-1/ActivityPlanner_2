package Model;

public class ActivityDTO {
	private int act_seq;
	private String act_type; // 공모전, 인턴, 강연, 봉사활동
	private String act_name; // 이름
	private String act_sdate; // 시작날짜
	private String act_edate; // 끝 날짜
	private String act_intro; // 소개
	private String act_benefits; // 혜택
	private String act_center; // 주최,주관
	private String act_money; // 상금
	private String act_category; //분야
	private String act_homepage; //홈페이지
	private String act_poster; // 포스터
	
	
	
	public ActivityDTO(int act_seq, String act_name, String act_poster) {
		super();
		this.act_seq = act_seq;
		this.act_name = act_name;
		this.act_poster = act_poster;
	}
	
	public ActivityDTO(int act_seq, String act_type, String act_name, String act_edate, String act_center,
			String act_category) {
		super();
		this.act_seq = act_seq;
		this.act_type = act_type;
		this.act_name = act_name;
		this.act_edate = act_edate;
		this.act_center = act_center;
		this.act_category = act_category;
	}

	public ActivityDTO(int act_seq, String act_type, String act_name, String act_sdate, String act_edate,
			String act_intro, String act_benefits, String act_center, String act_money, String act_category,
			String act_homepage, String act_poster) {
		super();
		this.act_seq = act_seq;
		this.act_type = act_type;
		this.act_name = act_name;
		this.act_sdate = act_sdate;
		this.act_edate = act_edate;
		this.act_intro = act_intro;
		this.act_benefits = act_benefits;
		this.act_center = act_center;
		this.act_money = act_money;
		this.act_category = act_category;
		this.act_homepage = act_homepage;
		this.act_poster = act_poster;
	}
	public int getAct_seq() {
		return act_seq;
	}
	public String getAct_type() {
		return act_type;
	}
	public String getAct_name() {
		return act_name;
	}
	public String getAct_sdate() {
		return act_sdate;
	}
	public String getAct_edate() {
		return act_edate;
	}
	public String getAct_intro() {
		return act_intro;
	}
	public String getAct_benefits() {
		return act_benefits;
	}
	public String getAct_center() {
		return act_center;
	}
	public String getAct_money() {
		return act_money;
	}
	public String getAct_category() {
		return act_category;
	}
	public String getAct_homepage() {
		return act_homepage;
	}
	public String getAct_poster() {
		return act_poster;
	}
	public void setAct_seq(int act_seq) {
		this.act_seq = act_seq;
	}
	public void setAct_type(String act_type) {
		this.act_type = act_type;
	}
	public void setAct_name(String act_name) {
		this.act_name = act_name;
	}
	public void setAct_sdate(String act_sdate) {
		this.act_sdate = act_sdate;
	}
	public void setAct_edate(String act_edate) {
		this.act_edate = act_edate;
	}
	public void setAct_intro(String act_intro) {
		this.act_intro = act_intro;
	}
	public void setAct_benefits(String act_benefits) {
		this.act_benefits = act_benefits;
	}
	public void setAct_center(String act_center) {
		this.act_center = act_center;
	}
	public void setAct_money(String act_money) {
		this.act_money = act_money;
	}
	public void setAct_category(String act_category) {
		this.act_category = act_category;
	}
	public void setAct_homepage(String act_homepage) {
		this.act_homepage = act_homepage;
	}
	public void setAct_poster(String act_poster) {
		this.act_poster = act_poster;
	}
	
		
}
