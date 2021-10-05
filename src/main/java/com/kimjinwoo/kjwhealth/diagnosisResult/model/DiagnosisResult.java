package com.kimjinwoo.kjwhealth.diagnosisResult.model;

import java.util.Date;

public class DiagnosisResult {

	private int id;
	private int userId;
	private String selfDiagnosisId;
	private String dietId;
	private String healthProductsId;
	private Date createdAt;
	private Date updatedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getSelfDiagnosisId() {
		return selfDiagnosisId;
	}
	public void setSelfDiagnosisId(String selfDiagnosisId) {
		this.selfDiagnosisId = selfDiagnosisId;
	}
	public String getDietId() {
		return dietId;
	}
	public void setDietId(String dietId) {
		this.dietId = dietId;
	}
	public String getHealthProductsId() {
		return healthProductsId;
	}
	public void setHealthProductsId(String healthProductsId) {
		this.healthProductsId = healthProductsId;
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
