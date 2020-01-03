package com.biz.gallery.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping(value="/rest")
@RestController
public class ImgRestController {
	
	@RequestMapping(value="/file_up",method=RequestMethod.POST)
	public String file_up(
			@RequestParam("file") MultipartFile upfile) {
		return upfile.getOriginalFilename();
	}

}
