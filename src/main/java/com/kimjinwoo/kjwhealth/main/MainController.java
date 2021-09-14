package com.kimjinwoo.kjwhealth.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class MainController {
	
	@GetMapping("/main")
	public String mainView() {
		return "post/main";
	}
	
}
