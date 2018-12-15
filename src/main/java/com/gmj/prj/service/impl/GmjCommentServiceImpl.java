package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjCommentDAO;
import com.gmj.prj.service.GmjCommentService;
import com.gmj.prj.vo.GmjReply;

@Service
public class GmjCommentServiceImpl implements GmjCommentService {

	@Autowired
	private GmjCommentDAO gcdao;
	
	@Override
	public List<GmjReply> getCommentList() {
		// TODO Auto-generated method stub
		return gcdao.getCommentList();
	}

	@Override
	public GmjReply getComment(int gmjcommentno) {
		// TODO Auto-generated method stub
		return gcdao.getComment(gmjcommentno);
	}

	@Override
	public int deletegmjComment(int gmjcommentno) {
		// TODO Auto-generated method stub
		return gcdao.deletegmjComment(gmjcommentno);
	}

	@Override
	public int updategmjCommnet(GmjReply gc) {
		// TODO Auto-generated method stub
		return gcdao.updategmjCommnet(gc);
	}

}
