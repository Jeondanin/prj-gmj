package com.gmj.prj.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.gmj.prj.dao.GmjBClientDAO;
import com.gmj.prj.service.GmjBClientService;
import com.gmj.prj.vo.GmjBClient;
import com.gmj.prj.vo.GmjClient;

@Service
public class GmjBClientServiceImpl implements GmjBClientService {

	@Autowired
	private GmjBClientDAO gbcdao;
	@Override
	public List<GmjBClient> getBClientList() {
		// TODO Auto-generated method stub
		return gbcdao.getBClientList();
	}

	@Override
	public GmjBClient getBClient(int gmjbclientno) {
		// TODO Auto-generated method stub
		return gbcdao.getBClient(gmjbclientno);
	}

	@Override
	public int insertBClient(GmjClient gbc) {
		gbcdao.insertBClient(gbc);
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		HttpSession hs = req.getSession();
		hs.invalidate();
		return 0;
	}

	@Override
	public int deleteBClient(int gmjbclientno) {
		// TODO Auto-generated method stub
		return gbcdao.deleteBClient(gmjbclientno);
	}

	@Override
	public int recoverBClient(GmjBClient gbc) {
		int checkno = gbcdao.check(gbc);
		
		if(checkno!=0&&checkno!=-1) {
			gbc.setGmjuserno(checkno);
			HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
					.getRequest();
			HttpSession hs = req.getSession();
			hs.invalidate();
			return gbcdao.recoverBClient(gbc);
		}else if(checkno==-1){
			return -1;
			//비번 틀렸을 경우.
		}else {
			return 0;
			//뭔가 다른문제일경우.
		}
		
	}


}
