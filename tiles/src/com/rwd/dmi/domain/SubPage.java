package com.rwd.dmi.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sub_page_tbl")

public class SubPage {
	
	private int sub_page_id;
	private int site_id;
	private int page_id;
	private String sub_page_txt;
	
	@Id
	@Column(name="SUB_PAGE_ID")
	public int getSub_page_id() {
		return sub_page_id;
	}
	public void setSub_page_id(int sub_page_id) {
		this.sub_page_id = sub_page_id;
	}
	
	@Column(name="SITE_ID")
	public int getSite_id() {
		return site_id;
	}
	public void setSite_id(int site_id) {
		this.site_id = site_id;
	}
	
	@Column(name="PAGE_ID")
	public int getPage_id() {
		return page_id;
	}
	public void setPage_id(int page_id) {
		this.page_id = page_id;
	}
	
	@Column(name="SUB_PAGE_TXT")
	public String getSub_page_txt() {
		return sub_page_txt;
	}
	public void setSub_page_txt(String sub_page_txt) {
		this.sub_page_txt = sub_page_txt;
	}		
}
