package com.kimjinwoo.kjwhealth.selfDiagnosis.model;

import java.util.Date;

public class SelfDiagnosis {
	private int id;
	private int minBMI;
	private int maxBMI;
	private String content;
	private Date createdAt;
	private Date updatedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMinBMI() {
		return minBMI;
	}
	public void setMinBMI(int minBMI) {
		this.minBMI = minBMI;
	}
	public int getMaxBMI() {
		return maxBMI;
	}
	public void setMaxBMI(int maxBMI) {
		this.maxBMI = maxBMI;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
}
