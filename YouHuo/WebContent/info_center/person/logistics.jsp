<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>物流</title>

		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/lostyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/lastbasic.js"></script>
		<link rel="stylesheet" href="../css/basic.css" type="text/css"/>
		<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css"  />
		<link rel="stylesheet" href="../css/font-awesome.css" type="text/css" />
	</head>

	<body>
		<!--头 -->
		<header class="top">
			<!--导航画面-->
			<!--<div class="load">
				<span class="load-btn"><div class="gif"></div><p>欢迎进入优货</p></span></div>-->
			<!--导肮-->
			<nav class="navbar navbar-default" data-spy="affix" data-offset-top="195" style="margin-bottom: 0px;">
				<!--内容-->
				<div class="container">
					<div class="row">
						<!--logo 品牌-->
						<div class="navbar-header">
							<a class="navbar-brand" href="" style="display: block;">
								<img src="../images/LogoLast.png" />
							</a>
							<!--菜单切换按钮-->
							<button class="navbar-toggle" data-toggle="collapse" data-target="#myNav" id="change">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>	
					</button>
						</div>
						<!--折叠菜单-->
						<div class="navbar-collapse collapse navbar-left" id="myNav">
							<!--导航列表-->
							<ul class="nav navbar-nav zfq_navlist hidden-sm ">
								<li class="nav-item">
									<a href="/youhuo/index.html" id="ahome" class="nav-link active">首页</a>
								</li>
								<li class="nav-item dropdown m-l-10" id="product">
									<a href="goodsList.html" class="nav-link dropdown-toggle" data-hover="dropdown">产品</a>
									<div class="dropdown-menu animation-slide-bottom10" id="pulldown">
										<a href="javascript:;" title="充电宝" target='_self' class='dropdown-item '>充电宝</a>
										<a href="javascript:;" title="手机电池" target='_self' class='dropdown-item '>手机电池</a>
										<a href="javascript:;" title="适配器" target='_self' class='dropdown-item '>适配器</a>
										<a href="javascript:;" title="数据线" target='_self' class='dropdown-item '>数据线</a>
										<a href="javascript:;" title="保护套" target='_self' class='dropdown-item '>保护套</a>
										<a href="javascript:;" title="车载配件" target='_self' class='dropdown-item '>车载配件</a>
										<div class="dropdown-submenu" id="musicfa">
											<a href="javascript:;" target='_self' class="dropdown-item ">音频设备</a>
											<div class="dropdown-menu animation-slide-bottom10" id="submenu1">
												<a href="javascript:;" target='_self' class="dropdown-item ">蓝牙耳机</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">蓝牙音箱</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">有线耳机</a>
											</div>
										</div>
										<a href="javascript:;" title="风扇" target='_self' class='dropdown-item '>风扇</a>
										<a href="javascript:;" title="保护膜" target='_self' class='dropdown-item '>保护膜</a>
										<a href="javascript:;" title="护眼台灯" target='_self' class='dropdown-item '>护眼台灯</a>
										<div class="dropdown-submenu" id="submenu2">
											<a href="javascript:;" target='_self' class="dropdown-item ">小家电</a>
											<div class="dropdown-menu animation-slide-bottom10">
												<a href="javascript:;" target='_self' class="dropdown-item ">空气净化器</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">扫地机</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">烧烤炉</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">加湿器</a>
											</div>
										</div>
										<div class="dropdown-submenu">
											<a href="javascript:;" target='_self' class="dropdown-item ">能源出行</a>
											<div class="dropdown-menu animation-slide-bottom10">
												<a href="javascript:;" target='_self' class="dropdown-item ">滑板车</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">平衡车</a>
											</div>
										</div>
										<a href="javascript:;" title="个人护理" target='_self' class='dropdown-item '>个人护理</a>
										<div class="dropdown-submenu">
											<a href="javascript:;" target='_self' class="dropdown-item ">周边配件</a>
											<div class="dropdown-menu animation-slide-bottom10">
												<a href="javascript:;" target='_self' class="dropdown-item ">支架</a>
												<a href="javascript:;" target='_self' class="dropdown-item ">腰包</a>
											</div>
										</div>
									</div>
								</li>
								<li class="nav-item dropdown m-l-10">
									<a href="about/" title="关于优货" target='_self' class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">关于优货</a>
									<div class="dropdown-menu animation-slide-bottom10">
										<a href="javascript:;" title="品牌介绍" target='_self' class='dropdown-item '>品牌介绍</a>
										<a href="javascript:;" title="发展历程" target='_self' class='dropdown-item '>发展历程</a>
										<a href="javascript:;" title="企业荣誉" target='_self' class='dropdown-item '>企业荣誉</a>
									</div>
								</li>
								<li class="nav-item dropdown m-l-10">
									<a href="news/" title="品牌动态" target='_self' class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										品牌动态</a>
									<div class="dropdown-menu animation-slide-bottom10">
										<a href="javascript:;" title="最新动态" target='_self' class='dropdown-item '>最新动态</a>
										<a href="javascript:;" title="展会信息" target='_self' class='dropdown-item '>展会信息</a>
										<a href="javascript:;" title="社会公益" target='_self' class='dropdown-item '>社会公益</a>
										<a href="javascript:;" title="线下活动" target='_self' class='dropdown-item '>线下活动</a>
									</div>
								</li>
								<li class='nav-item'>
									<a href="javascript:;" title="售后政策" target='_self' class="nav-link ">售后政策</a>
								</li>
								<li class='nav-item'>
									<a href="javascript:;" title="加入我们" target='_self' class="nav-link ">加入我们</a>
								</li>
								<li class="nav-item dropdown m-l-10">
									<a href="contact/" title="联系我们" target='_self' class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										联系我们</a>
									<div class="dropdown-menu animation-slide-bottom10">
										<a href="javascript:;" title="全部" class='dropdown-item nav-parent hidden-lg-up '>全部</a>
										<a href="javascript:;" title="经销商网络" target='_self' class='dropdown-item '>经销商网络</a>
										<a href="javascript:;" title="加盟我们" target='_self' class='dropdown-item '>加盟我们</a>
									</div>
								</li>
							</ul>
							
						</div>
						<!-- 用户操作-->
						<div class="navbar-nav navbar-left member">
									<ul class="navbar-nav navbar-left memberlist">
										<li class="navbar-left loginli">
											<div class="navlogin">
												<a class="navbar-brand" href="/youhuo/index-login.html" id="navbarLogin" title="登录"><span class="glyphicon glyphicon-user"></span></a>
												
											</div>
										</li>
										<li calss='shopcarli'>
											<div class="navshopcart">
												<a class="navbar-brand" href="/youhuo/shopcar.html" title="购物车">
													<span class="glyphicon glyphicon-shopping-cart"></span>
													<span class="badge">0</span>
												</a>
											</div>
										</li>
									</ul>
							</div>
								
					</div>
				</div>
			</nav>
		</header>
		<div class="nav-table" style="margin-top: 34px;">
			<div class="nav-extra">
				<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
			</div>
		</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="user-logistics">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">物流跟踪</strong> / <small>Logistics&nbsp;History</small></div>
						</div>
						<hr/>
						<div class="package-title">
							<div class="m-item">
								<div class="item-pic">
									<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
								</div>
								<div class="item-info">
									<p class="log-status">物流状态:<span>已签收</span> </p>
									<p>承运公司：天天物流</p>
									<p>快递单号：373269427868</p>
									<p>官方电话：4001-888-888</p>
								</div>
							</div>
                         <div class="clear"></div>
						</div>
						<div class="package-status">
							<ul class="status-list">		
								<li class="latest">
									<p class="text">【武汉市】已签收,签收人是青年城签收，感谢使用天天快递，期待再次为您服务</p>
									<div class="time-list">
										<span class="date">2015-12-19</span><span class="week">周六</span><span class="time">15:35:42</span>
									</div>
								</li>
								<li>
									<p class="text">【武汉市】光谷关山分部派件员正在为您派件</p>
									<div class="time-list">
										<span class="date hidden">2015-12-19</span><span class="week hidden">周六</span><span class="time">14:27:28</span>
									</div>
								</li>
								<li>
									<p class="text">【武汉市】快件已到达 光谷关山分部</p>
									<div class="time-list">
										<span class="date hidden">2015-12-19</span><span class="week hidden">周六</span><span class="time">09:25:51</span>
									</div>
								</li>
								<li>
									<p class="text">【武汉市】武汉 已发出</p>
									<div class="time-list">
										<span class="date  hidden">2015-12-19</span><span class="week  hidden">周六</span><span class="time">06:56:03</span>
									</div>
								</li>
								<li>
									<p class="text">【杭州市】杭州集散陆运 已发出</P>
									<div class="time-list">
										<span class="date">2015-12-17</span><span class="week">周四</span><span class="time">22:15:23</span>
									</div>
								</li>
								<li>
									<p class="text">【绍兴市】诸暨 已发出</p>
									<div class="time-list">
										<span class="date hidden">2015-12-17</span><span class="week hidden">周四</span><span class="time">18:55:25</span>
									</div>
								</li>
								<li>
									<p class="text">【绍兴市】天天快递 诸暨收件员 已揽件</span>
										<div class="time-list">
											<span class="date hidden">2015-12-17</span><span class="week hidden">周四</span><span class="time">18:54:25</span>
										</div>
								</li>
								<li>
									<p class="text">商家正通知快递公司揽件</span>
										<div class="time-list">
											<span class="date hidden">2015-12-17</span><span class="week hidden">周四</span><span class="time">15:49:40</span>
										</div>
								</li>
								<li>
									<p class="text">您的包裹已出库</span>
										<div class="time-list">
											<span class="date hidden">2015-12-17</span><span class="week hidden">周四</span><span class="time">15:49:40</span>
										</div>
								</li>
								<li>
									<p class="text">您的订单待配货</p>
									<div class="time-list">
										<span class="date hidden">2015-12-17</span><span class="week hidden">周四</span><span class="time">15:18:15</span>
									</div>
								</li>
								<li class="first">
									<p class="text">您的订单开始处理</p>
									<div class="time-list">
										<span class="date  hidden">2015-12-17</span><span class="week  hidden">周四</span><span class="time">14:27:50</span>
									</div>
								</li>															
								
							</ul>
						</div>
					</div>
				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="#">YOUHUO/优货</a>
							<b>|</b>
							<a href="#">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
							<b>|</b>
							<a href="#">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="#">关于优货</a>
							<a href="#">合作伙伴</a>
							<a href="#">联系我们</a>
							<a href="#">网站地图</a>
							<em>&nbsp;&nbsp;Powered by <strong> YOUHUO</strong>&nbsp;&nbsp;湖南长沙优货有限公司 <a href="#" target="_blank" title="YOUHUO/优货">YOUHUO/优货</a> </em>
						</p>
					</div>
				</div>
			</div>
			<aside class="menu">
				<ul>
					<li class="person">
						<a href="index.html">个人中心</a>
					</li>
					<li class="person">
						<a href="#">个人资料</a>
						<ul>
							<li> <a href="information.html">个人信息</a></li>
							<li> <a href="safety.html">安全设置</a></li>
							<li> <a href="address.html">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li><a href="order.html">订单管理</a></li>
							<li> <a href="change.html">退款售后</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li> <a href="coupon.html">优惠券 </a></li>
							<li> <a href="bonus.html">红包</a></li>
							<li> <a href="bill.html">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li> <a href="collection.html">收藏</a></li>
							<li> <a href="foot.html">足迹</a></li>
							<li> <a href="comment.html">评价</a></li>
							<li class="active"> <a href="news.html">消息</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>