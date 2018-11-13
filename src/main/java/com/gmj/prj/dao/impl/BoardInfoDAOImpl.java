
package com.gmj.prj.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gmj.prj.dao.BoardInfoDAO;
import com.gmj.prj.vo.BoardInfo;

@Component
public class BoardInfoDAOImpl implements BoardInfoDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public BoardInfo gettotalcnt() {
		int totalCnt =ss.selectOne("com.gmj.prj.vo.BoardInfo.gettotalcnt");
		BoardInfo bi = new BoardInfo();
		bi.setTotalBoard(totalCnt);
		bi.setCurrentpage(3);//리퀘스트 uri를 읽어서 세팅해주면됨.
		return bi;
	}
	@Override
	public Map<String,Object> getBoardInfo(int num) {
		Map<String,Object> getBoard = ss.selectOne("com.gmj.prj.vo.BoardInfo.getBoardInfo",num);
		return getBoard;
	}

}
