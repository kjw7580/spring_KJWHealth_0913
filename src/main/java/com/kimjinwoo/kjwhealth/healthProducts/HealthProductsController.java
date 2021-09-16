package com.kimjinwoo.kjwhealth.healthProducts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class HealthProductsController {
	
	@GetMapping("/health_products")
	public String healthProductsView() {
		return "post/healthProducts";
	}
}
