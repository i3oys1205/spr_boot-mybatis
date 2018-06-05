package com.webapi.standard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AppCtl {

	@RequestMapping("/App")
	public ModelAndView Weather(HttpServletRequest request){
		return new ModelAndView("/app/"+request.getParameter("hd-name"));
	}
	
}
