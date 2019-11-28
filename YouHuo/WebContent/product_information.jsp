<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>购物商城</title>
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<link rel="stylesheet" href="/YouHuo/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/YouHuo/css/dq_product.css" />
		<link rel="stylesheet" href="/YouHuo/css/basic.css" >/>
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
												<a class="navbar-brand" href="index-login.html" id="navbar_Login" title="登录"><span class="glyphicon glyphicon-user"></span></a>
													<!-- 
														<a href="javascript:;" class="navbar-brand navbar-avatar dropdown-toggle" id="welcome" style="display: none;" data-toggle="dropdown" aria-expanded="false">
					                                   	欢迎您：<span class="caret"></span>
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
										</li>
										<li calss='shopcarli'>
											<div class="navshopcart">
												<a class="navbar-brand" href="shopcar.html" title="购物车">
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
		<!--界面内容-->
		<section class="product-info-content">
			<div class="page">
				<!--分页-->
				<div class="container">
					<!--容器-->
					<div class="row dq_product" id="goodsInformation">
						<!--行-->
						<!--左侧商品图片显示-->
						<!--左侧商品图片显示-->
						<div class="col-md-6">
							<!--列-->
							<div class="fdajing" style="background-image: url(dq_product_img/fs1.gif);"></div>
							<div class="product_info_left">
								<!--左侧上面内容-->
		
								<!--按钮-->
								<a href="javascript:;" class="dq_next"></a>
								<a href="javascript:;" class="dq_prev"></a>
								<div class="dq_product_img">
									<img src="dq_product_img/fs1.gif" />
									<!--滑块-->
									<div class="slide"></div>
								</div>
		
								<ul class="dq_product_min_img">
		
									<li class="min_img_active"><img src="dq_product_img/fs1.gif" /></li>
									<li><img src="dq_product_img/fs2.gif" /></li>
									<li><img src="dq_product_img/fs3.gif" /></li>
									<li><img src="dq_product_img/fs4.jpg" /></li>
									<li><img src="dq_product_img/fs5.gif" /></li>
								</ul>
		
							</div>
						</div>
					
					<!--右侧商品详细内容-->
					<div class="col-md-5">
						<div class="product_info_right">
					
							<ul>
								<li>
									<h3>可乐</h3></li>
								<li>
									<p id="product_content_slogan">商品描述</p>
								</li>
								<li>
									<h3 id="dq_price">￥999</h3></li>
								<!-- <li class="row">
									<p class="col-md-2 dq_product_sellquick">促销热卖中……</p>
					
								</li>
								 -->
								<li class="row">
									<div class="col-md-10 product_content_type">
										<p style="font-size:18px;">颜色 :
											<button class="btn btn-default" type="button">白色</button>
											<button class="btn btn-default" type="button">黑色</button>
											<button class="btn btn-default" type="button">红色</button>
										</p>
									</div>
								</li>
								<li class="row">
									<div class="col-md-10 product_content_type">
										<p style="font-size:18px;">尺寸 :
											<button class="btn btn-default" type="button">S</button>
											<button class="btn btn-default" type="button">M</button>
											<button class="btn btn-default" type="button">L</button>
										</p>
									</div>
								</li>
								<li class="row">
									<p class="col-md-2 dq_biaoti">数量:
										<div class="col-md-10 product_content_type">
											<i class="no-select" style="user-select: none;" id="product_num_decbtn">-</i>
											<input id="dq_product_number" type="text" readonly="readonly" value="1" />
											<i class="no-select" style="user-select: none;" id="product_num_addbtn">+</i>
										</div>
									</p>
					
								</li>
					
								<li class="row">
									<p class="col-mg-2 dq_biaoti">商家服务:</p>
									<p class="col-md-10 dq_shangjia_server">
										<a href="" alt="优货，购有所值">&loz;&7天无理由退货&loz;15天无忧换货&loz;满119包邮&loz;商家发货网易自营</a>
									</p>
								</li>
								<li style="margin-top: 20px;" class="row">
									<div class="col-md-3">
										<button class="dq_buy">立即购买</button>
									</div>
									<div class="col-md-3 col-md-offset-3">
										<button class="dq_in_buycar">
											    							<span  class="glyphicon glyphicon-shopping-cart">加入购物车
											    							</span>
											    						</button>
									</div>
					
								</li>
							</ul>
							<div class="info" style="display: none;"></div>
					
						</div>
					
					</div>
					</div>
				</div>
			</div>
			<!--page2-->
			<div class="page2">
				<div class="container">
					<div class="row">
						<div class="col-md-9" style="border: 0px;">
							<!--详情头部-->
							<div id="dq_chang_a" class="dq_infomation_head">
								<a class="dq_active" data-toggle="tab" href="#" data-get="">
									<span class="slickSpan">了解详情</span>
								</a>
								<a class="" data-toggle="tab" href="#" data-get="">
									<span class="slickSpan">技术参数</span>
								</a>
							</div>
							<div class="dq_infomation">
								<!--产品类型-->
								<ul class="product_list">
									<li>
										<h3>产品类型：<span>家用电器</span></h3>
		
									</li>
								</ul>
								<p class="dq_img_info">
									<img src="dq_product_img/xq1.jpg" />
									<img src="dq_product_img/xq2.jpg" />
									<img src="dq_product_img/xq3.jpg" />
									<img src="dq_product_img/xq4.jpg" />
									<img src="dq_product_img/xq5.jpg" />
									<img src="dq_product_img/xq6.jpg" />
									<img src="dq_product_img/xq7.jpg" />
									<img src="dq_product_img/xq8.jpg" />
									<img src="dq_product_img/xq9.jpg" />
									<img src="dq_product_img/xq10.jpg" />
									<img src="dq_product_img/xq11.jpg" />
									<img src="dq_product_img/xq12.jpg" />
									<img src="dq_product_img/xq13.jpg" />
									<img src="dq_product_img/xq14.jpg" />
								</p>
		
							</div>
						</div>
						<!--推介产品图片链接-->
						<div class="col-md-3" style="border: 0px;">
							<div class="dq_infomation_head">
								<a class="dq_active2" data-toggle="tab" href="#" data-get="">
									<span class="slickSpan">产品推介</span>
								</a>
							</div>
		
							<div class="product_link">
								<ul>
									<li class="product_link_img">
										<a href="#" title='充电宝 20L' class="">
											<img src="dq_product_img/tj2.gif" alt='充电宝 20L'>
										</a>
										<h4 class='font-size-16 text-xs-center'>
		                                            <a href="#" title='充电宝 20L'>    												<span style=''>充电宝 20L</span>
		                                            </a>
		                                            <p class='product-price'>
		                                            	￥169.00元
		                                            </p>
		                                        </h4>
									</li>
									<li class="product_link_img">
										<a href="#" title='储能电源 150C' class="">
											<img src="dq_product_img/tj3.jpg" alt='储能电源 150C' />
										</a>
										<h4 class='font-size-16 text-xs-center'>
		                                            <a href="#" title='储能电源 150C'>    												<span style=''>储能电源 150C</span>
		                                            </a>
		                                            <p class='product-price'>
		                                            	￥1688.00元
		                                            </p>
		                                        </h4>
									</li>
									<li class="product_link_img">
										<a href="#" title='风扇 F1' class="">
											<img src="dq_product_img/tj1.jpg" alt='风扇 F1'>
										</a>
										<h4 class='font-size-16 text-xs-center'>
		                                            <a href="#" title="风扇 F1">    												<span style=''>风扇 F1</span>
		                                            </a>
		                                            <p class='product-price'>
		                                            	￥285.00元
		                                            </p>
		                                        </h4>
									</li>
								</ul>
							</div>
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
						<p>Powered by <strong>YOUHUO</strong>&nbsp;&nbsp;深圳市锐讯天成科技有限公司</p>
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
<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/lastbasic.js"></script>
<script>
	/**function getUrlVal(property){
	  //地址栏
	  var urlStr = window.location.search.substring(1);
	  var re = new RegExp('(^|&)'+ property +'=([^&]*)(&|$)');
	  var result = urlStr.match(re);
	  if(result == null){return null};
	  return result[2];
	};*/
	

	$('#dq_chang_a>a').click(function(){
		$(this).addClass('dq_active').siblings().removeClass();
//或者$(this).attr('class','dq_active')$(this).siblings().attr('class','');
	});
	
//	(function(){
//		var goodsId = getUrlVal('goods_id');
//		//发起请求
//		$.get('http://www.wjian.top/shop/api_goods.php', {goods_id : goodsId,
//}, function(result){
//  var obj = JSON.parse(result);
//  var goods = obj.data[0];
//  var str = `
//    <p>${goods.goods_name}</p>
//    <p>${goods.goods_desc}</p>
//    <p>${goods.price}</p>
//    <p>${goods.star_number}</p>
//    <p>+  -</p>
//    <a href="javascript:;">加入购物车</a>
//    <a href="cart.html">立即购买</a>
//  `;
//  $('.info').html(str);
//});
//})();


//放大镜
(function(){
  //事件:鼠标移入到up再移动，再移出
  $('.dq_product_img').mouseenter(function(event){
    //console.log(event);
    //在移入里面移动,滑块跟随
    $('.dq_product_img').mousemove(function(event){
      var x = event.clientX - $('.dq_product_img').offset().left - $('.slide').outerWidth()/2;
      var y = event.clientY - $('.dq_product_img').offset().top - $('.slide').outerHeight()/2 + $(document).scrollTop();
      
      //验证控制范围
      if(x <= 0){x = 0};
      if(y <= 0){y = 0};
      if(x >= $('.dq_product_img').width() - $('.slide').outerWidth()){
        x = $('.dq_product_img').width() - $('.slide').outerWidth();
      }
      if(y >= $('.dq_product_img').height() - $('.slide').outerHeight()){
        y = $('.dq_product_img').height() - $('.slide').outerHeight();
      }
      
      //设置滑块
      $('.slide').css({
        left : x,
        top : y,
      });
//    $('title').html(x + ',' + y);
      //设置大图背景
      var bili = (800 - $('.fdajing').width()) / ($('.dq_product_img').width() - $('.slide').outerWidth());
      
      var str = -x*bili + 'px ' + -y*bili + 'px';
      $('.fdajing').css('backgroundPosition', str)
    });
  });
  var li_len=$('.dq_product_min_img>li').length;//获取当前小图标数量
//console.log('获取小图标数量'+li_len);
  var li_index=0;//获取当前小图标下标
  //点击下面小图切换
  $('.dq_product_min_img li').each(function(){
    $(this).mouseenter(function(){
      //拿到当前的下标
      li_index=$(this).index();
      //改变当前图片样式
      min_img_change(li_index);
    });
  });
    //点击next prev换图
	$('.dq_next').click(function(){
		li_index++;
		if(li_index>li_len-1){li_index=0;}
		min_img_change(li_index);
	});
	$('.dq_prev').click(function(){
		li_index--;
		if(li_index<0){li_index=li_len-1;}
		min_img_change(li_index);
	});
	function min_img_change(x_index){
		$('.dq_product_min_img li').eq(li_index).addClass('min_img_active').siblings().removeClass();
		//拿到当前移入的图片src
      	var imgSrc = $('.dq_product_min_img li').eq(li_index).children().attr('src');
      	//改结构图
      $('.dq_product_img img').attr('src', imgSrc);
      console.log(imgSrc);
      $('.fdajing').css({
        'background-image':'url('+ imgSrc +')',
      });
	};
  
  //鼠标移入移出
  $('.dq_product_img').hover(function(){
    $('.slide, .fdajing').show();
    $('product_info_right>ul').hide();
  }, function(){
    $('.slide, .fdajing').hide();
    $('product_info_right>ul').show();
  });
  
})();




//右边加减块
 var x=$('#dq_product_number').val();
 
  //点击减
 $('#product_num_decbtn').click(function(){
 	if (x>1) {
 		x--;
 		$('#dq_product_number').val(x);
 	} 
 	if(x<=1){
 		$('#product_num_decbtn').css({
 			border: '2px solid darkgrey',
 		});
 	}
 });
 //点击加
 $('#product_num_addbtn').click(function(){
 		x++;
 		$('#dq_product_number').val(x);
 		$('#product_num_decbtn').css({
 			border: '2px solid #EC971F',
 		});
 });
</script>
