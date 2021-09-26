package com.kimjinwoo.kjwhealth.BMI;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kimjinwoo.kjwhealth.BMI.bo.BMIBO;

@RestController
@RequestMapping("/post")
public class BMIRestController {
	
	@Autowired
	private BMIBO bmiBO;
	
	@PostMapping("/BMI/create")
	public Map<String, String> create(
			@RequestParam("age") String age
			, @RequestParam("height") String height
			, @RequestParam("weight") String weight
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int iAge = -1;
		int iHeight = -1;
		int iWeight = -1;
		try {
			iAge = Integer.parseInt(age);
		} catch (NumberFormatException e) {
			System.out.println("age error");
		}
		try {
			iHeight = Integer.parseInt(height);
		} catch (NumberFormatException e) {
			System.out.println("height error");
		}
		try {
			iWeight = Integer.parseInt(weight);
		} catch (NumberFormatException e) {
			System.out.println("weight error");
		}
		
		int count = bmiBO.addBMI(userId, iAge, iHeight, iWeight);
		
		String bmi = Double.toString((double)iWeight / (((double)iHeight / 100) * ((double)iHeight / 100)));
		
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
			result.put("bmi", bmi);
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}

}
