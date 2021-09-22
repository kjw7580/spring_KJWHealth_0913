package com.kimjinwoo.kjwhealth.diet;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.diet.bo.DietBO;

@RestController
@RequestMapping("/post")
public class DietRestController {
	
	@Autowired
	private DietBO dietBO;

	@PostMapping("/diet/create")
	public Map<String, String> create(
			@RequestParam("minBMI") String minBMI
			, @RequestParam("maxBMI") String maxBMI
			, @RequestParam("name") String name
			, @RequestParam(value="file", required=false) MultipartFile file
			, @RequestParam("recipe") String recipe
			, HttpServletRequest request) {
		
		int iMinBMI = -1;
		int iMaxBMI = -1;
		try {
			iMinBMI = Integer.parseInt(minBMI);
		} catch (NumberFormatException e) {
			System.out.println("MinBMI is not numeric");
		}
		try {
			iMaxBMI = Integer.parseInt(maxBMI);
		} catch (NumberFormatException e) {
			System.out.println("MaxBMI is not numeric");
		}
		int count = dietBO.addDiet(iMinBMI, iMaxBMI, name, file, recipe);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}

}
