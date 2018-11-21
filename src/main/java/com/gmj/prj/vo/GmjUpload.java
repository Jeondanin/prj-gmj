package com.gmj.prj.vo;

public class GmjUpload {
	int gmjuploadno;
	String gmjuploadaddress;
	int gmjcboardno;
	int gmjvboardno;
	int gmjbboardno;
	String credat;
	String moddat;
	public int getGmjuploadno() {
		return gmjuploadno;
	}
	public void setGmjuploadno(int gmjuploadno) {
		this.gmjuploadno = gmjuploadno;
	}
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
	public int getGmjvboardno() {
		return gmjvboardno;
	}
	public void setGmjvboardno(int gmjvboardno) {
		this.gmjvboardno = gmjvboardno;
	}
	public int getGmjbboardno() {
		return gmjbboardno;
	}
	public void setGmjbboardno(int gmjbboardno) {
		this.gmjbboardno = gmjbboardno;
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
	@Override
	public String toString() {
		return "GmjUpload [gmjuploadno=" + gmjuploadno + ", gmjuploadaddress=" + gmjuploadaddress + ", gmjcboardno="
				+ gmjcboardno + ", gmjvboardno=" + gmjvboardno + ", gmjbboardno=" + gmjbboardno + ", credat=" + credat
				+ ", moddat=" + moddat + "]";
	}
	
}
