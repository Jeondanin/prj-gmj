package com.gmj.prj.dao;

import java.util.List;

import com.gmj.prj.vo.GmjReply;

public interface GmjCommentDAO {
	
	public List<GmjReply> getCommentList();
	public GmjReply getComment(int gmjcommentno);
	public int deletegmjComment(int gmjcommentno);
	public int updategmjCommnet(GmjReply gc);
}
