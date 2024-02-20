package com.itwillbs.domain;

import java.sql.Timestamp;

public class ChattingDTO {

	private int c_num;
	private int p_num;
	private String id;
	private String c_title;
	private Timestamp c_date;
	private int c_matching;
	
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public Timestamp getC_date() {
		return c_date;
	}
	public void setC_date(Timestamp c_date) {
		this.c_date = c_date;
	}
	public int getC_matching() {
		return c_matching;
	}
	public void setC_matching(int c_matching) {
		this.c_matching = c_matching;
	}
	
	
	
}
