package com.kimjinwoo.kjwhealth.diet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kimjinwoo.kjwhealth.diet.bo.DietBO;
import com.kimjinwoo.kjwhealth.diet.model.Diet;

@Controller
@RequestMapping("/post")
public class DietController {
	
	@Autowired
	private DietBO dietBO;
	
	@GetMapping("/diet/create")
	public String dietCreateView() {
		return "/post/dietCreateView";
	}

	@GetMapping("/recipe")
	public String recipeView(Model model) {
		
		List<Diet> diet = dietBO.getDiet();
		
		model.addAttribute("diet", diet);
		
		return "post/recipe";
	}
}
