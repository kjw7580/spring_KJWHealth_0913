package com.kimjinwoo.kjwhealth.config;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PermissionInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		
		// 로그인이 되어 있지 않을때, post 페이지 이동을 막는다
		HttpSession session = request.getSession();
		
		// 현재 path 알아 오기
		String uri = request.getRequestURI();
		
		// 로그인이 안된 상태
		if(session.getAttribute("userId") == null) {
			// /post/**
			// /post/~ 페이지 로그인이 안되어 있으면 못가도록 설정
			if(uri.startsWith("/post/record")) {
				// 로그인 페이지로 이동
				response.sendRedirect("/user/signin_view");
				return false;
			} else if(uri.startsWith("/post/detail_view")) {
				// 로그인 페이지로 이동
				response.sendRedirect("/user/signin_view");
				return false;
			} else if(uri.startsWith("/post/diagnosis_result")) {
				// 로그인 페이지로 이동
				response.sendRedirect("/user/signin_view");
				return false;
			} else if(uri.startsWith("/post/myList")) {
				// 로그인 페이지로 이동
				response.sendRedirect("/user/signin_view");
				return false;
			}
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request
			, HttpServletResponse response
			, Object handler
			, ModelAndView modelAndView) {
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request
			, HttpServletResponse response
			, Object handler
			, Exception ex) {
		
	}
}
