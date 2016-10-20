package member.model;

public class LoginDTO {
	String id;		// 학번
	String pass;	// 비밀번호
	String name;	// 성명
	String job;		// 구분 (s:학생, p:교수, a:관리자)
	
	public LoginDTO() {}
	
	public LoginDTO(String id, String pass, String name, String job) {
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.job = job;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
}
