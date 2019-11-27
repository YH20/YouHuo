package com.youhuo.dto;

import java.util.List;

import com.youhuo.pojo.Goods;

public class JsonDate {
		
		private int code;
		private int type;
		private List<Goods> date;
		
		public final int getCode() {
			return code;
		}
		public final void setCode(int code) {
			this.code = code;
		}
		public final int getType() {
			return type;
		}
		public final void setType(int type) {
			this.type = type;
		}
	
		public final List<Goods> getDate() {
			return date;
		}
		public final void setDate(List<Goods> date) {
			this.date = date;
		}
		
}
