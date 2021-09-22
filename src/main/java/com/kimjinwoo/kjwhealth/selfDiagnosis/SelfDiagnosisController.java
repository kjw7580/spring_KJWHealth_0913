package com.kimjinwoo.kjwhealth.selfDiagnosis;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class SelfDiagnosisController {
	
	@GetMapping("/self_diagnosis/create")
	public String selfDiagnosisCreateView() {
		return "/post/selfDiagnosisCreateView";
	}
}
