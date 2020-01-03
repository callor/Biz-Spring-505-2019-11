package com.biz.gallery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.gallery.domain.ImageVO;
import com.biz.gallery.repository.ImageDao;

@Service
public class ImageService {

	@Autowired
	ImageDao imDao;
	
	public List<ImageVO> selectAll(){
		return imDao.selectAll();
	}
	
	public int insert(ImageVO imageVO) {
		return imDao.insert(imageVO);
	}
	
}
