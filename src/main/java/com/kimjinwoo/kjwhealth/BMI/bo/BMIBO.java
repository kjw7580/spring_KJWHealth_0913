package com.kimjinwoo.kjwhealth.BMI.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimjinwoo.kjwhealth.BMI.dao.BMIDAO;
import com.kimjinwoo.kjwhealth.BMI.model.BMI;

@Service
public class BMIBO {
	
	@Autowired
	private BMIDAO bmiDAO;
	
	public int addBMI(int userId, int age, int height, int weight) {
		return bmiDAO.insertBMI(userId, age, height, weight);
	}
	
	public List<BMI> getBMI() {
		return bmiDAO.selectBMI();
	}

}
