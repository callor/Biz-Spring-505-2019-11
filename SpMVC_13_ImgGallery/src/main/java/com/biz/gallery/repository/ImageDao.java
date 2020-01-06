package com.biz.gallery.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.gallery.domain.ImageVO;

public interface ImageDao {

	@Select("SELECT * FROM tbl_gallery")
	public List<ImageVO> selectAll();
	
	@InsertProvider(type=ImageSQL.class,method="insert_sql")
	public int insert(ImageVO imageVO);

	@Select("SELECT * FROM tbl_gallery WHERE img_seq = #{img_seq}")
	public ImageVO findBySeq(String img_seq);

	@UpdateProvider(type=ImageSQL.class,method="update_sql")
	public int update(ImageVO imageVO);

	@Delete("DELETE FROM tbl_gallery "
			+ "WHERE img_seq = #{img_seq}")
	public int delete(String img_seq);
	
}
