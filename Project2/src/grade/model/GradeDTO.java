package grade.model;

public class GradeDTO {
	String id;			// �й�
	String name;		// ����
	String dept;		// ������
	String checked;		// �̼�����
	int semester;		// �б�
	int year;			// ������ �⵵
	int code;			// �����ڵ�
	String sub;			// �����
	String professor;	// ������
	String grade;
	
	public GradeDTO() {}
	
	public GradeDTO(String id, String name, String dept, String checked, int semester, int year, int code, String sub,
			String professor, String grade) {
		this.id = id;
		this.name = name;
		this.dept = dept;
		this.checked = checked;
		this.semester = semester;
		this.year = year;
		this.code = code;
		this.sub = sub;
		this.professor = professor;
		this.grade = grade;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}

	public int getSemester() {
		return semester;
	}

	public void setSemester(int semester) {
		this.semester = semester;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
