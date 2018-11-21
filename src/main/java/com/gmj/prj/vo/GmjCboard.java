package com.gmj.prj.vo;

import java.io.UnsupportedEncodingException;

public class GmjCboard {
	public int gmjcboardno; 
	public String gmjcboardtitle;
	public String gmjcboarddesc;
	public String gmjusername;
	public String credat; 
	public String moddat; 
	public int gmjcboardcnt;
	public String gmjuploadaddress;
	public String getGmjuploadaddress() {
		return gmjuploadaddress;
	}
	public void setGmjuploadaddress(String gmjuploadaddress) {
		this.gmjuploadaddress = gmjuploadaddress;
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
	@Override
	public String toString() {
	String oldString = "GmjCboard [gmjcboardno=" + gmjcboardno + ", gmjcboardtitle=" + gmjcboardtitle + ", gmjcboarddesc="
			+ gmjcboarddesc + ", gmjusername=" + gmjusername + ", credat=" + credat + ", moddat=" + moddat
			+ ", gmjcboardcnt=" + gmjcboardcnt + "]";
	String string;
	try {
		string = new String(oldString.getBytes("8859_1"),"utf-8");
		return string;
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return oldString;
	}
	
	
	
	
}
