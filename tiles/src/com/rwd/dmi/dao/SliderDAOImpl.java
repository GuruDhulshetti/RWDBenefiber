package com.rwd.dmi.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.rwd.dmi.domain.Slider;

public class SliderDAOImpl implements SliderDAO {

	@SessionTarget
	Session session;
    
	@TransactionTarget
	Transaction transaction;

	@SuppressWarnings("unchecked")
	@Override
	public List<Slider> listSlider(int sid, int pid, String img_type) {	
		List<Slider> sliders = null;
		try {	

			sliders = session.createCriteria(Slider.class).
					add(Restrictions.eq("type", img_type)).
					add(Restrictions.eq("siteid", sid)).
					add(Restrictions.eq("pageid", pid)).
					list();			
		} catch (Exception e) {
			System.out.println(" err "+e.getMessage());
			e.printStackTrace();
		} 
		return sliders;
	}
}