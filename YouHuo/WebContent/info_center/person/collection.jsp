<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>我的收藏</title>

		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-1.7.2.min.js" ></script>
		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/colstyle.css" rel="stylesheet" type="text/css">
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

					<div class="user-collection">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> / <small>My&nbsp;Collection</small></div>
						</div>
						<hr/>

						<div class="you-like">
							<div class="s-bar">
								我的收藏
								<a class="am-badge am-badge-danger am-round">降价</a>
								<a class="am-badge am-badge-danger am-round">下架</a>
							</div>
							<div class="s-content">
								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/0-item_pic.jpg_220x220.jpg" alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">42.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">68.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 98.03%</span>
												<span class="s-sales">月销: 219</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/1-item_pic.jpg_220x220.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.74%</span>
												<span class="s-sales">月销: 69</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/-0-saturn_solar.jpg_220x220.jpg" alt="4折抢购!十二生肖925银女戒指,时尚开口女戒" title="4折抢购!十二生肖925银女戒指,时尚开口女戒" class="s-pic-img s-guess-item-img">
											<span class="tip-title">已下架</span>
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="4折抢购!十二生肖925银女戒指,时尚开口女戒">4折抢购!十二生肖925银女戒指,时尚开口女戒</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">378.00</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">1888.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.93%</span>
												<span class="s-sales">月销: 278</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-trash"></i>
											<span class="ui-btn-loading-before buy">进入店铺</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/0-item_pic.jpg_220x220.jpg" alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">42.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">68.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 98.03%</span>
												<span class="s-sales">月销: 219</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>										
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/1-item_pic.jpg_220x220.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.74%</span>
												<span class="s-sales">月销: 69</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/-0-saturn_solar.jpg_220x220.jpg" alt="4折抢购!十二生肖925银女戒指,时尚开口女戒" title="4折抢购!十二生肖925银女戒指,时尚开口女戒" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="4折抢购!十二生肖925银女戒指,时尚开口女戒">4折抢购!十二生肖925银女戒指,时尚开口女戒</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">378.00</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">1888.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.93%</span>
												<span class="s-sales">月销: 278</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>

							</div>

							<div class="s-more-btn i-load-more-item" data-screen="0"><i class="am-icon-refresh am-icon-fw"></i>更多</div>

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
							<li class="active"> <a href="collection.html">收藏</a></li>
							<li> <a href="foot.html">足迹</a></li>
							<li> <a href="comment.html">评价</a></li>
							<li> <a href="news.html">消息</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>