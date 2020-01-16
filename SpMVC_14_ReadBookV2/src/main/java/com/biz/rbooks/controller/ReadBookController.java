package com.biz.rbooks.controller;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.rbooks.domain.ReadBookVO;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RequestMapping(value="/rbook")
@Controller
public class ReadBookController {

	/*
	 * 입력화면을 보여주기 위한 method
	 */
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String insert(Model model) {
		
		ReadBookVO rBookVO = new ReadBookVO();
		
		// java 1.8 이상에서 사용하는 날짜 클래스
		LocalDate localDate = LocalDate.now();
		String curDate = localDate.toString();
		
		LocalTime localTime = LocalTime.now();
		String curTime = localTime.toString();
		
		rBookVO.setRb_date(curDate);
		rBookVO.setRb_stime(curTime);
		
		model.addAttribute("rBookVO",rBookVO);
		return "rbooks/input";
		
	}
	
	
}
