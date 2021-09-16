package com.kimjinwoo.kjwhealth.recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class RecipeController {

	@GetMapping("/recipe")
	public String recipeView() {
		return "post/recipe";
	}
}
