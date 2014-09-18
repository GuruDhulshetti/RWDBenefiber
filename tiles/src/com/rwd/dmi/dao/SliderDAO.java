package com.rwd.dmi.dao;

import java.util.List;

import com.rwd.dmi.domain.Slider;

public interface SliderDAO {
	public List<Slider> listSlider(int sid, int pid, String img_type);

}
