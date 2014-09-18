package com.rwd.dmi.web;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rwd.dmi.dao.FaqDAO;
import com.rwd.dmi.dao.FaqDAOImpl;
import com.rwd.dmi.domain.Faq;

public class FaqAction extends ActionSupport implements ModelDriven<Faq> {

	private static final long serialVersionUID = 2379805887795920596L;

	private Faq faq = new Faq();
	private List<Faq> faqList = new ArrayList<Faq>();
	private FaqDAO faqDAO = new FaqDAOImpl();
	
	
	@Override
	public Faq getModel() {
		return faq;
	}
	
	public String list()
	{
		faqList = faqDAO.listFaq();
		return SUCCESS;
	}
	
	public String faq()
	{
		faqList = faqDAO.listFaq();
		return SUCCESS;
	}
		
	public Faq getFaq() {
		return faq;
	}

	public void setFaq(Faq faq) {
		this.faq = faq;
	}

	public List<Faq> getFaqList() {
		return faqList;
	}

	public void setFaqList(List<Faq> faqList) {
		this.faqList = faqList;
	}

}

