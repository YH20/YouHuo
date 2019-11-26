package com.youhuo.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.jdom.Attribute;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/**
 * jdom����XML,��ȡ�й�ʡ��������������ַ
 * @author DQing
 *
 */
public class Address {
	public List getAdress(String proname,String cityname1){
		System.out.println("proname:"+proname+"cityname1:"+cityname1);
		//1.����SAXBuilder����
        SAXBuilder saxBuilder = new SAXBuilder();
        InputStream is;
        Document document;
        Element CNaddress;
        List<Element> provinceElement;
        List list=new ArrayList();
        list.add("��ѡ��ǰ�������");
		try {
			//2.����������
			is=Address.class.getResourceAsStream("/CNAdress.xml");
			//3.�����������ص�build��
			document = saxBuilder.build(is);
	        //4.��ȡ���ڵ�
			CNaddress=document.getRootElement();
	        //5.��ȡ�ӽڵ�
			provinceElement = CNaddress.getChildren();
			
			List<Attribute> provinceName;
			List<Element> cityElement;
			List<Attribute> cityName;
	        for (Element provinces: provinceElement) {
	        	provinceName = provinces.getAttributes();
	            //��ӡʡ��
	            for (Attribute provincename : provinceName) {
	            	//�õ�ǰʡ��������
	            	if (proname.equals(provincename.getValue())) {
	            		cityElement = provinces.getChildren();
	                	for (Element city : cityElement) {
	                		cityName = city.getAttributes();
	                		//��ӡ������
	                		for (Attribute cityname : cityName) {
	                			if (cityname1.equals(cityname.getValue())) {
	                				List<Element> countyElement = city.getChildren();
	    	    	                for (Element county : countyElement) {/*����*/
	    	    	                	list.add(county.getValue());
	    	    					}
								}else if(cityname1!=null && cityname1.equals("")){/*����*/
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
