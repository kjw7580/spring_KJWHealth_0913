package com.kimjinwoo.kjwhealth.healthProducts;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kimjinwoo.kjwhealth.diagnosisResult.bo.DiagnosisResultBO;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.DiagnosisResult;
import com.kimjinwoo.kjwhealth.healthProducts.bo.HealthProductsBO;
import com.kimjinwoo.kjwhealth.healthProducts.model.Criteria;
import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;
import com.kimjinwoo.kjwhealth.healthProducts.model.PageMaker;

@Controller
@RequestMapping("/post")
public class HealthProductsController {
	
	@Autowired
	private HealthProductsBO healthProductsBO;
	
	@Autowired
	private DiagnosisResultBO diagnosisResultBO;
	
	@GetMapping("/health_products/create")
	public String healthProductsCreateView() {
		return "/post/healthProductsCreateView";
	}
	
	@GetMapping("/health_products")
	public String healthProductsView(Model model
			, Criteria criteria) throws Exception {
		
		List<HealthProducts> healthProducts = healthProductsBO.getHealthProducts();
		
		model.addAttribute("healthProducts", healthProducts);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(healthProductsBO.countArticles(criteria));
		
		
		model.addAttribute("articles", healthProductsBO.listCriteria(criteria)); 
		model.addAttribute("pageMaker", pageMaker); 
		
		return "post/healthProducts";
	}
	
	@GetMapping("/health_products_list_paging")
	public String healthProductsListPagingView(Model model
			, Criteria criteria) throws Exception {
		
		List<HealthProducts> healthProducts = healthProductsBO.getHealthProducts();
		
		model.addAttribute("healthProducts", healthProducts);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria); 
		pageMaker.setTotalCount(healthProductsBO.countArticles(criteria));
		
		
		model.addAttribute("articles", healthProductsBO.listCriteria(criteria)); 
		model.addAttribute("pageMaker", pageMaker); 
		
		return "post/healthProductsListPaging";
	}
	
	@GetMapping("/detail_health_products")
	public String detailRecordView(Model model
			, @RequestParam("id") int id
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<DiagnosisResult> diagnosisResultList = diagnosisResultBO.getDiagnosisResult(id, userId);
		
		List<HealthProducts> healthProductsList = new ArrayList<HealthProducts>();
		
		for(DiagnosisResult diagnosisResult : diagnosisResultList) {
			
			String healthProductsIds[] = diagnosisResult.getHealthProductsId().split(",");
			for(String healthProductsId : healthProductsIds) {
				
				HealthProducts healthProducts = healthProductsBO.getHealthProductsById(Integer.parseInt(healthProductsId));
				healthProductsList.add(healthProducts);
			}
			
		}
		
		model.addAttribute("healthProductsList", healthProductsList);
		
		return "post/detailHealthProductsView";
	}
}
