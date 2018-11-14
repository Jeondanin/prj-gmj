package com.gmj.prj.dao;

import java.util.List;

import com.gmj.prj.vo.GmjClient;

public interface GmjClientDAO {
	public List<GmjClient> getClientList();
	public int insertClient(GmjClient gc);
	public int updateClient(GmjClient gc);
	public int deleteClient(int gmjClientno);
}
