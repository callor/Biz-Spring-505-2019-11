package com.biz.gallery.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.gallery.domain.ImageFilesVO;
import com.biz.gallery.domain.ImageVO;
import com.biz.gallery.repository.ImageDao;

@Service("imgServiceV2")
public class ImageServiceV2 extends ImageService {

	@Autowired
	public ImageServiceV2(ImageDao imDao, ImageFileService ifService, FileService fService) {
		super(imDao, ifService, fService);
	}
	
	@Override
	public int insert(ImageVO imageVO) {
		List<ImageFilesVO> imgFiles 
				= imageVO.getImg_files();
		if(imgFiles != null && imgFiles.size()>0) {
			imageVO.setImg_file(imgFiles.get(0).getImg_file_upload_name());
			for(ImageFilesVO ifVO : imgFiles) {
				ifVO.setImg_file_origin_name(
						ifVO.getImg_file_upload_name().substring(36)
				);
			}
		}
		
		int ret = imDao.insert(imageVO);
		long img_pcode = imageVO.getImg_seq();
		ifService.imageFileInsert(imgFiles,img_pcode);
	
		return ret;
	}

	@Override
	public int update(ImageVO imageVO) {

		List<String> fileNames = imageVO.getImg_file_upload_name();
		if(fileNames != null && fileNames.size() > 0) {
			imageVO.setImg_file(fileNames.get(0));

			List<ImageFilesVO> files 
				= new ArrayList<ImageFilesVO>();
			for(String fileName : fileNames) {
				files.add(ImageFilesVO.builder()
							.img_file_origin_name(fileName.substring(36))
							.img_file_upload_name(fileName)
							.img_file_p_code(imageVO.getImg_seq())
							.build()
						);
			}
			ifService.imageFileInsert(files, imageVO.getImg_seq());
		}
		int ret = imDao.update(imageVO);
		return ret;
	
	}

}
