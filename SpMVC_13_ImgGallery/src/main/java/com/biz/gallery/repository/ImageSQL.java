package com.biz.gallery.repository;

import org.apache.ibatis.jdbc.SQL;

public class ImageSQL {
	
	public String insert_sql() {
	
		return new SQL() {{
			INSERT_INTO("tbl_gallery");
			INTO_COLUMNS("img_seq");
			INTO_COLUMNS("img_title");
			INTO_COLUMNS("img_text");
			INTO_COLUMNS("img_file");
		
		INTO_VALUES("SEQ_GALLERY.NEXTVAL");
		INTO_VALUES("#{img_title,jdbcType=VARCHAR}");
		INTO_VALUES("#{img_text,jdbcType=VARCHAR}");
		INTO_VALUES("#{img_file,jdbcType=VARCHAR}");
		}}.toString();
		
	}
	

}
