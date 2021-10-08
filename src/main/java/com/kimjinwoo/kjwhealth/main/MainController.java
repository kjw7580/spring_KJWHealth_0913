package com.kimjinwoo.kjwhealth.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kimjinwoo.kjwhealth.diagnosisResult.bo.DiagnosisResultBO;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.DiagnosisResult;
import com.kimjinwoo.kjwhealth.diet.bo.DietBO;
import com.kimjinwoo.kjwhealth.diet.model.Diet;
import com.kimjinwoo.kjwhealth.healthProducts.bo.HealthProductsBO;
import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;
import com.kimjinwoo.kjwhealth.post.bo.PostBO;
import com.kimjinwoo.kjwhealth.post.model.Post;

@Controller
@RequestMapping("/post")
public class MainController {
	
	@Autowired
	private DietBO dietBO;
	
	@Autowired
	private HealthProductsBO healthProductsBO;
	
	@Autowired
	private PostBO postBO;
	
	@Autowired
	private DiagnosisResultBO diagnosisResultBO;
	
	@GetMapping("/main")
	public String mainView(Model model) {
		
		List<Diet> diet = dietBO.getDiet();
		
		model.addAttribute("diet", diet);
		
		List<HealthProducts> healthProducts = healthProductsBO.getHealthProducts();
		
		model.addAttribute("healthProducts", healthProducts);
		
		List<Post> mainHealthList = postBO.getMainHealthList();
		
		model.addAttribute("mainHealthList", mainHealthList);
		
		return "post/main";
	}
	
	@GetMapping("/myPage")
	public String myPageView(Model model
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Post> myPagePost = postBO.getMyPageList(userId);
		
		model.addAttribute("myPagePost", myPagePost);
		
		List<DiagnosisResult> myPageDiagnosisResult = diagnosisResultBO.getMypageDiagnosisResult(userId);
		
		model.addAttribute("myPageDiagnosisResult", myPageDiagnosisResult);
		
		return "post/myPage";
	}
	
}
