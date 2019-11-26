<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>二期首页测试</title>
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/basic.css" />
		<link rel="stylesheet" href="css/loginAndRegister.css" />
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
		
		<section class="register">
			<div class="register-index">
				<div class="container">
					<div class="register-conta">
					   <form action="" method="" >
						<div class="form-register">
							<h2 class="text-center">会员注册</h2>
							<!--头像-->
							<div class="text-center register-photo">
								<div class="photoimg">
									<img class="imgphoto" style="border-radius: 50%;" src="dq_img/bg1.gif" />
								    <span class="imgadd">+</span>
								</div>
								
								<input type="hidden" value="" id="content" name="content" />
							    <input type="file" class="select-file" onchange="show(this)" />
							</div>
							<!--用户名-->
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-user" id="sizing-addon1"></span>
								<input type="text" name="registeruser" id="" value="" class="form-control form-user input-lg" placeholder="用户名" aria-describedby="sizing-addon1" />
								<p class="userError"><img src="img/eer.png"/>此项不能为空</p>
								<p class="userError1"><img src="img/eer.png"/>用户名必须在2-12个字符之间,最长12个英文或6个汉字</p>
								<p class="userError2"><img src="img/eer.png"/>用户名仅支持中英文、数字和下划线,且不能为纯数字</p>
								<p class="userError3"><img src="img/eer.png"/>用户已存在</p>
								<h5 class="correct"></h5>
								<!--<span class="correct">1</span>-->
								<!-- <span class="clear-btn">2</span>-->
							</div>
							<!--密码-->
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-lock"></span>
								<input type="password" name="registerpass" id="" value="" class="form-control form-pass input-lg" placeholder="密码" />
								<p class="passError"><img src="img/eer.png"/>此项不能为空</p>
								<p class="passError1"><img src="img/eer.png"/>密码必须在6-30个字符之间 </p>
								<p class="passError2"><img src="img/eer.png"/>密码不允许有空格 </p>
								<p class="passError3"><img src="img/eer.png"/>两次密码输入不一致</p>
								<h5 class="correct"></h5>
							</div>
							
							<!--重复密码-->
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-lock "></span>
								<input type="password" name="" id="" value="" class="form-control form-pass1 input-lg" placeholder="重复密码" />
								<p class="pass1Error"><img src="img/eer.png"/>此项不能为空</p>
								<p class="pass1Error1"><img src="img/eer.png"/>两次密码输入不一致</p>
								<h5 class="correct"></h5>
							</div>
							
							<!--密保问题-->
							<div class="register-question">
								<div class="input-group">
									<span class="input-group-addon glyphicon glyphicon-question-sign"></span>
									<select class="form-control input-lg rgister-pose" name="registerpose">
                                        <option value="0">请设置密保问题</option>
                                        <option value="1">对您影响对大的人名字?</option>
                                        <option value="2">您出生城市名称?</option>
                                        <option value="3">您影响最大的学校名称?</option>
                                        <option value="4">您初中班主任的名字是?</option>
                                        <option value="5"> 您的学号（或工号）是？</option>
                                    </select>
                                    <p class="reg-poseError"><img src="img/eer.png"/>请您选择一项合适密保问题</p>
								</div>
								<div class="input-group register-answer">
									<span class="input-group-addon glyphicon glyphicon-pencil"></span>
									<input type="text" name="registeranswer" class="form-control input-lg reg-input-answer" placeholder="输入密保答案">
									<p class="reg-answerError"><img src="img/eer.png"/>请您选择一项填入</p>
									<p class="reg-answerError1">限中文,数字,字母</p>
								</div>
							</div>
							
							
							<!--验证码-->
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-file"></span>
								<input type="text" name="registercode" id="" value="" class="form-control form-messge input-lg" placeholder="验证码" />
							    <a class="btn input-group-btn"><img  name="" id="register-random" onclick="flushCode(this)" src="imageServlet" /></a>
								<p class="mesError"><img src="img/eer.png"/>此项不能为空</p>
								<p class="mes1Error"><img src="img/eer.png"/>验证码错误!</p>
							</div>
							<button type="submit" class="btn btn-block register-btn btn-lg">立即注册</button>
							<h5 class="text-right"><a class="" href=" index-login.html">已有账号?</a></h5>
						</div>
						</form>
					</div>

					

				</div>
			        <div class="conta-skip">
			    	    <div class="regtit">
							<span class="btn text-right hclose">&times;</span>
						</div>
						<div class="container load-conta">
							<h1 class="text-center">正在跳转主页面</h1>
							<div class="load-number" id="load-number">
								<span class="current"></span>
								<span></span>
								<span></span>
							</div>
							<h3 class="text-center"></h3>
							<h2 class="text-center">注册成功!</h2>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/user.js"></script>