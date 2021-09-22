package com.kimjinwoo.kjwhealth.healthProducts.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;

@Repository
public interface HealthProductsDAO {

	public int insertHealthProducts(
			@Param("minBMI") int minBMI
			, @Param("maxBMI") int maxBMI
			, @Param("name") String name
			, @Param("imagePath") String imagePath);
	
	public List<HealthProducts> selectHealthProducts();
	
}
