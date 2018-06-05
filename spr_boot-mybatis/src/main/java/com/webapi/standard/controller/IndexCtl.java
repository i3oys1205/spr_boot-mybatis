package com.webapi.standard.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import domain.TimeVO;
import mapper.TimeMapper;

@RestController
public class IndexCtl {
	@Value("${local.background.location}")
	private String backgroundFile;
	
	@Autowired
	private TimeMapper timeMapper;
	
	@RequestMapping("/")
	public ModelAndView intro() throws Exception{
		return new ModelAndView("index");
	}
	
	@RequestMapping("/index") 
	public ModelAndView index() throws Exception{
		List<TimeVO> nTimeList = timeMapper.nTime();
		String path = backgroundFile;
		Random random = new Random();
		ModelAndView view = new ModelAndView("main");
		ArrayList<String> backgroundList = new ArrayList<>();
		
		File dirFile= new File(path);
		File[] fileList = dirFile.listFiles();
		for (File tempFile : fileList) {
			if (tempFile.isFile()) {
				backgroundList.add(tempFile.getName());
			}
		}
		view.addObject("nTime",nTimeList);
		view.addObject("background", backgroundList.get( random.nextInt(backgroundList.size()) ));
		return view;
	}
	
}
