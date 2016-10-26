package schedule.model;

public class ScheduleDTO {
	private int no;
	private String starts;//1991/03/02
	private String ends;
	private String content;
	private String etc;
	private String presenter;
	
	public ScheduleDTO() {
	}

	public ScheduleDTO(int no, String starts, String ends, String content, String etc, String presenter) {
		this.no = no;
		this.starts = starts;
		this.ends = ends;
		this.content = content;
		this.etc = etc;
		this.presenter = presenter;
	}

	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no=no;
	}
	
	public String getStarts() {
		return starts;
	}

	public void setStarts(String starts) {
		this.starts = starts;
	}

	public String getEnds() {
		return ends;
	}

	public void setEnds(String ends) {
		this.ends = ends;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getEtc() {
		return etc;
	}
	
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	public String getPresenter() {
		return presenter;
	}
	
	public void setPresenter(String presenter) {
		this.presenter = presenter;
	}
	
}
