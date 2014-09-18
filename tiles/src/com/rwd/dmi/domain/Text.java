package com.rwd.dmi.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="text_tbl")
public class Text {

	private Integer textid;
	private Integer siteid;
	private int pageid;
	private int subpageid;
	private String texthdr;
	private String textstr;
	private String texttype;
	private String textlink;
	
	@Id
	@Column(name="TEXT_ID")
	public Integer getTextid() {
		return textid;
	}
	public void setTextid(Integer textid) {
		this.textid = textid;
	}
	
	@Column(name="SITE_ID")
	public Integer getSiteid() {
		return siteid;
	}
	public void setSiteid(Integer siteid) {
		this.siteid = siteid;
	}
	
	@Column(name="PAGE_ID")
	public int getPageid() {
		return pageid;
	}
	public void setPageid(int pageid) {
		this.pageid = pageid;
	}
	
	@Column(name="TEXT_HEADER")
	public String getTexthdr() {
		return texthdr;
	}
	public void setTexthdr(String texthdr) {
		this.texthdr = texthdr;
	}
	
	@Column(name="TEXT_STRING")
	public String getTextstr() {
		return textstr;
	}
	public void setTextstr(String textstr) {
		this.textstr = textstr;
	}
	
	@Column(name="TEXT_TYPE")
	public String getTexttype() {
		return texttype;
	}
	public void setTexttype(String texttype) {
		this.texttype = texttype;
	}
	
	@Column(name="SUB_PAGE_ID")
	public int getSubpageid() {
		return subpageid;
	}
	public void setSubpageid(int subpageid) {				
		this.subpageid = subpageid;			
	}
	
	@Column(name="TEXT_LINK")
	public String getTextlink() {
		return textlink;
	}
	public void setTextlink(String textlink) {
		this.textlink = textlink;
	}
}
