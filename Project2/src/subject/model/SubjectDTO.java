package subject.model;

public class SubjectDTO {
	String id;		// 교수id (member.id)
	String name;		// 교수명 (member.name, subject.professor)
	String division;	// 이수구분 (subject.division)
	int year;			// 개설연도 (subject.year)
	int semester;		// 개설학기 (subject.semester)
	int code;			// 과목코드 (subject.code)
	String sub;			// 과목명 (subject.sub)
	int credit;			// 학점(1주당 수강시간) (subject.credit)
	String times;		// 강의 시각 (subject.times)
	String room;		// 강의실 (subject.room)
	int cnt;			// 수강인원 (subject.cnt)
	String checked;		// 처리상태 (subject.checked)
	
	public SubjectDTO() {}

	public SubjectDTO(String id, String name, String division, int year, int semester, int code, String sub,
			int credit, String times, String room, int cnt, String checked) {
		this.id = id;
		this.name = name;
		this.division = division;
		this.year = year;
		this.semester = semester;
		this.code = code;
		this.sub = sub;
		this.credit = credit;
		this.times = times;
		this.room = room;
		this.cnt = cnt;
		this.checked = checked;
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

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getSemester() {
		return semester;
	}

	public void setSemester(int semester) {
		this.semester = semester;
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

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}
}
