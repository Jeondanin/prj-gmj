package com.gmj.prj.service;

import java.util.List;

import com.gmj.prj.vo.GmjClient;


public interface GmjClientService {
	public List<GmjClient> getClientList();
	public int insertClient(GmjClient gc);
	public int updateClient(GmjClient gc);
	public int updateClientList(List<GmjClient> listgc);
	public int deleteClient(int gmjclientno);
	
	public int login(GmjClient gc);
	public int logout();
	public GmjClient getClientUser(int gc);
	
	
	
}
