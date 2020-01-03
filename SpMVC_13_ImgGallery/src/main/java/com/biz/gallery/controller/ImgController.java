package com.biz.gallery.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.biz.gallery.domain.ImageVO;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes({"imageVO"})
@Slf4j
@RequestMapping(value="/image")
@Controller
public class ImgController {
	
	@ModelAttribute("imageVO")
	public ImageVO newImageVO() {
		return new ImageVO();
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

}
