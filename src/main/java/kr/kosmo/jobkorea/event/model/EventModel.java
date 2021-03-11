package kr.kosmo.jobkorea.event.model;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class EventModel {
	
//		public EventModel(){
//			this.e_title = e_title;
//			this.e_content = e_content;
//			this.thumnail_img = thumnail_img;
//			this.detail_banner = detail_banner;			
//		}
	
		private int e_id;
		private String e_title;
		private Date e_sdate;
		private Date e_edate;
		private String e_content;
		private int f_id;
		private Date reg_date;
		
		private String loginID;
		private String coupon_no;
		private String thumnail_img;
		private String detail_banner;
		

			
}