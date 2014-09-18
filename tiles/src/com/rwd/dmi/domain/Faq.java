package com.rwd.dmi.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FAQ")
public class Faq {

	private Integer id;
	private String faqs;
	
	@Id
	@GeneratedValue
	@Column(name="FAQ_ID")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	@Column(name="FAQS")
	public String getFaqs() {
		return faqs;
	}
	public void setFaqs(String faqs) {
		this.faqs = faqs;
	}	
}
