package com.gmj.prj.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class GmjClient {
	private int gmjuserno;
	private String gmjuseremail;
	private String gmjuserpwd;
	private String gmjusername;
	private String gmjuserphone;
	private String gmjuserbirth;
	private String gmjusersex;
	private String gmjuseraddress;
	private String credat;
	private String moddat;
	
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
	public int getGmjuserno() {
		return gmjuserno;
	}
	public void setGmjuserno(int gmjuserno) {
		this.gmjuserno = gmjuserno;
	}
	public String getGmjuseremail() {
		return gmjuseremail;
	}
	public void setGmjuseremail(String gmjuseremail) {
		this.gmjuseremail = gmjuseremail;
	}
	public String getGmjuserpwd() {
		return gmjuserpwd;
	}
	public void setGmjuserpwd(String gmjuserpwd) {
		this.gmjuserpwd = gmjuserpwd;
	}
	public String getGmjusername() {
		return gmjusername;
	}
	public void setGmjusername(String gmjusername) {
		this.gmjusername = gmjusername;
	}
	public String getGmjuserphone() {
		return gmjuserphone;
	}
	public void setGmjuserphone(String gmjuserphone) {
		this.gmjuserphone = gmjuserphone;
	}
	public String getGmjuserbirth() {
		return gmjuserbirth;
	}
	public void setGmjuserbirth(String gmjuserbirth) {
		this.gmjuserbirth = gmjuserbirth;
	}
	public String getGmjusersex() {
		return gmjusersex;
	}
	public void setGmjusersex(String gmjusersex) {
		this.gmjusersex = gmjusersex;
	}
	public String getGmjuseraddress() {
		return gmjuseraddress;
	}
	public void setGmjuseraddress(String gmjuseraddress) {
		this.gmjuseraddress = gmjuseraddress;
	}
	@Override
	public String toString() {
		return "GmjClient [gmjuserno=" + gmjuserno + ", gmjuseremail=" + gmjuseremail + ", gmjuserpwd=" + gmjuserpwd
				+ ", gmjusername=" + gmjusername + ", gmjuserphone=" + gmjuserphone + ", gmjuserbirth=" + gmjuserbirth
				+ ", gmjusersex=" + gmjusersex + ", gmjuseraddress=" + gmjuseraddress + ", credat=" + credat
				+ ", moddat=" + moddat + "]";
	}
	
	
	
}
