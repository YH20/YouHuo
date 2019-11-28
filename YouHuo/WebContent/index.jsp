<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head> 
	
		<meta charset="utf-8" />
		<title>YOUHUO优货商城</title>
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link rel="stylesheet" href="/YouHuo/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/YouHuo/css/basic.css"/>
		<link rel="stylesheet" href="/YouHuo/css/index-style.css" type="text/css" />
		<link rel="stylesheet" href="/YouHuo/css/font-awesome.min.css" type="text/css" />
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
					<div class="">
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
									<a href="index.do" id="ahome" class="nav-link active">首页</a>
								</li>
								<li class="nav-item dropdown m-l-10" id="product">
									<a href="goodsList.jsp" target="_blank" class="nav-link dropdown-toggle" data-hover="dropdown">产品</a>
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
											<div class="navlogin" >
											<c:if test="${userssion ne null}">
												<a href="javascript:;" class="navbar-brand" data-toggle="dropdown" style="font-size:14px" aria-expanded="false">
					                                   	${userssion.getUserName()}<span class="caret"></span>
					                            </a>
											</c:if>
											<c:if test="${userssion eq null}">
												<a class="navbar-brand" id="navbar_Login" href="/YouHuo/index-login.jsp"  title="登录">
													<span class="glyphicon glyphicon-user"></span>
												</a>
<<<<<<< HEAD
											</c:if>
												<!--  				
				                               	<ul class="nav-user-list" id="userDropDown" style="display: block;">
				                                	<li class="user-center">
				                                		<a href="javascript:;" class="dropdown-item" role="menuitem"><i class="fa fa-user-o" aria-hidden="true"></i> 商城中心</a>
				                                	</li>
				                                	<li class="exit" id="userExit">
				                                		<a href="javascript:;" class="dropdown-item" role="menuitem"><i class="fa fa-window-close" aria-hidden="true"></i> 退出</a>
				                                	</li>
				                                </ul>
				                               -->	
				                               </div>
=======
													<!--  <a href="javascript:;" class="navbar-brand navbar-avatar dropdown-toggle" style="font-size:12px" id="wellcome" data-toggle="dropdown" aria-expanded="false">
					                                   	欢：<span class="caret"></span>
					                                </a>
													-->
																	 <!--
				                               	<ul class="nav-user-list" id="userDropDown" style="display: block;">
				                                	<li class="user-center">
				                                		<a href="javascript:;" class="dropdown-item" role="menuitem"><i class="fa fa-user-o" aria-hidden="true"></i> 商城中心</a>
				                                	</li>
				                                	<li class="exit" id="userExit">
				                                		<a href="javascript:;" class="dropdown-item" role="menuitem"><i class="fa fa-window-close" aria-hidden="true"></i> 退出</a>
				                                	</li>
				                                </ul>
				                               -->
											</div>
>>>>>>> branch 'master' of https://github.com/YH20/YouHuo.git
										</li>
										<li calss='shopcarli'>
											<div class="navshopcart">
												<a class="navbar-brand" href="/YouHuo/shopcar.jsp" title="购物车">
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
		
		<!--轮播图-->
		<div class="banner">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="banner-footer">
							<ul class="banner-action">
								<li class="active">
									<a href="javascript:;">
										<img class="cover-image" id="img-action" src="img/2019112601.jpg" />
									</a>
								</li>
								<li class="">
									<a href="javascript:;">
										<img class="cover-image" id="img-action" src="img/2019112601.jpg" />
									</a>
								</li>
								<li>
									<a href="javascript:;">
										<img class="cover-image" id="img-action" src="img/2019112601.jpg" />
									</a>
								</li>
							</ul>
						</div>
						<!--小圆点-->
						<div class="number">
							<span class="current"></span>
							<span></span>
							<span></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--新品上市-->
		<section class="new-product">
			<div class="container">
				<div class="row">
					<!--新品title-->
					<div class="new-product-title">
						<h2>上市新品</h2>
						<p>New Hot</p>
						<div class="control-label">
					        <button type="button" class="btn btn-default" style="outline:none;" id="prev" aria-label="Left Align">
  									<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
							</button>
					        <button type="button" class="btn btn-default" style="outline:none;" id="next" aria-label="Left Align">
								  <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
							</button>
					    </div>
					</div>
				</div>
				<!--新品内容-- -1168px--->
				<div class="row row-content">
					<ul class="list new-product-content">
						<div class="slick-list" style="overflow: hidden;">
							<div class="new-list" style="width:3796px;transform: translate3d(-1168px, 0px, 0px);">
								<c:forEach items="${slideShow}" var = "goods" varStatus="i">
								<li class="item col-xs-6" style="width: 292px;" data-slick-index='${i.count-5}'>
									<div class="card">
										<ul class="card-img">
											<div class="new-list">
											<c:forTokens items="${goods.goodsImgs}" var="img" delims="@YH@" end="2" varStatus="i">
												<c:if test="${i.count eq 1}">
													<li class="active" style="width:291px;position:relative;left: 0px;top: 0px;z-index: 999;opacity: 1;">
													<a href="/YouHuo/showGood?id=${goods.GId}" target="_blank" title="${goods.goodsName}">
														<img src="${img}" />
													</a>
													</li>
												</c:if>
												<c:if test="${i.count ne 1}">
													<li class="" style="width:291px;position:relative;left: 0px;top: 0px;z-index: 999;opacity: 1;">
														<a href="/YouHuo/showGood?id=${goods.GId}" target="_blank" title="${goods.goodsName}">
															<img src="${img}" />
														</a>
													</li>
												</c:if>
											</c:forTokens>
											</div>
											<!--小圆点-->
											<div class="slick-points">
												<span class="current"></span>
												<span class=""></span>
												<span class=""></span>
											</div>
										</ul>
										<h4 class="card-title m-b-0">
											<a href="/YouHuo/showGood?id=${goods.GId}" target="_blank" title="${goods.goodsName}" class="block text-truncate" target="_self" tabindex="-1">
													<span  style="">${goods.goodsName}</span> </a>
													<p class="description">　　</p>
													<span class="btn btn-default btn-detail"><a href="/YouHuo/showGood?id=${goods.GId}" target="_blank" title="${goods.goodsName}" tabindex="-1">查看详情</a></span>
													<p class="price m-b-0 m-t-5">
												￥${goods.goodsPrice}元</p>
										</h4>
									</div>
								</li>
								</c:forEach>
							</div>
						</div>
					</ul>
				</div>
			</div>
		</section>
		
		<!--精选-->
		<section class="product-selection-list">
			<div class="container">
				<div class="row">
					<!--精选title-->
					<div class="new-product-title">
						<h2>优货精选</h2>
						<p>Offical</p>
						<div class="control-label">
					        <button type="button" class="btn btn-default" id="addMore" aria-label="Left Align">
								  更多<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
							</button>
					    </div>
					</div>
				</div>
					<ul class="list">
						<div class="row row-content" id="selectionGoodsList">
						<li class="col-lg-6 cover">
								<a href="" target="_blank" title="封面图" alt="封面图" data-title="upload/201908/1566998959.jpg">
									<img src="img/654_428/1566998959.jpg" data-original="upload/thumb_src/654_428/1566998959.jpg" alt="封面图" data-lazyload="true">
								</a>
							</li>
						<!--js添加商品-->
						</div>
					</ul>
			</div>
		</section>
		<!--新闻中心-->
		<section class="news-list">
			<div class="container">
				<div class="row">
					<!--精选title-->
					<div class="new-product-title">
						<h2>新闻中心</h2>
						<p>Science</p>
						<div class="control-label">
					        <button type="button" class="btn btn-default" id="more" aria-label="Left Align">
								 阅读更多<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
							</button>
					    </div>
					</div>
				</div>
				<div class="row row-content">
					<ul class="list m-0 clearfix">
						<li class="item col-xs-12 col-md-6 col-lg-3">
							<a href="" title="苹果电池又双叒出问题了!你竟然不知道？" target="_self">
								<img src="img/254_156/1567005478.jpg" style="display: inline;" alt="苹果电池又双叒出问题了!你竟然不知道？" data-lazyload="true" src="upload/thumb_src/254_156/1567005478.jpg" class="" style="display: inline;">
							</a>
							<div class="content">
								<h4>    <span style="">苹果电池又双叒出问题了!你竟然不知道？</span></h4>
								<p>小伙伴们都听说了吗？苹果电池又双叒叕出问题了!8月9日，国外媒体爆料，苹果为了防止第三方更换iPhone电池，当iPhone手机更换非苹果官方电池时，手机会激活“休眠软件锁”，导致手机无法查看“电池健康”，甚至是手动解除降速。在小Y印象中，这已经是苹果跟“电池”一起搞的第三个大新闻：01由于电池，苹果限制老款iPhone的性能2017年下半年，苹果曾上演一起“降速门”事件。在未经用户同意的前提下，</p>
								<a href="" title="苹果电池又双叒出问题了!你竟然不知道？" target="_self" class="watch-detail">
									阅读更多 <i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
						<li class="item col-xs-12 col-md-6 col-lg-3">
							<a href="" title="苹果发布会后华为发文感谢，这演的是哪出？" target="_self">
								<img src="img/254_156/1567005600.jpg" style="display: inline;" alt="苹果发布会后华为发文感谢，这演的是哪出？" data-lazyload="true" src="upload/thumb_src/254_156/1567005600.jpg" class="" style="display: inline;">
							</a>
							<div class="content">
								<h4>    <span style="">苹果发布会后华为发文感谢，这演的是哪出？</span></h4>
								<p>苹果每年春季、冬季发布会都备受瞩目，而且保密工作都做的非常好，但今年，苹果在发布会之前更新了一些产品，有iPad Air 、iPad mini 5、AirPods 2、iMac。这些硬件的提前发布，吊足了观众的胃口，大家都在猜测发布会主题，是不是会有iPhone SE 2？看完发布会，小Y只想说，到底是谁说的“内部消息”？你出来我保证不打你。好吧，虽然发布会上没有传说中的iPhone SE 2，但</p>
								<a href="" title="苹果发布会后华为发文感谢，这演的是哪出？" target="_self" class="watch-detail">
									阅读更多 <i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
						<li class="item col-xs-12 col-md-6 col-lg-3">
							<a href="" title="2018手机行业高峰论坛，优货邀你对话行业大咖" target="_self">
								<img src="img/254_156/1567004720.jpg" style="display: inline;" alt="2018手机行业高峰论坛，优货邀你对话行业大咖" data-lazyload="true" src="upload/thumb_src/254_156/1567004720.jpg" class="" style="display: inline;">
							</a>
							<div class="content">
								<h4>    <span style="">2018手机行业高峰论坛，优货邀你对话行业大咖</span></h4>
								<p>回顾过去 展望未来2018年手机行业发生了哪些变革？2019年手机行业的前行方向会是哪里？不论是身处手机产业链的哪一个环节，售前、售中，还是售后，共同学习、相互融合、继续创新都必须要提上日程，因为一场的新的商业革命已经到来。回顾2017年 “新零售，新服务，新思途”主题峰会（2017年中国手机行业高峰论坛会议现场）2017年手机行业高峰论坛创下全国手机服务行业专业人士超过一千人参会记录，政府领导</p>
								<a href="" title="2018手机行业高峰论坛，优货邀你对话行业大咖" target="_self" class="watch-detail">
									阅读更多 <i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
						<li class="item col-xs-12 col-md-6 col-lg-3">
							<a href="" title="新iPhone一万二太贵，保肾的苹果电池只要128元了解一下" target="_self">
								<img src="img/254_156/1567005309.jpg" style="display: inline;" alt="新iPhone一万二太贵，保肾的苹果电池只要128元了解一下" data-lazyload="true" src="upload/thumb_src/254_156/1567005309.jpg" class="" style="display: inline;">
							</a>
							<div class="content">
								<h4>    <span style="">新iPhone一万二太贵，保肾的苹果电池只要128元了解一下</span></h4>
								<p>距离苹果秋季发布会已经过去一个多星期了，苹果始终热度不减！而苹果秋季发布会上的三款新iPhone还是大刘海不变，然后6.5英寸的大屏iPhone XS Max 的价格，最高配置卖到了12799元！许多人觉得这iPhone XS和iPhone X区别不大嘛，那还是买iPhone X吧，结果苹果下架了iPhone X ，这操作稳呐！更有网友评论：9月12日：我的iphone7快不行了，掉电厉害，经常卡</p>
								<a href="" title="新iPhone一万二太贵，保肾的苹果电池只要128元了解一下" target="_self" class="watch-detail">
									阅读更多 <i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</section>
		
		<!--以下每个页面都需要-->
		<!--底部导航-->
		<div class="foot-nav-list">
			<div class="container">
				<div class="col-lg-8 col-md-12 nav-list">
					<div class="col-md-2 col-sm-12  list">
						<h4 class="m-t-0">
										                    <a href="about/" title="关于优货" class="btn-collapse" target="_self">关于优货</a>
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
										                    <img src='upload/201909/1567391924.jpg' alt='YOUHUO/优货官网' width='150' height='150' id='met-weixin-img'></div>
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
					<p class="m-b-0">YOUHUO/优货 版权所有 2005-2019 粤ICP备10077763号</p>
					<div class="powered_by_metinfo">
						<p>Powered by <strong>YOUHUO</strong>&nbsp;&nbsp;湖南长沙优货有限公司</p>
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
<script type="text/javascript" src="/YouHuo/js/jquery.min.js"></script>
<script type="text/javascript" src="/YouHuo/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/YouHuo/js/lastbasic.js"></script>
<script type="text/javascript" src="/YouHuo/js/index.js"></script>
<script>
getShowGoodsList(34,1);	
//请求数据的商品集合封装函数
function getShowGoodsList(nums,type){
	$.ajax({
		url:'http://localhost/YouHuo/showGoods',
		data:{"nums":nums,"type":type},
		dataType:'json',
		type:'POST',
		success:function(result) {
			console.log(result.code);
			if(result.code!=0){
				return;
			}
			var list = new Array();
			 	list = result.date;
			console.log(list.length);
			for (var i = 0; i < list.length; i++) {
				var imgpath = list[i].goodsImgs.split("@YH@")[0];
				//alert(imgpath);
				var str ="<li class='item col-lg-3 col-md-6 col-xs-6'>"
						+"<div class='card'>"
							+"<ul class='card-img'>"
							+"<div class='new-list'>"
							+"<li class='active' style='position:relative;left: 0px;top: 0px;z-index: 999;opacity: 1;'>"
							+"<a href='/YouHuo/showGood?id="+list[i].GId+"' target='_blank' title='"+list[i].goodsName+"'>"			
							+"<img src='"+imgpath+"' />"				
							+"</a>"		
							+"</li>"		
							+"</div>"	
							+"</ul>"
							+"<h4 class='card-title m-b-0'>"
							+"<a href='/YouHuo/showGood?id="+list[i].GId+"'target='_blank' title='"+list[i].goodsName+"' class='block text-truncate' target='_self' tabindex='-1'>"
							+"<p class='description'>　　</p>"
							+"<span  style=''>"+list[i].goodsName+"</span></a>"
							+"<span class='btn btn-default btn-detail'><a href='/YouHuo/showGood?id="+list[i].GId+"' target='_blank' title='"+list[i].goodsName+"' tabindex='-1'>查看详情</a></span>"
							+"<p class='price m-b-0 m-t-5'>￥$"+list[i].goodsPrice+"元</p>"
					+"</div></li>";
				//每遍历一次就添加一次
				$('#selectionGoodsList').append(str);
			}
		},
	});
}
	

</script>