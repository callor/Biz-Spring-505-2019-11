package com.biz.gallery.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.biz.gallery.domain.ImageVO;
import com.biz.gallery.service.ImageService;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes({"imageVO"})
@Slf4j
@RequestMapping(value="/image")
@Controller
public class ImgController {
	
	@Autowired
	ImageService imService;
	
	@ModelAttribute("imageVO")
	public ImageVO newImageVO() {
		return new ImageVO();
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model) {
		
		List<ImageVO> imgList = imService.selectAll();
		model.addAttribute("imgList",imgList);
		return "home";
		
	}
	
	
	@RequestMapping(value="/upload",method=RequestMethod.GET)
	public String upload(
			@ModelAttribute("imageVO") ImageVO imageVO,
			Model model) {
		log.debug("이미지 업로드 시작!!");
		
		model.addAttribute("BODY","UPLOAD");
		model.addAttribute("imageVO",imageVO);
		return "home";
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String upload(
			@ModelAttribute("imageVO") ImageVO imageVO) {
		
		imService.insert(imageVO);
		return "redirect:/image/list";
		
	}
	

}
