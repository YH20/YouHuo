<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>产品页面</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/basic.css"/>
		<link rel="stylesheet" href="css/index-style.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
		
		<style>
			.serch-bar{
				margin-top: 90px;
			}
			.serch-bar .order>li{
				float: left;
				margin: 0 10px;
			}
			.w-100{
				width: 100px;
			}
			.w-160{
				width: 160px;
			}
			.clearfix form>input{
				margin: 0 5px;
				display: inline-block;
			}
			i{
				margin-left: 4px;				
			}
			.order:after{
				content: ""; display: block; clear: both;
			}
			i>.fa-sort-up{
				margin-top: 6px;
			}
			#product>a{
				color: #f54242;;
			}
			.m-t-20{
				margin-top: 20px;
			}
			.m-b-20{
				margin-bottom: 20px;
			}
			.met_pager {
			    margin-top: 20px;
			    text-align: center;
			}
			.inline-block{
				display: inline-block;
			}
			.met_pager>a{
				margin:0 5px;
			}
		</style>
	</head>
	<body>
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
									<a href="index.do" id="ahome" class="nav-link active">首页</a>
								</li>
								<li class="nav-item dropdown m-l-10" id="product">
									<a href="" class="nav-link dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">产品</a>
									<div class="dropdown-menu animation-slide-bottom10" id="pulldown">
										<a href="" title="充电宝" target='_self' class='dropdown-item '>充电宝</a>
										<a href="" title="手机电池" target='_self' class='dropdown-item '>手机电池</a>
										<a href="" title="适配器" target='_self' class='dropdown-item '>适配器</a>
										<a href="" title="数据线" target='_self' class='dropdown-item '>数据线</a>
										<a href="" title="保护套" target='_self' class='dropdown-item '>保护套</a>
										<a href="" title="车载配件" target='_self' class='dropdown-item '>车载配件</a>
										<div class="dropdown-submenu" id="musicfa">
											<a href="" target='_self' class="dropdown-item ">音频设备</a>
											<div class="dropdown-menu animation-slide-bottom10" id="submenu1">
												<a href="" target='_self' class="dropdown-item ">蓝牙耳机</a>
												<a href="" target='_self' class="dropdown-item ">蓝牙音箱</a>
												<a href="" target='_self' class="dropdown-item ">有线耳机</a>
											</div>
										</div>
										<a href="" title="风扇" target='_self' class='dropdown-item '>风扇</a>
										<a href="" title="保护膜" target='_self' class='dropdown-item '>保护膜</a>
										<a href="" title="护眼台灯" target='_self' class='dropdown-item '>护眼台灯</a>
										<div class="dropdown-submenu" id="submenu2">
											<a href="" target='_self' class="dropdown-item ">小家电</a>
											<div class="dropdown-menu animation-slide-bottom10">
												<a href="" target='_self' class="dropdown-item ">空气净化器</a>
												<a href="" target='_self' class="dropdown-item ">扫地机</a>
												<a href="" target='_self' class="dropdown-item ">烧烤炉</a>
												<a href="" target='_self' class="dropdown-item ">加湿器</a>
											</div>
										</div>
										<div class="dropdown-submenu">
											<a href="" target='_self' class="dropdown-item ">能源出行</a>
											<div class="dropdown-menu animation-slide-bottom10">
												<a href="" target='_self' class="dropdown-item ">滑板车</a>
												<a href="" target='_self' class="dropdown-item ">平衡车</a>
											</div>
										</div>
										<a href="" title="个人护理" target='_self' class='dropdown-item '>个人护理</a>
										<div class="dropdown-submenu">
											<a href="" target='_self' class="dropdown-item ">周边配件</a>
											<div class="dropdown-menu animation-slide-bottom10">
												<a href="" target='_self' class="dropdown-item ">支架</a>
												<a href="" target='_self' class="dropdown-item ">腰包</a>
											</div>
										</div>
									</div>
								</li>
								<li class="nav-item dropdown m-l-10">
									<a href="about/" title="关于优货" target='_self' class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">关于优货</a>
									<div class="dropdown-menu animation-slide-bottom10">
										<a href="" title="品牌介绍" target='_self' class='dropdown-item '>品牌介绍</a>
										<a href="" title="发展历程" target='_self' class='dropdown-item '>发展历程</a>
										<a href="" title="企业荣誉" target='_self' class='dropdown-item '>企业荣誉</a>
									</div>
								</li>
								<li class="nav-item dropdown m-l-10">
									<a href="news/" title="品牌动态" target='_self' class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										品牌动态</a>
									<div class="dropdown-menu animation-slide-bottom10">
										<a href="" title="最新动态" target='_self' class='dropdown-item '>最新动态</a>
										<a href="" title="展会信息" target='_self' class='dropdown-item '>展会信息</a>
										<a href="" title="社会公益" target='_self' class='dropdown-item '>社会公益</a>
										<a href="" title="线下活动" target='_self' class='dropdown-item '>线下活动</a>
									</div>
								</li>
								<li class='nav-item'>
									<a href="service/" title="售后政策" target='_self' class="nav-link ">售后政策</a>
								</li>
								<li class='nav-item'>
									<a href="job/" title="加入我们" target='_self' class="nav-link ">加入我们</a>
								</li>
								<li class="nav-item dropdown m-l-10">
									<a href="contact/" title="联系我们" target='_self' class="nav-link dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">
										联系我们</a>
									<div class="dropdown-menu animation-slide-bottom10">
										<a href="" title="全部" class='dropdown-item nav-parent hidden-lg-up '>全部</a>
										<a href="" title="经销商网络" target='_self' class='dropdown-item '>经销商网络</a>
										<a href="" title="加盟我们" target='_self' class='dropdown-item '>加盟我们</a>
									</div>
								</li>
							</ul>
							
						</div>
						<!-- 用户操作-->
						<div class="navbar-nav navbar-left member">
									<ul class="navbar-nav navbar-left memberlist">
										<li class="navbar-left loginli">
											<div class="navlogin">
												<a class="navbar-brand" href="index-login.jsp" id="navbarLogin" title="登录"><span class="glyphicon glyphicon-user"></span></a>
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
												<a class="navbar-brand " href="shopcar.jsp" title="购物车">
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
		<!--搜索框 -->
		
		<div class="serch-bar">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<ul class="order inline-bloc">
	        			<li class=""><a href="javascript:;" class="btn btn-default">推荐<i class="fa fa-sort-up" aria-hidden="true"></i></a></li>
						<li class=""><a href="javascript:;" class="btn btn-default">热门<i class="fa fa-sort-up" aria-hidden="true"></i></a></li>
						<li class=""><a href="javascript:;" class="btn btn-default">最新<i class="fa fa-sort-down" aria-hidden="true"></i></a></li>
						<li class=""><a href="javascript:;" class="btn btn-default">销量<i class="fa fa-sort-desc" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-8">
							<div class="clearfix inline-block m-y-10 ">
								<form action="" method="get">
									<!--
									<input type="hidden" name="class1" value="2">
									<input type="hidden" name="class2" value="">
									<input type="hidden" name="class3" value="">
									<input type="hidden" name="lang" value="cn">
									<input type="hidden" name="search" value="search">
									<input type="hidden" name="content" value="">
									<input type="hidden" name="specv" value="">
									<input type="hidden" name="order" value="sales">
									-->
									<span class="pricetxt">价格：</span>
									<input type="text" name="price_low" placeholder="" value="" class="form-control inline-block w-100 price_num">
									<span class="pricetxt">-</span>
									<input type="text" name="price_top" placeholder="" value="" class="form-control inline-block w-100 price_num">
									<span class="pricetxt">商品：</span>
									<input type="text" name="price_top" placeholder="" value="" class="form-control inline-block w-160 price_num">
									<button type="submit" class="btn btn-success" style="position: relative;top: -3px;">搜索</button>
								</form>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<!--商品展示-->
		<section class="product-selection-list">
			<div class="container">
					<ul class="list">
						<div class="row row-content" id="selectionGoodsList">
						<!--js添加商品-->
					</div>
				</ul>
			</div>
		</section>
		
		<div calss="goods-page" id="paging">
			<div class="container">
				<div class="row">
					<div class="m-t-20 m-b-20 text-xs-center hidden-sm-down" m-type="nosysdata">
						<div class="met_pager"><span class="btn btn-primary">上一页</span>
							<a href="javascript:;" class="btn btn-info">1</a>
							<a href="javascript:;" class="btn btn-info">2</a>
							<a href="javascript:;" class="btn btn-info">3</a>
							<a href="javascript:;" class="btn btn-info">4</a>
							<a href="javascript:;" class="btn btn-info">5</a>
							<a href="javascript:;" class="btn btn-info">6</a>
							<a href="javascript:;" class="btn btn-info">7</a>
							<a href="javascript:;"class="btn btn-info lastPage">...8</a>
							<a href="javascript:;" class="btn btn-primary">下一页</a>
							<input type="button" id="metPageB" class="btn btn-info" value="转至第">
							<input type="text" id="metPageT" class="form-control inline-block w-100" data-pageurl="" value="1">
							<input type="button" id="metPageB" class="btn btn-info" value="页">
							<input type="button" id="metPageB" class="btn btn-warning" value="跳转">
						</div>
		            </div>
				</div>
			</div>
		</div>
		
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/lastbasic.js"></script>
<script type="text/javascript">

getShowGoodsList(36,3);	
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
							+"<a href='product_infomation.jsp?goods_id="+list[i].GId+"' title=''>"			
							+"<img src='"+imgpath+"' />"				
							+"</a>"		
							+"</li>"		
							+"</div>"	
							+"</ul>"
							+"<h4 class='card-title m-b-0'>"
							+"<a href='product_infomation.jsp?goods_id="+list[i].GId+"' title='"+list[i].goodsName+"' class='block text-truncate' target='_self' tabindex='-1'>"
							+"<p class='description'>　　</p>"
							+"<span  style=''>"+list[i].goodsName+"</span></a>"
							+"<span class='btn btn-default btn-detail'><a href='product_infomation.jsp?goods_id="+list[i].GId+"'title='"+list[i].goodsName+"' tabindex='-1'>查看详情</a></span>"
							+"<p class='price m-b-0 m-t-5'>￥$"+list[i].goodsPrice+"元</p>"
					+"</div></li>";
				//每遍历一次就添加一次
				$('#selectionGoodsList').append(str);
			}
		},
	});
}
</script>