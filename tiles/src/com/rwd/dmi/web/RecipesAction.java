package com.rwd.dmi.web;

public class RecipesAction {
	
	private float page_id;
	
	public String execute(){
		return "success";
	}

	public float getPage_id() {
		return page_id;
	}

	public void setPage_id(float page_id) {
		this.page_id = page_id;		
	}
}
