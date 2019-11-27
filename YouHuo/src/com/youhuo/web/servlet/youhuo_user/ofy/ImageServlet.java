package com.youhuo.web.servlet.youhuo_user.ofy;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet(name = "imageServlet", urlPatterns = { "/imageServlet" })
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//定义图片大小
    private static int WIDTH=170;
    private static int HEIGHT=40;
//    随机的验证码 
    private String[] str={
 		   "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
 			"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
 			"X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
//    随机数
    private Random r=new Random();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
//		定义servlet文件流
		ServletOutputStream sos=response.getOutputStream();
		StringBuffer sb=new StringBuffer();
		StringBuffer sb1 = new StringBuffer();
//		产生随机生成的六位随机数
		for (int i = 0; i < 6; i++) {
			int index=r.nextInt(str.length);
			sb.append(str[index]);
			sb1.append(str[index]+"");
		}
//		得到验证码
		String content=sb.toString();
//		把验证码存入session
		request.getSession().setAttribute("getCode", content);
//		new出一个缓存的图片
		BufferedImage bimg=new BufferedImage(WIDTH,HEIGHT,BufferedImage.TYPE_INT_RGB);
//		获得画笔
		Graphics g=bimg.getGraphics();
//		上色
		g.setColor(Color.green);
//	         画边框
		g.drawRect(0, 0, WIDTH, HEIGHT);
//		填充背景色
		g.setColor(Color.gray);
		g.fillRect(0, 0, WIDTH, HEIGHT);
//		写入内容 设置字体
		g.setColor(Color.red);
		g.setFont(new Font("宋体",Font.BOLD,30));
        g.drawString(sb1.toString(), 34, 29);
		//		画干扰点690
		for (int i = 0; i < 200; i++) {
			int x=r.nextInt(WIDTH);
			int y=r.nextInt(HEIGHT);
			g.drawLine(x, y, x, y);
		}
//		画干扰线
		g.drawLine(20, 15, 110, 20);
		g.drawLine(10, 10, 120, 10);
//		g.drawLine(15, 30, 135, 7);
//		g.drawLine(10, 15, 110, 20);
//		g.drawLine(10, 15, 110, 23);
		ImageIO.write(bimg, "jpg", sos);
		sos.flush();
		sos.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
