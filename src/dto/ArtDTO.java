package dto;

public class ArtDTO {

	private String name;
	private String title;
	private String file;
	private String year;
	private String info;
	
	
	
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
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	@Override
	public String toString() {
		return "ArtDTO [name=" + name + ", title=" + title + ", file=" + file + ", year=" + year + ", info=" + info
				+ "]";
	}
	
	
}
