package com.gmj.prj.dao;

import java.util.Map;

import com.gmj.prj.vo.BoardInfo;



public interface BoardInfoDAO {
	public BoardInfo gettotalcnt();
	public Map<String,Object> getBoardInfo(int num);
}
