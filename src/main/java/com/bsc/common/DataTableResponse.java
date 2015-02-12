package com.bsc.common;

import java.util.List;

public class DataTableResponse {
	
	private long iTotalRecords;
	private long iTotalDisplayRecords; 
	private String sEcho;
	private List<?> data;
	
	public DataTableResponse() {}
	
	public DataTableResponse(long iTotalRecords, long iTotalDisplayRecords,String sEcho, List<?> data) {
		this.iTotalRecords = iTotalRecords;
		this.iTotalDisplayRecords = iTotalDisplayRecords;
		this.sEcho = sEcho;
		this.data = data;
	}
	
	
	public long getITotalRecords() {
		return iTotalRecords;
	}
	public void setITotalRecords(long iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}
	public long getITotalDisplayRecords() {
		return iTotalDisplayRecords;
	}
	public void setITotalDisplayRecords(long iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}
	public String getSEcho() {
		return sEcho;
	}
	public void setSEcho(String sEcho) {
		this.sEcho = sEcho;
	}

	public List<?> getData() {
		return data;
	}

	public void setData(List<?> data) {
		this.data = data;
	}
	
}
