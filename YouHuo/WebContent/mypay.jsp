<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>二期首页测试</title>
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/shop-order.css" />
		<link rel="stylesheet" href="css/basic.css" />
		<!--<link rel="stylesheet" href="css/loginAndRegister.css" />-->
		<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
	</head>

	<body>

		<!--加载界面-->
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
								<img src="img/LogoLast.png" />
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
									<a href="index.html" id="ahome" class="nav-link active">首页</a>
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
												<a class="navbar-brand" href="index-login.html" id="navbarLogin" title="登录"><span class="glyphicon glyphicon-user"></span></a>
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
		
			
		<!--重置密码-->
		<section class="mypayment">
			<div class="mypayment-index">
				<div class="container">
					<div class="mypayment-conta">
						<h1 class="text-center text-danger">请尽快完成支付...</h1>
						<p class="mytime">交易将在23小时59分钟后关闭，请及时付款！</p>
						<div class="form-mypayment">
							<h3 class="mypay text-right" ><span class="paymoney">499.00</span>元</h3>
							<div class="payimg ">
								<img src="img/pay.png"/>
							</div>
							<h5 class="text-right"><a href="" class="retrueinfo" >个人中心</a></h5>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--底部导航-->
		<div class="foot-nav-list">
			<div class="container">
				<div class="col-lg-8 col-md-12 nav-list">
					<div class="col-md-2 col-sm-12  list">
						<h4 class="m-t-0">
												                    <a href="about/" title="关于羽博" class="btn-collapse" target="_self">关于羽博</a>
												                    <i class="fa fa-chevron-down"></i>
												                </h4>
						<ul class="ulstyle  m-b-0 " id="list-1">
							<li>
								<a href="about/show.php?id=5" title="品牌介绍" target="_self">品牌介绍</a>
							</li>
							<li>
								<a href="about/show.php?id=37" title="发展历程" target="_self">发展历程</a>
							</li>
							<li>
								<a href="about/show.php?id=52" title="企业荣誉" target="_self">企业荣誉</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-12  list">
						<h4 class="m-t-0">
						                    <a href="news/" title="品牌动态" class="btn-collapse" target="_self">品牌动态</a>
						                    <i class="fa fa-chevron-down"></i>
						                </h4>
						<ul class="ulstyle  m-b-0 " id="list-4">
							<li>
								<a href="news/news.php?class2=19" title="最新动态" target="_self">最新动态</a>
							</li>
							<li>
								<a href="news/news.php?class2=18" title="展会信息" target="_self">展会信息</a>
							</li>
							<li>
								<a href="news/news.php?class2=68" title="社会公益" target="_self">社会公益</a>
							</li>
							<li>
								<a href="news/news.php?class2=67" title="线下活动" target="_self">线下活动</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-12  list">
						<h4 class="m-t-0">
												                    <a href="counterfeiting/" title="防伪查询" class="btn-collapse" target="_self">防伪查询</a>
												                    <i class="fa fa-chevron-down"></i>
												                </h4>
					</div>
					<div class="col-md-2 col-sm-12  list">
						<h4 class="m-t-0">
												                    <a href="sitemap/" title="网站地图" class="btn-collapse" target="_self">网站地图</a>
												                    <i class="fa fa-chevron-down"></i>
												                </h4>
					</div>
					<div class="col-md-2 col-sm-12 list">
						<h4>
												                    <a title="会员中心" class="btn-collapse">关注我们</a>
												                    <i class="fa fa-chevron-down"></i>
												                    </h4>
						<ul class="ulstyle iconul m-b-0 " id="list-social">

							<!--微信-->
							<li>
								<a id="met-weixin" data-plugin="webuiPopover" data-trigger="hover" data-animation="pop" data-placement="top" data-width="155" data-padding="0" data-content="<div class='text-xs-center'>
												                    <img src='upload/201909/1567391924.jpg' alt='YOOBAO/羽博官网' width='150' height='150' id='met-weixin-img'></div>
												                ">
									<i class="fa fa-weixin"></i> 官方微信 </a>
							</li>
							<!--微信-->
							<!--QQ-->
							<li>
								<a href="" rel="nofollow" target="_blank">
									<i class="fa fa-qq"></i> 客服QQ </a>
							</li>
							<!--QQ-->
							<!--微博-->
							<li>
								<a href="" rel="nofollow" target="_blank">
									<i class="fa fa-weibo "></i> 新浪微博 </a>
							</li>
							<!--微博-->
							<!--邮箱-->
							<li>
								<a href="">
									<i class="fa fa-envelope"></i> 官方邮箱 </a>
							</li>
							<!--邮箱-->
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-12 col-ms-12 col-xs-12 footer-info-r">
					<p>周一至周六 9:00-18:00</p>
					<a href="" class="btn-message" title="加盟我们" target="_blank">
						<i class="fa fa-question-circle"></i> 加盟我们
					</a>
				</div>
			</div>
		</div>
		<!--底部-->
		<footer class="foot-info-met" m-id="8" m-type="foot">
			<div class="container text-xs-center  p-y-20 p-x-0">
				<div class="footer-info-last text-xs-left">
					<p class="m-b-0">YOOBAO/羽博 版权所有 2005-2019 粤ICP备10077763号</p>
					<div class="powered_by_metinfo">
						<p>Powered by <strong>YOOBAO</strong>&nbsp;&nbsp;深圳市锐讯天成科技有限公司</p>
					</div>
				</div>
			</div>
		</footer>

		<!--返回顶部-->
		<button type="button" class="back-top-met animation-slide-bottom" m-id="32" m-type="nocontent">
							<img src="img/1516695455.png" alt="">
				</button>
	</body>

</html>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/user.js"></script>
<script type="text/javascript" src="js/order.js"></script>
<script>
	//	setTimeout(function() {
	//		$('.load').css('display', 'none')
	//	}, 300);
</script>