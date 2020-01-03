package com.biz.gallery.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService {

	@Autowired
	String filePath;
	
	public String file_up(MultipartFile mFile) {
		
		if(mFile == null) {
			return null;
		}

		// 폴더 객체 생성
		File dir = new File(filePath);
		if(!dir.exists()) {
			// c:/bizwork/files
			// bizwork 폴더가 있고, files 폴더만 없을때
			dir.mkdir();
			
			// bizwork 폴더도 없고, files 폴더를 찾을 수 없을때
			// 모든 경로를 생성
			dir.mkdirs();
		}
		String strUUID = UUID.randomUUID().toString();
		
		String originaName = mFile.getOriginalFilename();
		
		String upLoadFileName = strUUID + originaName;
		
		// 업로드할 파일 객체 생성
		File upLoadFile = new File(filePath,upLoadFileName);
		
		try {
			
			mFile.transferTo(upLoadFile);
			return upLoadFileName;
			
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}




