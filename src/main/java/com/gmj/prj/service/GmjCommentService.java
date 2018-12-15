package com.gmj.prj.service;

import java.util.List;


import com.gmj.prj.vo.GmjReply;

public interface GmjCommentService {

	public List<GmjReply> getCommentList();

	public GmjReply getComment(int gmjcommentno);

	public int deletegmjComment(int gmjcommentno);

	public int updategmjCommnet(GmjReply gc);

}
