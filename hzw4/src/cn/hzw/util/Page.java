package cn.hzw.util;

public class Page {

	private int currentPage=1;
	private int totalPage;
	private int totalCount;
	private int pageSize=5;
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		if(currentPage<1){
			this.currentPage=1;
		}else if(currentPage>totalPage){
			this.currentPage=totalPage;
		}else{
			this.currentPage=currentPage;
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage() {
		this.totalPage = totalCount%pageSize==0?totalCount/pageSize:totalCount/pageSize+1;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
