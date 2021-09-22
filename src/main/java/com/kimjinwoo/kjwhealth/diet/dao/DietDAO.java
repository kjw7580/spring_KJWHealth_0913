package com.kimjinwoo.kjwhealth.diet.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.diet.model.Diet;

@Repository
public interface DietDAO {

	public int insertDiet(
			@Param("minBMI") int minBMI
			, @Param("maxBMI") int maxBMI
			, @Param("name") String name
			, @Param("imagePath") String imagePath
			, @Param("recipe") String recipe);
	
	public List<Diet> selectDiet();
}
