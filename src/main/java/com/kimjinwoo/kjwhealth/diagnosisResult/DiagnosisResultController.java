package com.kimjinwoo.kjwhealth.diagnosisResult;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class DiagnosisResultController {
	
	@GetMapping("/diagnosis_result")
	public String mainView() {
		return "post/diagnosisResult";
	}
}
