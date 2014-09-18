package com.rwd.dmi.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="img_tbl")
public class Slider {

	private int imgid;
	private int siteid;
	private int pageid;
	private String type;
	private String large_img_path;
	private String small_img_path;
	private String title;
	private String img_link;
	private String div_id;
	
	
	@Id
	@Column(name="IMG_ID")
	public int getImgid() {
		return imgid;
	}
	public void setImgid(int imgid) {
		this.imgid = imgid;
	}
	
	@Column(name="SITE_ID")
	public int getSiteid() {
		return siteid;
	}
	public void setSiteid(int siteid) {
		this.siteid = siteid;
	}
	
	@Column(name="PAGE_ID")
	public int getPageid() {
		return pageid;
	}
	public void setPageid(int pageid) {
		this.pageid = pageid;
	}
	
	@Column(name="IMG_TYPE")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name="LARGE_IMG_PATH")
	public String getLarge_img_path() {
		return large_img_path;
	}
	public void setLarge_img_path(String large_img_path) {
		this.large_img_path = large_img_path;
	}
	
	@Column(name="SMALL_IMG_PATH")
	public String getSmall_img_path() {
		return small_img_path;
	}
	public void setSmall_img_path(String small_img_path) {
		this.small_img_path = small_img_path;
	}
	
	@Column(name="IMG_TITLE")
	public String getTitle(){
		return title;
	}	
	public void setTitle(String title){
		this.title = title;
	}
	
	@Column(name="IMG_LINK")
	public String getImg_link(){
		return this.img_link;
	}	
	public void setImg_link(String img_link){
		this.img_link = img_link;
	}
	
	@Column(name="DIV_ID")
	public String getDiv_id() {
		return div_id;
	}
	public void setDiv_id(String div_id) {
		this.div_id = div_id;
	}
	
}
