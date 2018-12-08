package com.gmj.prj.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.gmj.prj.dao.GmjClientDAO;
import com.gmj.prj.dao.impl.GmjClientDAOImpl;
import com.gmj.prj.service.GmjClientService;
import com.gmj.prj.vo.GmjClient;
@Service
public class GmjClientServiceImpl implements GmjClientService {
	@Autowired
	GmjClientDAO gcdi;
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
	@Override
	public int updateClientList(List<GmjClient> listgc) {
		
		return gcdi.updateClientList(listgc);
	}
	@Override
	public int deleteClient(int gmjclientno) {
		// TODO Auto-generated method stub
		return gcdi.deleteClient(gmjclientno);
	}
	@Override
	public int login(GmjClient gc) {
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		HttpSession hs = req.getSession();
		GmjClient resultgc =gcdi.login(gc);
		if(resultgc!=null) {
			if(resultgc.getGmjuseremail().equals("admin@gmj.com")) {
				hs.setAttribute("userNO", resultgc.getGmjuserno());
				hs.setAttribute("userID", resultgc.getGmjuseremail());
				hs.setAttribute("authority", true);
				System.out.println("관리자모드 시작합니다.");
				return 11;
			}else{
				hs.setAttribute("userNO", resultgc.getGmjuserno());
				hs.setAttribute("userID", resultgc.getGmjuseremail());
				hs.setAttribute("authority", false);
				System.out.println("사용자모드 시작합니다.");
				return 12;
			}
		}
		return 0;
		
	}
	@Override
	public int logout() {
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		HttpSession hs = req.getSession();
		hs.invalidate();
		return 0;
	}
	@Override
	public GmjClient getClientUser(int userno) {
		return gcdi.getClientUser(userno);
	}
	

}
