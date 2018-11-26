package com.gmj.prj.vo;

public class GmjBboard {
	
	private int gmjbboardno;
	private String gmjbboardtitle;
	private String gmjbboarddesc;
	private String credat;
	private String moddat;
	private String gmjbboardcnt;
	public int getGmjbboardno() {
		return gmjbboardno;
	}
	public void setGmjbboardno(int gmjbboardno) {
		this.gmjbboardno = gmjbboardno;
	}
	public String getGmjbboardtitle() {
		return gmjbboardtitle;
	}
	public void setGmjbboardtitle(String gmjbboardtitle) {
		this.gmjbboardtitle = gmjbboardtitle;
	}
	public String getGmjbboarddesc() {
		return gmjbboarddesc;
	}
	public void setGmjbboarddesc(String gmjbboarddesc) {
		this.gmjbboarddesc = gmjbboarddesc;
	}
	public String getCredat() {
		return credat;
	}
	public void setCredat(String credat) {
		this.credat = credat;
	}
	public String getModdat() {
		return moddat;
	}
	public void setModdat(String moddat) {
		this.moddat = moddat;
	}
	public String getGmjbboardcnt() {
		return gmjbboardcnt;
	}
	public void setGmjbboardcnt(String gmjbboardcnt) {
		this.gmjbboardcnt = gmjbboardcnt;
	}
	@Override
	public String toString() {
		return "GmjBboard [gmjbboardno=" + gmjbboardno + ", gmjbboardtitle=" + gmjbboardtitle + ", gmjbboarddesc="
				+ gmjbboarddesc + ", credat=" + credat + ", moddat=" + moddat + ", gmjbboardcnt=" + gmjbboardcnt + "]";
	}
	

}
