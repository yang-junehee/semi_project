package dto;

public class ShowDTO {

	private String sname;
	private String splace;
	private String sterm;
	private String sfile;
	private String sinfo;
	private String slink;
	
	
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSplace() {
		return splace;
	}
	public void setSplace(String splace) {
		this.splace = splace;
	}
	public String getSterm() {
		return sterm;
	}
	public void setSterm(String sterm) {
		this.sterm = sterm;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public String getSinfo() {
		return sinfo;
	}
	public void setSinfo(String sinfo) {
		this.sinfo = sinfo;
	}
	public String getSlink() {
		return slink;
	}
	public void setSlink(String slink) {
		this.slink = slink;
	}
	@Override
	public String toString() {
		return "ShowDTO [sname=" + sname + ", splace=" + splace + ", sterm=" + sterm + ", sfile=" + sfile + ", sinfo="
				+ sinfo + ", slink=" + slink + "]";
	}
	
	
	
	
	
	
	
}


