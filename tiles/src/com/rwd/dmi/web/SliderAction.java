package com.rwd.dmi.web;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rwd.dmi.dao.SliderDAO;
import com.rwd.dmi.dao.SliderDAOImpl;
import com.rwd.dmi.domain.Slider;

public class SliderAction extends ActionSupport implements ModelDriven<Slider> {

	private static final long serialVersionUID = -6867882218433039845L;
	
	private Slider slider = new Slider();
	private List<Slider> sliderList = new ArrayList<Slider>();
	private SliderDAO sliderDAO = new SliderDAOImpl();
		
	private int site_id;
	private int page_id;
	private String image_type;
	
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

	public String getImage_type() {		
		return image_type;
	}

	public void setImage_type(String image_type) {		
		this.image_type = image_type;		
	}

	@Override
	public Slider getModel() {
		return slider;
	}
	
	public String list()
	{		
		sliderList = sliderDAO.listSlider(this.getSite_id(), this.getPage_id(), this.getImage_type());		
		return SUCCESS;
	}
	
	public String boxlist()
	{
		sliderList = sliderDAO.listSlider(this.getSite_id(), this.getPage_id(), this.getImage_type());		
		return SUCCESS;
	}
	
	public String beltlist()
	{
		sliderList = sliderDAO.listSlider(this.getSite_id(), this.getPage_id(), this.getImage_type());		
		return SUCCESS;
	}
	
	public String recipe_img_box()
	{		
		sliderList = sliderDAO.listSlider(this.getSite_id(), this.getPage_id(), this.getImage_type());
		return SUCCESS;
	}
	
	public Slider getSlider() {
		return slider;
	}

	public void setSlider(Slider slider) {
		this.slider = slider;
	}

	public List<Slider> getSliderList() {
		return sliderList;
	}

	public void setSliderList(List<Slider> sliderList) {
		this.sliderList = sliderList;
	}			
}

