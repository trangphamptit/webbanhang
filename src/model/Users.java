package model;

public class Users {
	private long user_id;
	private String user_email;
	private String user_pass;
	private boolean user_role;

	public Users(long user_id, String user_email, String user_pass, boolean user_role) {
		this.user_id = user_id;
		this.user_email = user_email;
		this.user_pass = user_pass;
		this.user_role = user_role;
	}

	public Users() {
		// TODO Auto-generated constructor stub
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public boolean isUser_role() {
		return user_role;
	}

	public void setUser_role(boolean user_role) {
		this.user_role = user_role;
	}

}
