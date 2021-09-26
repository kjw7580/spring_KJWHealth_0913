package com.kimjinwoo.kjwhealth.BMI.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.BMI.model.BMI;

@Repository
public interface BMIDAO {

	public int insertBMI(
			@Param("userId") int userId
			, @Param("age") int age
			, @Param("height") int height
			, @Param("weight") int weight);
	
	public List<BMI> selectBMI();
}
