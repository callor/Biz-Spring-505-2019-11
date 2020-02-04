package com.biz.bbs.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.bbs.domain.BBsVO;
import com.biz.bbs.service.BBsService;

@RequestMapping(value="/bbs")
@Controller
public class BBsController {
	
	private final BBsService bService;

	@Autowired	
	public BBsController(@Qualifier("bServcieV1") BBsService bService) {
		super();
		this.bService = bService;
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String selectAll(Model model) {
		
		List<BBsVO> bbsList = bService.selectAll();
		model.addAttribute("LIST",bbsList);
		model.addAttribute("BODY","BBS_LIST");
		
		return "home";
		
	}
	
	@RequestMapping(value="/input",method=RequestMethod.GET)
	public String input(Model model) {
		
		BBsVO bbsVO = new BBsVO();
		model.addAttribute("bbsVO",bbsVO);
		model.addAttribute("BODY","BBS_INPUT");
		return "home";
	}
	
	
	
	
	
	
	
	
	
}
