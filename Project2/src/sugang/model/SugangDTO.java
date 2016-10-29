package sugang.model;

import java.sql.Date;

//id,code,bet,year,term,grade,dept,semester,status,total.t_credit,starts,ends,major,division,sub,credit,professor,times,room,cnt,checked
public class SugangDTO {
	private String id;
	private int code;
	private int bet;
	private int year;
	private int term;
	private String grade;
	private String dept;
	private int semester;
	private String status;
	private int total;
	private int t_credit;
	private Date starts;
	private Date ends;
	private String major;
	private String division;
	private String sub;
	private int credit;
	private String professor;
	private String times;
	private String room;
	private int cnt;
	private String checked;
	
	public SugangDTO() {
	}

	public SugangDTO(String id, int code, int bet, int year, int term, String grade, String dept, int semester,
			String status, int total, int t_credit, Date starts, Date ends, String major, String division, String sub,
			int credit, String professor, String times, String room, int cnt, String checked) {
		this.id = id;
		this.code = code;
		this.bet = bet;
		this.year = year;
		this.term = term;
		this.grade = grade;
		this.dept = dept;
		this.semester = semester;
		this.status = status;
		this.total = total;
		this.t_credit = t_credit;
		this.starts = starts;
		this.ends = ends;
		this.major = major;
		this.division = division;
		this.sub = sub;
		this.credit = credit;
		this.professor = professor;
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

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getBet() {
		return bet;
	}

	public void setBet(int bet) {
		this.bet = bet;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getTerm() {
		return term;
	}

	public void setTerm(int term) {
		this.term = term;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
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

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getT_credit() {
		return t_credit;
	}

	public void setT_credit(int t_credit) {
		this.t_credit = t_credit;
	}

	public Date getStarts() {
		return starts;
	}

	public void setStarts(Date starts) {
		this.starts = starts;
	}

	public Date getEnds() {
		return ends;
	}

	public void setEnds(Date ends) {
		this.ends = ends;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
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

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
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