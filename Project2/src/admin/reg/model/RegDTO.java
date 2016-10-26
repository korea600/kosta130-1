package admin.reg.model;

import java.sql.Date;

//ID		REQUEST		REASON		TIMES		STATUS
public class RegDTO {
	int id; // �й�
	String request; // ��û����
	String reason; // ����
	Date times; // ��û�ð�
	String status; // ����
	String name; // �̸�
	String tel; // ����ó

	public RegDTO() {
	}

	public RegDTO(int id, String request, String reason, Date times, String status, String name, String tel) {
		super();
		this.id = id;
		this.request = request;
		this.reason = reason;
		this.times = times;
		this.status = status;
		this.name = name;
		this.tel = tel;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getTimes() {
		return times;
	}

	public void setTimes(Date times) {
		this.times = times;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

}