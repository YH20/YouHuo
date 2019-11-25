<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>二期首页测试</title>
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link rel="stylesheet" href="css/loginAndRegister.css" />
		<link rel="stylesheet" href="css/shop-order.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/basic.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />

	</head>
<!--data-toggle="modal" data-target="#myModal-update"-->
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

		<!--订单-->
		<section class="my-order">
			<div class="myorder">
				<div class="container">
					<div class="row">
						<!--地址块-->
						<div class="adress-order">
							<!--实际地址-->
							<div class="show-address">
							<!--标题-->
								<span class="tita">收货信息</span>
								<a class="text-info titone" href="javascript:;" data-toggle="modal" data-target="#myModal-increase">添加新的地址</a>
								<ul class="addli">
									<li class="select-address">
										<div class="li-inner">
											<div class="myinfo">
												<span class="myname">张三</span>
												<span class="handle-default">默认</span>
												<span class="handle-delete" data-toggle="modal" data-target="#myModal-reminder"></span>
											</div>
											<div class="myinfo-address">
												<!--省-->
												<span class="myprovince">广东省</span>
												<!--市-->
												<span class="mycity">广州市</span>
												<!--区/县-->
												<span class="mydistrict">天河区</span>
												<!--街道-->
												<span class="mystreet">全区</span>
												<!--详细地址-->
												<span class="myhome" >东征山岭一街二十七号超市旁边</span>
												 <!--电话号码-->
												<span class="mytelephone">18176570100</span>
											</div>
											<a class="addr-alter" href="javascript:;"  data-toggle="modal" data-target="#myModal-update">修改</a>
											<a class="addr-set" href="javascript:;">设置默认</a>
										</div>
										<span class="myselect"></span>
									</li>
									<li>
										<div class="li-inner">
											<div class="myinfo">
												<span class="myname">张三</span>
												<span class="handle-default">默认</span>
												<span class="handle-delete" data-toggle="modal" data-target="#myModal-reminder"></span>
											</div>
											<div class="myinfo-address">
												<!--省-->
												<span class="myprovince">广东省</span>
												<!--市-->
												<span class="mycity">广州市</span>
												<!--区/县-->
												<span class="mydistrict">天河区</span>
												<!--街道-->
												<span class="mystreet">全区</span>
												<!--详细地址-->
												<span class="myhome" >东征山岭一街二十七号超市旁边</span>
												 <!--电话号码-->
												<span class="mytelephone">18176570100</span>
											</div>
											<a class="addr-alter" href="javascript:;"  data-toggle="modal" data-target="#myModal-update">修改</a>
											<a class="addr-set" href="javascript:;">设置默认</a>
										</div>
										<span class="myselect"></span>
									</li>
									<li>
										<div class="li-inner">
											<div class="myinfo">
												<span class="myname">张三</span>
												<span class="handle-default">默认</span>
												<span class="handle-delete" data-toggle="modal" data-target="#myModal-reminder"></span>
											</div>
											<div class="myinfo-address">
												<!--省-->
												<span class="myprovince">广东省</span>
												<!--市-->
												<span class="mycity">广州市</span>
												<!--区/县-->
												<span class="mydistrict">天河区</span>
												<!--街道-->
												<span class="mystreet">全区</span>
												<!--详细地址-->
												<span class="myhome" >东征山岭一街二十七号超市旁边</span>
												 <!--电话号码-->
												<span class="mytelephone">18176570100</span>
											</div>
											<a class="addr-alter" href="javascript:;"  data-toggle="modal" data-target="#myModal-update">修改</a>
											<a class="addr-set" href="javascript:;">设置默认</a>
										</div>
										<span class="myselect"></span>
									</li>
									<li>
										<div class="li-inner">
											<div class="myinfo">
												<span class="myname">张三</span>
												<span class="handle-default">默认</span>
												<span class="handle-delete" data-toggle="modal" data-target="#myModal-reminder"></span>
											</div>
											<div class="myinfo-address">
												<!--省-->
												<span class="myprovince">广东省</span>
												<!--市-->
												<span class="mycity">广州市</span>
												<!--区/县-->
												<span class="mydistrict">天河区</span>
												<!--街道-->
												<span class="mystreet">全区</span>
												<!--详细地址-->
												<span class="myhome" >东征山岭一街二十七号超市旁边</span>
												 <!--电话号码-->
												<span class="mytelephone">18176570100</span>
											</div>
											<a class="addr-alter" href="javascript:;"  data-toggle="modal" data-target="#myModal-update">修改</a>
											<a class="addr-set" href="javascript:;">设置默认</a>
										</div>
										<span class="myselect"></span>
									</li>
									<li>
										<div class="li-inner">
											<div class="myinfo">
												<span class="myname">张三</span>
												<span class="handle-default">默认</span>
												<span class="handle-delete"></span>
											</div>
											<div class="myinfo-address">
												<!--省-->
												<span class="myprovince">广东省</span>
												<!--市-->
												<span class="mycity">广州市</span>
												<!--区/县-->
												<span class="mydistrict">天河区</span>
												<!--街道-->
												<span class="mystreet">全区</span>
												<!--详细地址-->
												<span class="myhome" >东征山岭一街二十七号超市旁边</span>
												 <!--电话号码-->
												<span class="mytelephone">18176570100</span>
											</div>
											<a class="addr-alter" href="javascript:;"  data-toggle="modal" data-target="#myModal-update">修改</a>
											<a class="addr-set" href="javascript:;">设置默认</a>
										</div>
										<span class="myselect"></span>
									</li>
									
								</ul>
								<a class="myshowselect text-right">显示更多</a>
							</div>
							<!--支付方式-->
							<div class="mypay">
								<span class="pay-tit">支付方式</span>
								<ul class="paymode">
									<li class="paydefault">
										<div class="text-center paymodeone">
											在线支付
										</div>
									</li>
									<li>
										<div class="text-center paymodeone">
											微信支付
										</div>
									</li>
								</ul>
							</div>
							<div class="myproduct">
								<span class="producttit">商品服务及信息</span>
								<a class="returncar" href="shopcar.html">返回购物车修改</a>
								<div class="myproduct-info">
									<table class="store table table-bordered">
										<tr class="storetit">
											<th class="th-one text-center">商品信息</th>
											<th class="th-two text-center">服务信息</th>
											<th class="th-three text-center">单价</th>
											<th class="th-four text-center">数量</th>
											<th class="th-five text-center">小计</th>
										</tr>
										<tbody class="table-stripe">
											
											<tr class="storeinfo">
												<th class="th-one">
													<div class="oneinfo">
														<div class="storel">
															<img src="dq_img/bg1.gif">
														</div>
														<div class="storer">
															<a class="storetitone">dgggggggggggggggggggggggggggggdf</a>
															<p class="storecolor">黑</p>
															<p class="storesize">L</p>
														</div>
													</div>
												</th>
												<th class="serve text-center">
													<div class="myserve">
														<label>请及时支付，尽快发货</label>
													</div>
												</th>
												<th class="th-three text-center">
													<div class="storeprice">
														￥<label class="sprice">12.00</label>
													</div>
													
												</th>
												<th class="th-four text-center">
													<div class="storemum">
														<label class="smum">3</label>
													</div>
													
												</th>
												<th class="th-five text-center">
													<div class="storemoneyall">
														￥<label class="smoneyall">36.00</label>
													</div>
													
												</th>
											</tr>
											<tr class="storeinfo">
												<th class="th-one">
													<div class="oneinfo">
														<div class="storel">
															<img src="dq_img/bg1.gif">
														</div>
														<div class="storer">
															<a class="storetitone">dgggggggggggggggggggggggggggggdf</a>
															<p class="storecolor">黑</p>
															<p class="storesize">L</p>
														</div>
													</div>
												</th>
												<th class="serve text-center">
													<div class="myserve">
														<label>请及时支付，尽快发货</label>
													</div>
												</th>
												<th class="th-three text-center">
													<div class="storeprice">
														￥<label class="sprice">12.00</label>
													</div>
													
												</th>
												<th class="th-four text-center">
													<div class="storemum">
														<label class="smum">3</label>
													</div>
													
												</th>
												<th class="th-five text-center">
													<div class="storemoneyall">
														￥<label class="smoneyall">36.00</label>
													</div>
													
												</th>
											</tr>
												<tr class="storeinfo">
												<th class="th-one">
													<div class="oneinfo">
														<div class="storel">
															<img src="dq_img/bg1.gif">
														</div>
														<div class="storer">
															<a class="storetitone">dgggggggggggggggggggggggggggggdf</a>
															<p class="storecolor">黑</p>
															<p class="storesize">L</p>
														</div>
													</div>
												</th>
												<th class="serve text-center">
													<div class="myserve">
														<label>请及时支付，尽快发货</label>
													</div>
												</th>
												<th class="th-three text-center">
													<div class="storeprice">
														￥<label class="sprice">12.00</label>
													</div>
													
												</th>
												<th class="th-four text-center">
													<div class="storemum">
														<label class="smum">3</label>
													</div>
													
												</th>
												<th class="th-five text-center">
													<div class="storemoneyall">
														￥<label class="smoneyall">36.00</label>
													</div>
													
												</th>
											</tr>
										</tbody>
										<tfoot>
											<tr class="storemessage">
												<th colspan="2">
													<div class="mymessage">
														<span>买家留言</span>
														<div class="mymessage-input">
															<textarea rows="3" class="mywrite" placeholder="选填：对本次交易的补充说明（所填内容建议已经和卖家达成一致意见）"></textarea>
														</div>
													</div>
												</th>
												<th colspan="3" class="myfreight">
													<div class="freight-type">
														<p class="freight text-right">包邮</p>
														<div class="freightbao">
															<label class="">运费:</label>
															<!--<input type="checkbox">-->
															<p class="text-right fremoenyone">￥<span class="fremoeny">0.00</span></p>
															<!--<span>参加小件运费险,退货最高可赔6元 </span>-->
														</div>
													</div>
												</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
							<!--发票信息-->
							<div class="invoice">
								<span class="invoice-tit">发票信息</span>
								<!--<a class="invoice-udate" href="javascript:;">修改</a>-->
								<div class="invoice-content">
									<div class="invoice-contentone">
										<span class="contentone">
										发票类型:
									   </span>
										<span class="contenttwo">纸质普通发票 </span>
										<span class="contentone">
										抬头发票:
									   </span>
										<span class="contenttwo">无 </span>
									</div>

								</div>
							</div>
							<!--结算信息-->
							<div class="mycost">
								<span class="mycost-tit">结算信息</span>
								<div class="showcostfirst">
									<div class="showcost">
										<div class="discounts">
											<!--<span class="discounts-add">+</span>
											<span class="discounts-add1">使用优惠</span>-->
										</div>
										<div class="countcost text-right">
											<span class="cc">1</span>件商品
											<span >总计:</span>
											<span class="shop-price">
											￥<span class="pricenum">1000</span>
											</span>
										</div>
										<div class="count-discounts text-right">
											<span >运费:</span>
											<span class="shop-pricetwo">
											￥<span class="pricenumtwo">0.00</span>
											</span>
										</div>
										<div class="count-discounts text-right">
											<span >优惠:</span>
											<span class="shop-pricethree">
											￥<span class="pricenumthree">0.00</span>
											</span>
										</div>
									</div>
								</div>
							</div>
							<!--支付-->
							<div class="payment">
								<div class="paymentone">
									<p class="pay-price text-right">
										<span class="paytit">应付金额:</span>
										￥<span class="paynum">5559.00</span>
									</p>
									<button class="btn text-center pay-btn " >提交订单</button>
								</div>
							</div>
						</div>
						<!--信息-->
					</div>
					<!--模态弹窗增加地址-->
					<div class="modal fade" id="myModal-increase" data-backdrop="static">
						 <div class="modal-dialog myadd-increase">
						 	<!--内容-->
						      <div class="modal-content">
						      	<!--头部-->
						          <div class="modal-header">
						          	<span class="modalincre-title">增加收货地址</span>
						          	<span class="modalincre-close" data-dismiss="modal">&times;</span>
	                              </div>
	                              <!--身体-->
	                              <div class="modal-body">
	                              	<div class="increase-info">
	                              		<!--收货人-->
	                              		<div class="increasename-input input-group">
	                              			<label id="namelabel">*收货人:</label>
	                              			<input type="text" class="input-group-lg increasename" placeholder="输入姓名,如张三"/>
	                              			<p class="increasenameerr-one">
	                              				<span class=""></span>
	                              				收货姓名不能为空
	                              			</p>
	                              			<p class="increasenameerr-two">
	                              				<span class=""></span>
	                              				请输入中英数文字！
	                              			</p>
	                              			<p class="increasesucces-one">
	                              			</p>
	                              		</div>
	                              		<div class="increasephone-input input-group">
	                              			<label id="phonelabel">*手机:</label>
	                              			<input type="text" class="input-group-lg increasephone" placeholder="输入正确手机号"/>
	                              			<p class="increasephoneerr-one">
	                              				<span class="errimg"></span>
	                              				手机号不能为空!
	                              			</p>
	                              			<p class="increasephoneerr-two">
	                              				<span class="errimg"></span>
	                              				请输入正确格式手机号！
	                              			</p>
	                              			<p class="increasesucces-two">
	                              			</p>
	                              		</div>
	                              		<div class="increaseadr input-group">
	                              			<label id="adrlabel">*所在地区:</label>
	                              			<input type="text" class="input-group-lg increasearea"/>
	                              		</div>
	                              		<div class="increase-detailed input-group">
	                              			<label id="detlabel">*详细地址:</label>
	                              			<input type="text" class="input-group-lg  incredetailed" placeholder="街道、小区、楼牌号等，无须重复填写省市区" />
	                              			<p class="incredetailederr-three">
	                              				<span class="errimg"></span>
	                              				详细地址不能为空！
	                              			</p>
	                              			<p class="increasesucces-three">
	                              			</p>
	                              		</div>
	                              		<div class="saveincrease">
	                              			<a href="javascript:;" class="btn savemyincrease">增加并使用</a>
	                              		</div>
	                              	</div>
	                              	
	                              	
	                              </div>
	                              <!--底部-->
	                              <div class="modal-footer">底部</div>
						      </div>
						 </div>
					</div>
					
					<!--模态弹窗修改地址-->
					<div class="modal fade" id="myModal-update" data-backdrop="static">
						 <div class="modal-dialog myadd-update">
						 	<!--内容-->
						      <div class="modal-content">
						      	<!--头部-->
						          <div class="modal-header">
						          	<span class="modalup-title">修改收货地址</span>
						          	<span class="modalup-close" data-dismiss="modal">&times;</span>
	                                <!--<h4 class="modal-title">
	                                	<span class="modalclose" data-dismiss="modal">&times;</span>
	                                </h4>-->
	                              </div>
	                              <!--身体-->
	                              <div class="modal-body">
	                              	<div class="update-info">
	                              		<!--收货人-->
	                              		<div class="addrmyname-input input-group">
	                              			<label id="namelabel">*收货人:</label>
	                              			<input type="text" class="input-group-lg adrname" placeholder=""/>
	                              			<p class="mynameerr-one">
	                              				<span class="errimg"></span>
	                              				收货姓名不能为空
	                              			</p>
	                              			<p class="mynameerr-two">
	                              				<span class="errimg"></span>
	                              				请输入中英数文字！
	                              			</p>
	                              			<p class="mysucces-one">
	                              			</p>
	                              		</div>
	                              		<div class="addrmyphone input-group">
	                              			<label id="phonelabel">*手机:</label>
	                              			<input type="text" class="input-group-lg adrphone" placeholder=""/>
	                              			<p class="myphoneerr-one">
	                              				<span class="errimg"></span>
	                              				手机号不能为空!
	                              			</p>
	                              			<p class="myphoneerr-two">
	                              				<span class="errimg"></span>
	                              				请输入正确格式手机号！
	                              			</p>
	                              			<p class="mysucces-two">
	                              			</p>
	                              		</div>
	                              		<div class="addrmyadr input-group">
	                              			<label id="adrlabel">*所在地区:</label>
	                              			<input type="text" class="input-group-lg adrarea"/>
	                              		</div>
	                              		<div class="mydetailed input-group">
	                              			<label id="detlabel">*详细地址:</label>
	                              			<input type="text" class="input-group-lg  adrdetailed" placeholder="" />
	                              			<p class="detailederr-three">
	                              				<span class="errimg"></span>
	                              				详细地址不能为空！
	                              			</p>
	                              			<p class="mysucces-three">
	                              			</p>
	                              		</div>
	                              		<div class="saveaddr">
	                              			<a href="javascript:;" class="btn savemyaddr">保存并使用</a>
	                              		</div>
	                              	</div>
	                              </div>
	                              <!--底部-->
	                              <div class="modal-footer"></div>
						      </div>
						 </div>
					</div>
					
				    <!--弹窗提示信息-->
				     <div class="modal fade" id="myModal-reminder" data-backdrop="static">
				     	
	                    <!--窗口层   大中小  默认为中-->
	                   <div class="modal-dialog">
	                       <!--内容层-->
	                       <div class="modal-content prompt">
	                       <!--头部，身体，底部-->
	                        <div class="modal-header">
	                          <div class="modal-title titie">
	                       	    <span class="reminderclose" data-dismiss="modal">&times;</span>
	                         </div>
	                       </div>
	                       <div class="modal-body">
	                       	   <div class="content-hint">
				                   <h3>是否删除信息</h3>
			                   </div>
			                   <div class="containerfoot">
				                  <button class="myconfirm btn">确定</button>
				                  <button class="mycancel btn" data-dismiss="modal" >取消</button>
			                   </div>
	                       </div>
	                       <div class="modal-footer">
	                       </div>
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
<script type="text/javascript" src="js/order.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/user.js"></script>
<script>
	//	setTimeout(function() {
	//		$('.load').css('display', 'none')
	//	}, 300);
</script>