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
import com.kimjinwoo.kjwhealth.post.model.Criteria;
import com.kimjinwoo.kjwhealth.post.model.PageMaker;
import com.kimjinwoo.kjwhealth.post.model.Post;
import com.kimjinwoo.kjwhealth.post.model.PostWithComments;

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
//			@RequestParam(value = "nextId", required = false) Integer nextId
//			, @RequestParam(value = "prevId", required = false) Integer prevId
//			, @RequestParam("id") int id
			@RequestParam(value = "word", required = false) String word
			, @RequestParam(value = "key", required = false) String key
			, Criteria criteria
			, Model model
			, Post post
			, HttpServletRequest request) throws Exception {

//		HttpSession session = request.getSession();
//		
//		int userId = (Integer)session.getAttribute("userId");
		
		// 10 9 8 | 7 6 5 | 4 3 2 | 1
		// 5 6 7 | 8 9 10
//		List<Post> healthList = postBO.getHealthList(userId, word, key, nextId, prevId);
//		
//		int currentNextId = 0;
//		int currentPrevId = 0;
		
		// 마지막 페이지가 아니라면 nextId 셋팅
//		int listLastIndex = healthList.get(healthList.size() - 1).getId();
//		if(!postBO.isLastPage(userId, listLastIndex)) {
//			currentNextId = listLastIndex;
//		}
//		
//		int listFirstIndex = healthList.get(0).getId();
//		if(!postBO.isFirstPage(userId, listFirstIndex)) {
//			currentPrevId = listFirstIndex;
//		}
//		
//		model.addAttribute("healthList", healthList);
//		model.addAttribute("nextId", currentNextId);
//		model.addAttribute("prevId", currentPrevId);
		
		List<Post> getPostHealthList = postBO.getPostHealthListView(word, key);
		
//		Page<Post> getPageList = postBO.getPageList(PageRequest.of(0, 20));
		
		model.addAttribute("getPostHealthList", getPostHealthList);
		model.addAttribute("post", post);
		
		criteria.setKey(key);
		criteria.setWord(word);
		
		List<Post> articles = null;
		int totalCount = 0;
		if (key == null) {
			articles = postBO.listCriteria(criteria);
			totalCount = postBO.countArticles(criteria);
		} else if (key.equals("subject")) {
			articles = postBO.searchSubject(criteria);
			totalCount = postBO.countSubject(criteria);
		} else if (key.equals("content")) {
			articles = postBO.searchContent(criteria);
			totalCount = postBO.countContent(criteria);
		} else if (key.equals("createdAt")) {
			articles = postBO.searchCreatedAt(criteria);
			totalCount = postBO.countCreatedAt(criteria);
		} else if (key.equals("subjectContent")) {
			articles = postBO.searchSubjectContent(criteria);
			totalCount = postBO.countSubjectContent(criteria);
		} else if (key.equals("subjectCreatedAt")) {
			articles = postBO.searchSubjectCreatedAt(criteria);
			totalCount = postBO.countSubjectCreatedAt(criteria);
		} else if (key.equals("contentCreatedAt")) {
			articles = postBO.searchContentCreatedAt(criteria);
			totalCount = postBO.countContentCreatedAt(criteria);
		} else if (key.equals("all")) {
			articles = postBO.searchAll(criteria);
			totalCount = postBO.countAll(criteria);
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria); 
//		pageMaker.setTotalCount(postBO.countArticles(criteria));
		pageMaker.setTotalCount(totalCount);
		
		
//		model.addAttribute("articles", postBO.listCriteria(criteria)); 
		model.addAttribute("articles", articles); 
		model.addAttribute("pageMaker", pageMaker);
		
		return "post/listView";
	}
	
	@GetMapping("/myList_view")
	public String myListView(Model model
			, Criteria criteria
			, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Post> myHealthList = postBO.getMyHealthList(userId);
		
		model.addAttribute("myHealthList", myHealthList);
		
		criteria.setUserId(userId);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(postBO.myCountArticles(criteria));
		
		
		model.addAttribute("articles", postBO.myListCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker); 
		
		return "post/myListView";
		
	}
	
	@GetMapping("/myList_paging")
	public String myListPagingView(Model model
			, Criteria criteria
			, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Post> myHealthList = postBO.getMyHealthList(userId);
		
		model.addAttribute("myHealthList", myHealthList);
		
		criteria.setUserId(userId);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(postBO.myCountArticles(criteria));
		
		
		model.addAttribute("articles", postBO.myListCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker); 
		
		return "post/myListPaging";
		
	}
	
	@GetMapping("/detail_view")
	public String detailView(Model model
			, @RequestParam("id") int id
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostWithComments> postList = postBO.getPostHealthList(id, userId);
		
		model.addAttribute("postList", postList);
		
		return "post/detailView";
	}
	
	@GetMapping("list_paging")
	public String listPagingView(Model model
			, @RequestParam(value = "word", required = false) String word
			, @RequestParam(value = "key", required = false) String key
			, @RequestParam(value = "page", required = false) String page
			, Criteria criteria
			, Post post) throws Exception {
		
		List<Post> getPostHealthList = postBO.getPostHealthListView(word, key);
		
		model.addAttribute("getPostHealthList", getPostHealthList);
		
		criteria.setKey(key);
		criteria.setWord(word);
		
		List<Post> articles = null;
		int totalCount = 0;
		if (key == null) {
			articles = postBO.listCriteria(criteria);
			totalCount = postBO.countArticles(criteria);
		} else if (key.equals("subject")) {
			articles = postBO.searchSubject(criteria);
			totalCount = postBO.countSubject(criteria);
		} else if (key.equals("content")) {
			articles = postBO.searchContent(criteria);
			totalCount = postBO.countContent(criteria);
		} else if (key.equals("createdAt")) {
			articles = postBO.searchCreatedAt(criteria);
			totalCount = postBO.countCreatedAt(criteria);
		} else if (key.equals("subjectContent")) {
			articles = postBO.searchSubjectContent(criteria);
			totalCount = postBO.countSubjectContent(criteria);
		} else if (key.equals("subjectCreatedAt")) {
			articles = postBO.searchSubjectCreatedAt(criteria);
			totalCount = postBO.countSubjectCreatedAt(criteria);
		} else if (key.equals("contentCreatedAt")) {
			articles = postBO.searchContentCreatedAt(criteria);
			totalCount = postBO.countContentCreatedAt(criteria);
		} else if (key.equals("all")) {
			articles = postBO.searchAll(criteria);
			totalCount = postBO.countAll(criteria);
		}
		
		PageMaker pageMaker = new PageMaker(); 
		pageMaker.setCriteria(criteria); 
//		pageMaker.setTotalCount(postBO.countArticles(criteria)); 
		pageMaker.setTotalCount(totalCount); 
		
		
		model.addAttribute("articles", articles);
//		model.addAttribute("articles", postBO.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker); 
		
		return "/post/listPaging";

	}
		
}
