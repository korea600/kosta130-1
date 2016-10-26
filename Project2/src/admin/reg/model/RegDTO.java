package admin.reg.model;

import java.sql.Date;

//ID		REQUEST		REASON		TIMES		STATUS
public class RegDTO {
	String id; // 학번
	String request; // 신청구분
	String reason; // 사유
	String times; // 신청시간
	String checked; // 상태(학적 DB)
	String status; // 상태(멤버 DB)
	String name;
	String tel;

	public RegDTO() {
	}

	public RegDTO(String id, String request, String reason, String times, 
			String checked, String status, String name, String tel) {
		super();
		this.id = id;
		this.request = request;
		this.reason = reason;
		this.times = times;
		this.checked = checked;
		this.status = status;
		this.name = name;
		this.tel = tel;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
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

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
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