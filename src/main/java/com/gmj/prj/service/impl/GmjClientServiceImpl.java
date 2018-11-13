package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.impl.GmjClientDAOImpl;
import com.gmj.prj.service.GmjClientService;
import com.gmj.prj.vo.GmjClient;
@Service
public class GmjClientServiceImpl implements GmjClientService {
	@Autowired
	GmjClientDAOImpl gcdi;
	@Override
	public int insertClient(GmjClient gc) {
		// TODO Auto-generated method stub
		return gcdi.insertClient(gc);
	}
	@Override
	public List<GmjClient> getClientList() {
		// TODO Auto-generated method stub
		return gcdi.getClientList();
	}
	@Override
	public int updateClient(GmjClient gc) {
		// TODO Auto-generated method stub
		return gcdi.updateClient(gc);
	}

}
