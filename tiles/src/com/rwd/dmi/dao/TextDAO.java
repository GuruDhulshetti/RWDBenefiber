package com.rwd.dmi.dao;

import java.util.List;

import com.rwd.dmi.domain.SubPage;
import com.rwd.dmi.domain.Text;

public interface TextDAO {
	
	public List<Text> listText();
	public List<SubPage> get_steps_txt(int sid, int pid);
	public List<Text> get_sub_page_text(int sid, int pid, int subpageid);
	public List<Text> get_sub_page_tab_text(int sid, int pid, int subpageid, String type);
	
}
