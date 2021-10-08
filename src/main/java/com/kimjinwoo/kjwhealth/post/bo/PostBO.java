package com.kimjinwoo.kjwhealth.post.bo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.common.FileManagerService;
import com.kimjinwoo.kjwhealth.post.comment.bo.CommentBO;
import com.kimjinwoo.kjwhealth.post.comment.model.Comment;
import com.kimjinwoo.kjwhealth.post.dao.PostDAO;
import com.kimjinwoo.kjwhealth.post.model.Post;
import com.kimjinwoo.kjwhealth.post.model.PostWithComments;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private CommentBO commentBO;
	
	public int addPost(int userId, String title, String content, MultipartFile file) {
		
		String filePath = null;
		if(file != null) {
			FileManagerService fileManager = new FileManagerService();
			
			filePath = fileManager.saveFile(userId, file);
			
			if(filePath == null) {
				return -1;
			}
		}
		
		return postDAO.insertPost(userId, title, content, filePath);
	}
	
	public List<Post> getPostHealthListView(String word, String key) {
		return postDAO.selectPostHealthListView(word, key);
	}
	
	public List<Post> getMyHealthList(int userId) {
		return postDAO.selectMyHealthList(userId);
	}
	
	public List<Post> getMyPageList(int userId) {
		return postDAO.selectMyPageList(userId);
	}
	
//	public List<Post> getPageList() {
//		return postDAO.selectPageList();
//	}
	
	public List<PostWithComments> getPostHealthList(int id, int userId) {
		List<Post> postList = postDAO.selectPostHealthList(id);
		
		List<PostWithComments> postWithCommentsList = new ArrayList<>();
		
		for(Post post : postList) {
			List<Comment> commentList = commentBO.getCommentListByPostId(post.getId());
			
			PostWithComments postWithComments = new PostWithComments();
			postWithComments.setPost(post);
			postWithComments.setCommentList(commentList);
			
			postWithCommentsList.add(postWithComments);
		}
		
		return postWithCommentsList;
	}
	
//	public List<Post> getHealthList(int userId, String word, String key, Integer nextId, Integer prevId) {
//		if(nextId != null) {
//			return postDAO.selectHealthListByNextId(userId, nextId);
//		} else if(prevId != null) {	// 이전버튼
//			// 11 12 13
//			
//			// 13 12 11
//			List<Post> healthList = postDAO.selectHealthListByPrevId(userId, prevId);
//			Collections.reverse(healthList);
//			return healthList;
//		}
//		
//		return postDAO.selectHealthList(userId, word, key);
//	}
	
	public List<Post> getMainHealthList() {
		return postDAO.selectMainHealthList();
	}
	
//	public boolean isLastPage(int userId, int nextId) {
//		return postDAO.lastPost(userId).getId() == nextId;
//	}
//	
//	public boolean isFirstPage(int userId, int prevId) {
//		return postDAO.firstPost(userId).getId() == prevId;
//	}
	
	public Post getHealth(int id, int userId) {
		return postDAO.selectHealth(id, userId);
	}
	
	public int updateHealth(int id, String subject, String content) {
		return postDAO.updatePost(id, subject, content);
	}
	
	public int deleteHealth(int id, int userId) {
		return postDAO.deletePost(id, userId);
	}
}
