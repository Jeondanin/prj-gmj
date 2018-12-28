package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjBClientDAO;
import com.gmj.prj.vo.GmjBClient;
import com.gmj.prj.vo.GmjClient;

@Repository
public class GmjBClientDAOImpl implements GmjBClientDAO {

	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjBClient> getBClientList() {
		// TODO Auto-generated method stub
		return ss.selectList("com.gmj.prj.vo.GmjBClient.BClientselectList");
	}

	@Override
	public GmjBClient getBClient(int gmjbclientno) {
		// TODO Auto-generated method stub
		return ss.selectOne("com.gmj.prj.vo.GmjBClient.BClientselect", gmjbclientno);
	}

	@Override
	public int insertBClient(GmjClient gbc) {
		// TODO Auto-generated method stub
		return ss.insert("com.gmj.prj.vo.GmjBClient.BClientinsert",gbc);
	}

	@Override
	public int deleteBClient(int gmjbclientno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.vo.GmjBClient.BClientdelete",gmjbclientno);
	}

	@Override
	public int check(GmjBClient gbc) {
		Integer checknum = ss.selectOne("com.gmj.prj.vo.GmjBClient.checkBClient",gbc);
		System.out.println("daoimpl에서의 값 "+checknum);
		if(checknum!=null) {
			return checknum;
		}else {
			return -1;
		}
		
	}
	@Override
	public int recoverBClient(GmjBClient gbc) {
		
		return ss.insert("com.gmj.prj.vo.GmjBClient.recoverBClient",gbc);
	}

	

}
