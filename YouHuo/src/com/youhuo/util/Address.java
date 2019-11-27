package com.youhuo.util;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;


import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
/**
 * jdom解析XML,读取中国省市区三级联动地址
 * @author DQing
 *
 */
public class Address {
	public List getAdress(String proname,String cityname1){
		//1.创建SAXBuilder对象
        SAXBuilder saxBuilder = new SAXBuilder();
        InputStream is;
        Document document;
        Element CNaddress;
        List<Element> provinceElement;
        List list=new ArrayList();
        list.add("请选择当前项····");
		try {
			//2.创建输入流
			is=Address.class.getResourceAsStream("/CNAdress.xml");
			//3.将输入流加载到build中
			document = saxBuilder.build(is);
	        //4.获取根节点
			CNaddress=document.getRootElement();
	        //5.获取子节点
			provinceElement = CNaddress.getChildren();
			
			List<Attribute> provinceName;
			List<Element> cityElement;
			List<Attribute> cityName;
	        for (Element provinces: provinceElement) {
	        	provinceName = provinces.getAttributes();
	            //打印省名
	            for (Attribute provincename : provinceName) {
	            	//拿当前省的所有市
	            	if (proname.equals(provincename.getValue())) {
	            		cityElement = provinces.getChildren();
	                	for (Element city : cityElement) {
	                		cityName = city.getAttributes();
	                		//打印市名称
	                		for (Attribute cityname : cityName) {
	                			if (cityname1.equals(cityname.getValue())) {
	                				List<Element> countyElement = city.getChildren();
	    	    	                for (Element county : countyElement) {/*拿区*/
	    	    	                	list.add(county.getValue());
	    	    					}
								}else if(cityname1!=null && cityname1.equals("")){/*拿市*/
									list.add(cityname.getValue());
								}
	                		}            		
	                		
	                	}
					}
	            }
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
