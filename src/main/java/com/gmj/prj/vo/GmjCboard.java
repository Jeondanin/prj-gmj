package com.gmj.prj.vo;

public class GmjCboard {
	public int gmjcboardno; 
	public String gmjcboardtitle;
	public String gmjcboarddesc;
	public String gmjusername;
	public String credat; 
	public String moddat; 
	public int gmjcboardcnt;
	public GmjPageInfo gpi;
	public GmjCboard() {
		gpi = new GmjPageInfo();
	}
	public GmjPageInfo getgpi() {
		return gpi;
	}
	public void setGpi(GmjPageInfo gpi){
		this.gpi =gpi;
	}
	
	public int getGmjcboardno() {
		return gmjcboardno;
	}
	public void setGmjcboardno(int gmjcboardno) {
		this.gmjcboardno = gmjcboardno;
	}
	public String getGmjcboardtitle() {
		return gmjcboardtitle;
	}
	public void setGmjcboardtitle(String gmjcboardtitle) {
		this.gmjcboardtitle = gmjcboardtitle;
	}
	public String getGmjcboarddesc() {
		return gmjcboarddesc;
	}
	public void setGmjcboarddesc(String gmjcboarddesc) {
		this.gmjcboarddesc = gmjcboarddesc;
	}
	public String getGmjusername() {
		return gmjusername;
	}
	public void setGmjusername(String gmjusername) {
		this.gmjusername = gmjusername;
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
	public int getGmjcboardcnt() {
		return gmjcboardcnt;
	}
	public void setGmjcboardcnt(int gmjcboardcnt) {
		this.gmjcboardcnt = gmjcboardcnt;
	}
	
	
	
}
