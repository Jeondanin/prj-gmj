package com.gmj.prj.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gmj.prj.dao.GmjClientDAO;
import com.gmj.prj.vo.GmjClient;
@Component
public class GmjClientDAOImpl implements GmjClientDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public int insertClient(GmjClient gc) {
		String tmp =gc.getGmjuserbirth();
		gc.setGmjuserbirth(tmp.substring(0, 10));
		return ss.insert("com.gmj.prj.vo.GmjClient.insertClient",gc);
	}

}
