package com.biz.bbs.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.biz.bbs.domain.BBsVO;
import com.biz.bbs.mapper.BbsDao;

import lombok.RequiredArgsConstructor;


@Service("bServcieV1")
@RequiredArgsConstructor
public class BBsServiceImplV1 implements BBsService {

	/*
	 * protected
	 * 상속받은 클래서만 접근가능하도록 한다.
	 * 
	 */
	protected final BbsDao bbsDao;
	
	@Override
	public List<BBsVO> selectAll() {
		// TODO Auto-generated method stub
		return bbsDao.selectAll();
	}

	@Override
	public BBsVO findById(long bbs_id) {
		return bbsDao.findById(bbs_id);
		//return null;
	}

	@Override
	public List<BBsVO> findBySubjects(String subject) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BBsVO> findByWriters(String writer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BBsVO> findBySubAndWriter(String subject, String writer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int save(BBsVO bbsVO) {

		long bbs_id = bbsVO.getBbs_id();
		if(bbs_id > 0) {
			bbsDao.update(bbsVO);
		} else {
			bbsDao.insert(bbsVO);
		}
		return 0;
	}

	@Override
	public int delete(long bbs_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}