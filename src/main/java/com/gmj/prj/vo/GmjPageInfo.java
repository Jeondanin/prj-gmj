package com.gmj.prj.vo;

public class GmjPageInfo {
	private Integer page =1;
	private Integer rowCnt =10;
	private Integer blockCnt=10;
	private Integer totalCnt;
	private Integer limitFNum = 0;
	private Integer limitLNum= 10;
	private Integer totalPage;
	private Integer totalBlock;
	private Integer sBlock;
	private Integer eBlock;
	private Integer lastnum;
	
	public Integer getLastnum() {
		return lastnum;
	}
	public void setLastnum(Integer lastnum) {
		this.lastnum = lastnum;
	}
	public Integer getRowCnt() {
		return rowCnt;
	}
	public void setRowCnt(Integer rowCnt) {
		this.rowCnt = rowCnt;
	}
	
	public Integer getBlockCnt() {
		return blockCnt;
	}
	public void setBlockCnt(Integer blockCnt) {
		this.blockCnt = blockCnt;
	}
	
	public Integer getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(Integer totalCnt) {
		this.totalCnt = totalCnt;
	}
	
	public Integer getLimitFNum() {
		return limitFNum;
	}
	public void setLimitFNum(Integer limitFNum) {
		this.limitFNum = limitFNum;
	}
	
	public Integer getLimitLNum() {
		return limitLNum;
	}
	public void setLimitLNum(Integer limitLNum) {
		this.limitLNum = limitLNum;
	}
	
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	
	public Integer getTotalBlock() {
		return totalBlock;
	}
	
	
	public Integer getsBlock() {
		return sBlock;
	}
	
	public void setsBlock(Integer sBlock) {
		this.sBlock = sBlock;
	}
	
	public Integer geteBlock() {
		return eBlock;
	}
	public void seteBlock(Integer eBlock) {
		this.eBlock = eBlock;
	}
	
	public void pageCount() {
		if(totalCnt==null) {
			//에러처리
		}
		totalPage =(int)(Math.ceil((double)totalCnt/rowCnt));
		totalBlock = (int)(Math.ceil((double)totalPage/blockCnt));
		limitFNum= (page-1)*rowCnt;
		
		sBlock =((int)(Math.ceil((double)page/blockCnt))-1)*10+1;
		 eBlock = sBlock+blockCnt-1;
		if(eBlock>totalPage) {
			eBlock = totalPage;
		}
		
		
	}
	

}
