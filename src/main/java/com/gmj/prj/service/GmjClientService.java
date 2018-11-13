package com.gmj.prj.service;

import java.util.List;

import com.gmj.prj.vo.GmjClient;


public interface GmjClientService {
	public List<GmjClient> getClientList();
	public int insertClient(GmjClient gc);
	public int updateClient(GmjClient gc);
}
