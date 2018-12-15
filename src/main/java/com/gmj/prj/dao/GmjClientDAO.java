package com.gmj.prj.dao;

import java.util.List;

import com.gmj.prj.vo.GmjClient;

public interface GmjClientDAO {
	public List<GmjClient> getClientList();
	public int insertClient(GmjClient gc);
	public int updateClient(GmjClient gc);
	public int updateClientList(List<GmjClient> listgc);
	public int deleteClient(int gmjClientno);
	public GmjClient login(GmjClient gc);
	public GmjClient getClientUser(int gc);
	
}
