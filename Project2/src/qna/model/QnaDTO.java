package qna.model;

public class QnaDTO {
	private int no;
	private String title;
	private String content;
	private String name;
	private String times;
	private String status;
	private String id;
	
	public QnaDTO() {
	}

	public QnaDTO(int no, String title, String content, String name, String times, String status, String id) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.name = name;
		this.times = times;
		this.status = status;
		this.id = id;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
