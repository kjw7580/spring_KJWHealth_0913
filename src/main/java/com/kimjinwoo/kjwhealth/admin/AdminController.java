package com.kimjinwoo.kjwhealth.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/main")
	public String adminMainView() {
		return "admin/main";
	}
}
