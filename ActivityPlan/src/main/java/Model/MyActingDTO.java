package Model;

public class MyActingDTO {
	private int myact_seq;
	private int act_seq;
	private String user_id;
	private String act_yn;
	
	public MyActingDTO(int myact_seq, int act_seq, String user_id, String act_yn) {
		super();
		this.myact_seq = myact_seq;
		this.act_seq = act_seq;
		this.user_id = user_id;
		this.act_yn = act_yn;
	}
	
	

	public MyActingDTO(int act_seq, String user_id) {
		super();
		this.act_seq = act_seq;
		this.user_id = user_id;
	}



	public int getMyact_seq() {
		return myact_seq;
	}

	public int getAct_seq() {
		return act_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getAct_yn() {
		return act_yn;
	}

	public void setMyact_seq(int myact_seq) {
		this.myact_seq = myact_seq;
	}

	public void setAct_seq(int act_seq) {
		this.act_seq = act_seq;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public void setAct_yn(String act_yn) {
		this.act_yn = act_yn;
	}
	
	
}
