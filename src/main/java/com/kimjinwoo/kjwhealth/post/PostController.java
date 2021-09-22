package com.kimjinwoo.kjwhealth.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kimjinwoo.kjwhealth.post.bo.PostBO;
import com.kimjinwoo.kjwhealth.post.model.Post;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;
	
	@GetMapping("/create_view")
	public String createView() {
		return "post/createView";
	}
	
	@GetMapping("/list_view")
	public String listView(
			@RequestParam(value = "nextId", required = false) Integer nextId
			, @RequestParam(value = "prevId", required = false) Integer prevId
			, Model model
			, HttpServletRequest request) {

		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		// 10 9 8 | 7 6 5 | 4 3 2 | 1
		// 5 6 7 | 8 9 10
		List<Post> healthList = postBO.getHealthList(userId, nextId, prevId);
		
		int currentNextId = 0;
		int currentPrevId = 0;
		
		// 마지막 페이지가 아니라면 nextId 셋팅
		int listLastIndex = healthList.get(healthList.size() - 1).getId();
		if(!postBO.isLastPage(userId, listLastIndex)) {
			currentNextId = listLastIndex;
		}
		
		int listFirstIndex = healthList.get(0).getId();
		if(!postBO.isFirstPage(userId, listFirstIndex)) {
			currentPrevId = listFirstIndex;
		}
		
		model.addAttribute("healthList", healthList);
		model.addAttribute("nextId", currentNextId);
		model.addAttribute("prevId", currentPrevId);
		
		return "post/listView";
	}
	
	@GetMapping("/detail_view")
	public String detailView(Model model
			, @RequestParam("id") int id
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		Post post = postBO.getHealth(id, userId);
		
		model.addAttribute("post", post);
		
		return "post/detailView";
	}
		
}
