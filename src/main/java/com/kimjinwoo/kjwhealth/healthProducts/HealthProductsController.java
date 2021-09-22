package com.kimjinwoo.kjwhealth.healthProducts;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kimjinwoo.kjwhealth.healthProducts.bo.HealthProductsBO;
import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;

@Controller
@RequestMapping("/post")
public class HealthProductsController {
	
	@Autowired
	private HealthProductsBO healthProductsBO;
	
	@GetMapping("/health_products/create")
	public String healthProductsCreateView() {
		return "/post/healthProductsCreateView";
	}
	
	@GetMapping("/health_products")
	public String healthProductsView(Model model) {
		
		List<HealthProducts> healthProducts = healthProductsBO.getHealthProducts();
		
		model.addAttribute("healthProducts", healthProducts);
		
		return "post/healthProducts";
	}
}
