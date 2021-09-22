package com.kimjinwoo.kjwhealth.diet.model;

import java.util.Date;

public class Diet {
	private int id;
	private int minBMI;
	private int maxBMI;
	private String name;
	private String imagePath;
	private String recipe;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getRecipe() {
		return recipe;
	}
	public void setRecipe(String recipe) {
		this.recipe = recipe;
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
