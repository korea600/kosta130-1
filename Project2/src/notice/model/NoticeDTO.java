package notice.model;

import java.sql.Date;

public class NoticeDTO {
	
	private int no;
	private String id;
	private String name;
	private String title;
	private String content;
	private Date gdate;
	private String checked;
	
	
	public NoticeDTO() {
		
	}


	public NoticeDTO(int no, String id, String name, String title, String content, Date gdate, String checked) {
		super();
		this.no = no;
		this.id = id;
		this.name = name;
		this.title = title;
		this.content = content;
		this.gdate = gdate;
		this.checked = checked;
	}
	
	

	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
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


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getGdate() {
		return gdate;
	}


	public void setGdate(Date gdate) {
		this.gdate = gdate;
	}


	public String getChecked() {
		return checked;
	}


	public void setChecked(String checked) {
		this.checked = checked;
	}
	
	


	
	

}
