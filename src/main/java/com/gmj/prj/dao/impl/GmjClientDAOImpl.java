package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjClientDAO;
import com.gmj.prj.vo.GmjBClient;
import com.gmj.prj.vo.GmjClient;
@Repository
public class GmjClientDAOImpl implements GmjClientDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public int insertClient(GmjClient gc) {
		String tmp =gc.getGmjuserbirth();
		gc.setGmjuserbirth(tmp.substring(0, 10));
		return ss.insert("com.gmj.prj.vo.GmjClient.insertClient",gc);
	}
	@Override
	public List<GmjClient> getClientList() {

		return ss.selectList("com.gmj.prj.vo.GmjClient.selectClientList");
	}
	@Override
	public int updateClient(GmjClient gc) {
	
		return ss.update("com.gmj.prj.vo.GmjClient.updateClient",gc);
	}
	@Override
	public int updateClientList(List<GmjClient> listgc) {
		System.out.println(listgc);
		return ss.update("com.gmj.prj.vo.GmjClient.updateClientAll",listgc);
	} 
	@Override
	public int deleteClient(int gmjClientno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.vo.GmjClient.deleteClient",gmjClientno);
	}
	//중복체크 
	@Override
	public int dupcheck(String gmjuserEmail) {
		
		return ss.selectOne("com.gmj.prj.vo.GmjClient.dupcheck",gmjuserEmail);
	}
	////////////로그인 
	@Override
	public GmjClient login(GmjClient gc) {
		GmjClient cu = new GmjClient();
		cu = ss.selectOne("com.gmj.prj.vo.GmjClient.login",gc);
		System.out.println("12");
		System.out.println(cu);
		if(cu==null) {
			cu = new GmjClient();
			GmjBClient bu = new GmjBClient();
			bu = ss.selectOne("com.gmj.prj.vo.GmjBClient.BClientselect",gc);
			cu.setGmjuseremail(bu.getGmjuseremail());
			cu.setGmjuserno(0);
			return cu;
		}else {
			return cu;
		}
		
	}
	@Override
	public GmjClient getClientUser(int gc) {
		return ss.selectOne("com.gmj.prj.vo.GmjClient.gmjclientUser",gc);
	}
	
	
	
	
	
}
