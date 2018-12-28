package com.gmj.prj.service;

import java.util.List;

import com.gmj.prj.vo.GmjBClient;
import com.gmj.prj.vo.GmjClient;

public interface GmjBClientService {
	public List<GmjBClient> getBClientList();
	public GmjBClient getBClient(int gmjbclientno);
	public int insertBClient(GmjClient gbc);
	public int deleteBClient(int gmjbclientno);
	public int recoverBClient(GmjBClient gbc);

}
