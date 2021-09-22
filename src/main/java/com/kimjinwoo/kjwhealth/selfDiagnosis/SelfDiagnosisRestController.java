package com.kimjinwoo.kjwhealth.selfDiagnosis;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kimjinwoo.kjwhealth.selfDiagnosis.bo.SelfDiagnosisBO;

@RestController
@RequestMapping("/post")
public class SelfDiagnosisRestController {

	@Autowired
	private SelfDiagnosisBO selfDiagnosisBO;
	
	@PostMapping("/self_diagnosis/create")
	public Map<String, String> create(
			@RequestParam("minBMI") String minBMI
			, @RequestParam("maxBMI") String maxBMI
			, @RequestParam("content") String content
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
		int count = selfDiagnosisBO.addSelfDiagnosis(iMinBMI, iMaxBMI, content);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
}
