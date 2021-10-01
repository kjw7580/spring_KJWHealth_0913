package com.kimjinwoo.kjwhealth.post.comment.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimjinwoo.kjwhealth.post.comment.dao.CommentDAO;
import com.kimjinwoo.kjwhealth.post.comment.model.Comment;

@Service
public class CommentBO {

	@Autowired
	private CommentDAO commentDAO;
	
	public int addComment(int userId, String userName, int postId, String content) {
		return commentDAO.insertComment(userId, userName, postId, content);
	}
	
	public List<Comment> getCommentListByPostId(int postId) {
		return commentDAO.selectCommentByPostId(postId);
	}
	
	public int deleteComment(int postId) {
		return commentDAO.deleteComment(postId);
	}
}
