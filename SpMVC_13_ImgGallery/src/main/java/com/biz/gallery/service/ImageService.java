package com.biz.gallery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.gallery.domain.ImageVO;
import com.biz.gallery.repository.ImageDao;

@Service
public class ImageService {
	
	/*
	 * 기존방법 : setter 주입방식
	 * 		@Autowired
	 * 		클래스 객체
	 */
	
	private final ImageDao imDao;
	private final FileService fService;
	
	/*
	 * 생성자에서 객체 주입
	 * 	사용하는 객체를 final로 선언해서 보호할수 있고
	 * 		혹시모를 해킹에 의한 데이터 변조를 막을수 있다.
	 * 	클래스의 교차참조를 컴파일러 차원에서 방지할수 있다.
	 * 코드가 다소 번잡스러울수 있지만
	 * setter 주입보다는 
	 * 		constructor(생성자) 주입방식을 사용하자
	 * 인텔리제이(intelij) setter 주입방식을 사용하면
	 * 		ide가 심각한 경고를 보인다.
	 */
	@Autowired
	public ImageService(ImageDao imDao, 
						FileService fService) {
		super();
		this.imDao = imDao;
		this.fService = fService;
	}
	
	public List<ImageVO> selectAll(){
		return imDao.selectAll();
	}
	
	public int insert(ImageVO imageVO) {
		return imDao.insert(imageVO);
	}

	
	public ImageVO findBySeq(String img_seq) {

		ImageVO imgVO = imDao.findBySeq(img_seq);
		return imgVO;
	}

	/*
	 * 혹시 파일이 변경이 되면 기존파일을 먼저 제거하고
	 * 새로운 파일로 등록
	 */
	public int update(ImageVO imageVO) {
		
		ImageVO oldImageVO 
			= imDao.findBySeq(imageVO.getImg_seq() + "" );
		
		// 새로 업데이트된 파일이름이
		// 기존 테이블에 저장된 파일이름과 다르면
		// 먼저 파일을 삭제한다.
		if(oldImageVO.getImg_file() != null 
				&& imageVO.getImg_file() != null) {
			if(!oldImageVO
					.getImg_file()
					.equals(imageVO.getImg_file())) {
				fService.file_delete(oldImageVO.getImg_file());
			}
		}

		int ret = imDao.update(imageVO);
		return ret ;
	
	}

	
	public int delete(String img_seq) {

		ImageVO imgVO = imDao.findBySeq(img_seq);
		if(imgVO.getImg_file() != null) {
			fService.file_delete(imgVO.getImg_file());
		}
		int ret = imDao.delete(img_seq);
		return ret;
	
	}
}
