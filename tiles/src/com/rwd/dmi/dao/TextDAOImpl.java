package com.rwd.dmi.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.rwd.dmi.domain.SubPage;
import com.rwd.dmi.domain.Text;

public class TextDAOImpl implements TextDAO {

	@SessionTarget
	Session session;
    
	@TransactionTarget
	Transaction transaction;

	@SuppressWarnings("unchecked")
	@Override
	public List<Text> listText() {	
		List<Text> texts = null;
		try {
			texts = session.createQuery("from Text").list();					
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return texts;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SubPage> get_steps_txt(int sid, int pid) {	
		List<SubPage> sub_menu_lst = null;
		try {
			sub_menu_lst = session.createCriteria(SubPage.class).
					add(Restrictions.eq("site_id", sid)).
					add(Restrictions.eq("page_id", pid))
					.list();		
		} catch (Exception e) {
			System.out.println(" error in get steps txt " + e.getMessage());
			e.printStackTrace();
		} 
		return sub_menu_lst;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Text> get_sub_page_text(int sid, int pid, int subpageid) {
		List<Text> sub_page_txt_lst = null;
		try{
			sub_page_txt_lst = session.createCriteria(Text.class).
					add(Restrictions.eq("siteid", sid)).
					add(Restrictions.eq("pageid", pid)).
					add(Restrictions.eq("subpageid", subpageid)).list();
		}catch(Exception e){
			System.out.println(" error in get sub page txt " + e.getMessage());
			e.printStackTrace();
		}
		return sub_page_txt_lst;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Text> get_sub_page_tab_text(int sid, int pid, int subpageid,
			String type) {
		List<Text> sub_page_tab_txt_lst = null;
		try{
			sub_page_tab_txt_lst = session.createCriteria(Text.class).
					add(Restrictions.eq("siteid", sid)).
					add(Restrictions.eq("pageid", pid)).
					add(Restrictions.eq("subpageid", subpageid)).
					add(Restrictions.like("texttype", type)).
					list();	
		}catch(Exception e){
			System.out.println(" error in get sub page txt " + e.getMessage());
			e.printStackTrace();
		}		
		return sub_page_tab_txt_lst;
	}
}