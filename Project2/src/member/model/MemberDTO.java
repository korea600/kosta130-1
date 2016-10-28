package member.model;

public class MemberDTO {
	String id;
	String dept;
	String name;
	String email;
	String tel;
	String addr;
	int semester;
	String status;
	String job;
	public MemberDTO() {
	}

	
	
	public MemberDTO(String id, String dept, String name, String email, String tel, String addr, int semester,
			String status,String job) {
		super();
		this.id = id;
		this.dept = dept;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.addr = addr;
		this.semester = semester;
		this.status = status;
		this.job = job;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getSemester() {
		return semester;
	}

	public void setSemester(int semester) {
		this.semester = semester;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
}
