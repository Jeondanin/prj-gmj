package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjCommentDAO;
import com.gmj.prj.vo.GmjReply;

@Repository
public class GmjCommentDAOImpl implements GmjCommentDAO {

	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjReply> getCommentList() {
		// TODO Auto-generated method stub
		return ss.selectList("com.gmj.prj.GmjComment.GmjCommentList");
	}
	@Override
	public GmjReply getComment(int gmjcommentno) {
		// TODO Auto-generated method stub
		return ss.selectOne("com.gmj.prj.GmjComment.GmjComment", gmjcommentno);
	}
	@Override
	public int deletegmjComment(int gmjcommentno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.GmjComment.deleteGmjComment",gmjcommentno);
	}
	@Override
	public int updategmjCommnet(GmjReply gc) {
		// TODO Auto-generated method stub
		return ss.update("com.gmj.prj.GmjComment.updateGmjComment",gc);
	}
	

}
