package com.kimjinwoo.kjwhealth.diagnosisResult;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kimjinwoo.kjwhealth.diagnosisResult.bo.DiagnosisResultBO;

@RestController
@RequestMapping("/post")
public class DiagnosisResultRestController {
	
	@Autowired
	private DiagnosisResultBO diagnosisResultBO;

	@PostMapping("/diagnosis_result/create")
	public Map<String, String> create(
			@RequestParam Map<Object, String> param
//			@RequestParam("selfDiagnosisId") List<String> selfDiagnosisIdList
//			, @RequestParam("dietId") List<String> dietIdList
//			, @RequestParam("healthProductsId") List<String> healthProductsIdList
//			@RequestParam("selfDiagnosisContent") String selfDiagnosisContent
//			, @RequestParam("dietName") String dietName
//			, @RequestParam("healthProductsName") String healthProductsName
//			, @RequestParam("dietImagePath") String dietImagePath
//			, @RequestParam("healthProductsImagePath") String healthProductsImagePath
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = diagnosisResultBO.addDiagnosisResult(userId, param.get("selfDiagnosisId").toString(), param.get("dietId").toString(), param.get("healthProductsId").toString());
		
		Map<String, String> result = new HashMap<>();

		System.out.println(param.get("selfDiagnosisId").toString());
		System.out.println(param.get("dietId").toString());
		System.out.println(param.get("healthProductsId").toString());

		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
}
