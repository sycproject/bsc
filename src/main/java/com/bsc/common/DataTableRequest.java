package com.bsc.common;

/**
 * 封装前台DataTable的请求参数
 * @author sunyuanda
 *
 */
public class DataTableRequest {

	
	//分页（paging）iDisplayStart/iDisplayLength
	private String sEcho;//请求服务器端的次数
	private int iDisplayStart;//每页开始显示的位置
	private int iDisplayLength;//每页显示的数量
	
	//排序（ordering）iSortCol_0/iSortingCols/bSortable_/iSortCol_
	private int iSortCol_0;//排序的列，点击的排序列数（从0列开始）
	private int iSortingCols;//排序列的数量
	private String sSortDir_0;//排序时 升序asc还是倒叙desc
	
	//搜索、过滤（filtering）sSearch/aColumns
	private int iColumns;//一共显示多少列（和sColumns对应）
	private String sColumns;//列的字段名称,以逗号分隔
	private String sSearch;//搜索条件
	
	
	
	public DataTableRequest() {
	}
	public String getSEcho() {
		return sEcho;
	}
	public void setSEcho(String sEcho) {
		this.sEcho = sEcho;
	}
	public int getIDisplayStart() {
		return iDisplayStart;
	}
	public void setIDisplayStart(int iDisplayStart) {
		this.iDisplayStart = iDisplayStart;
	}
	public int getIDisplayLength() {
		return iDisplayLength;
	}
	public void setIDisplayLength(int iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}
	public int getISortCol_0() {
		return iSortCol_0;
	}
	public void setISortCol_0(int iSortCol_0) {
		this.iSortCol_0 = iSortCol_0;
	}
	public int getISortingCols() {
		return iSortingCols;
	}
	public void setISortingCols(int iSortingCols) {
		this.iSortingCols = iSortingCols;
	}
	public String getSSortDir_0() {
		return sSortDir_0;
	}
	public void setSSortDir_0(String sSortDir_0) {
		this.sSortDir_0 = sSortDir_0;
	}
	public int getIColumns() {
		return iColumns;
	}
	public void setIColumns(int iColumns) {
		this.iColumns = iColumns;
	}
	public String getSColumns() {
		return sColumns;
	}
	public void setSColumns(String sColumns) {
		this.sColumns = sColumns;
	}
	public String getSSearch() {
		return sSearch;
	}
	public void setSSearch(String sSearch) {
		this.sSearch = sSearch;
	}
	@Override
	public String toString() {
		return "DataTableRequest [sEcho=" + sEcho + ", iDisplayStart="
				+ iDisplayStart + ", iDisplayLength=" + iDisplayLength
				+ ", iSortCol_0=" + iSortCol_0 + ", iSortingCols="
				+ iSortingCols + ", sSortDir_0=" + sSortDir_0 + ", iColumns="
				+ iColumns + ", sColumns=" + sColumns + ", sSearch=" + sSearch
				+ "]";
	}
	
	
}
