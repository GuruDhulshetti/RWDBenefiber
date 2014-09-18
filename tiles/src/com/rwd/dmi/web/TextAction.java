package com.rwd.dmi.web;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rwd.dmi.dao.TextDAO;
import com.rwd.dmi.dao.TextDAOImpl;
import com.rwd.dmi.domain.SubPage;
import com.rwd.dmi.domain.Text;

public class TextAction extends ActionSupport implements ModelDriven<Text> {
	
	private static final long serialVersionUID = -3847383587238163025L;
	private Text text = new Text();
	private List<Text> textList = new ArrayList<Text>();
	private List<SubPage> sub_menu_lst = new ArrayList<SubPage>();
	private TextDAO textDAO = new TextDAOImpl();
	
	private int site_id;
	private int page_id;	
	private int sub_page_id;
	private String txt_type;
	private String txt_hdr;
	private String txt_str;
	
	public String getTxt_hdr() {
		return txt_hdr;
	}

	public void setTxt_hdr(String txt_hdr) {
		this.txt_hdr = txt_hdr;
	}
	
	public String getTxt_str() {
		return txt_str;
	}

	public void setTxt_str(String txt_str) {
		this.txt_str = txt_str;
	}

	private String txt_link;
	
	@Override
	public Text getModel() {
		return text;
	}
	
	public String list()
	{		
		textList = textDAO.listText();		
		return SUCCESS;
	}
	
	public Text getText() {
		return text;
	}

	public void setText(Text text) {
		this.text = text;
	}

	public List<Text> getTextList() {
		return textList;
	}

	public void setTextList(List<Text> textList) {
		this.textList = textList;
	}
	
	public String steps(){		
		//setSub_menu_lst(textDAO.get_steps_txt(this.getSite_id(), this.getPage_id()));
		sub_menu_lst = textDAO.get_steps_txt(this.getSite_id(), this.getPage_id());
		return SUCCESS;
	}

	public int getSite_id() {
		return site_id;
	}

	public void setSite_id(int site_id) {
		this.site_id = site_id;
	}

	public int getPage_id() {
		return page_id;
	}

	public void setPage_id(int page_id) {
		this.page_id = page_id;		
	}

	public List<SubPage> getSub_menu_lst() {
		return sub_menu_lst;
	}

	public void setSub_menu_lst(List<SubPage> sub_menu_lst) {
		this.sub_menu_lst = sub_menu_lst;
	}
	
	public int getSub_page_id() {
		return sub_page_id;
	}

	public void setSub_page_id(int sub_page_id) {
		this.sub_page_id = sub_page_id;
	}
	
	public String sub_page_text(){
		textList = textDAO.get_sub_page_text(this.getSite_id(), this.getPage_id(), this.getSub_page_id());	
		return SUCCESS;
	}
	
	public String getTxt_type() {
		return txt_type;
	}

	public void setTxt_type(String txt_type) {
		this.txt_type = txt_type;
	}
	
	public String getTxt_link() {
		return txt_link;
	}

	public void setTxt_link(String txt_link) {
		this.txt_link = txt_link;
	}

	public String sub_page_tab_text(){	
		textList = textDAO.get_sub_page_tab_text(this.getSite_id(), this.getPage_id(), this.getSub_page_id(), this.getTxt_type() );
		return SUCCESS;
	}
}	

