package com.rwd.dmi.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.rwd.dmi.domain.Faq;

public class FaqDAOImpl implements FaqDAO {

	@SessionTarget
	Session session;
    
	@TransactionTarget
	Transaction transaction;

	@SuppressWarnings("unchecked")
	@Override
	public List<Faq> listFaq() {	
		System.out.println("1");
		List<Faq> faqs = null;
		System.out.println("2");
		try {
			System.out.println("3");
			faqs = session.createQuery("from Faq").list();
			System.out.println("4");
		} catch (Exception e) {
			System.out.println("5");
			e.printStackTrace();
			System.out.println("5" + e.getMessage());
		} 
		System.out.println("6");
		return faqs;
	}
}