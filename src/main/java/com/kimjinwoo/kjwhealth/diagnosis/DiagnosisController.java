package com.kimjinwoo.kjwhealth.diagnosis;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class DiagnosisController {

	@GetMapping("/diagnosis")
	public String mainView() {
		return "post/diagnosis";
	}
}
