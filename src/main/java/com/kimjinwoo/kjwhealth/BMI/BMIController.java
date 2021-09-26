package com.kimjinwoo.kjwhealth.BMI;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class BMIController {
	
	@GetMapping("/BMI/create")
	public String bmiCreateView() {
		return "post/diagnosis";
	}
}
