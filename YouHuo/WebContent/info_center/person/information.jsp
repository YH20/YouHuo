<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/lastbasic.js"></script>
		<link rel="stylesheet" href="../css/basic.css" type="text/css"/>
		<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css"  />
		<link rel="stylesheet" href="../css/font-awesome.css" type="text/css" />
		<style type="text/css">
			.tishi{color:red;font-size:14px;border:none;}
		</style>
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
									<a href="http://localhost:8080/YouHuo/index.jsp" id="ahome" class="nav-link active">首页</a>
								</li>
								<li class="nav-item dropdown m-l-10" id="product">
									<a href="http://localhost:8080/YouHuo/goodsList.jsp" class="nav-link dropdown-toggle" data-hover="dropdown">产品</a>
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
												<a class="navbar-brand" href="/youhuo/index-login.jsp" id="navbarLogin" title="登录"><span class="glyphicon glyphicon-user"></span></a>
												
											</div>
										</li>
										<li calss='shopcarli'>
											<div class="navshopcart">
												<a class="navbar-brand" href="/youhuo/shopcar.jsp" title="购物车">
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

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">
							<div class="filePic">
								<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="../images/getAvatar.do.jpg" alt="" />
							</div>
							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i>${sessionScope.user.username }</i></b></div>
								<div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">${sessionScope.user.level }</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="safety.jsp">
									 账户安全
									<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">76分</i></span>
									</a>
								</div>
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal" name="myinfoall" id="myinfo">

								<div class="am-form-group">
									<label class="am-form-label" >性别</label>
									<div class="am-form-content sex" name="SSex">
										<label class="am-radio-inline">
											<input type="radio" name="radio10" value="male" data-am-ucheck> 男
										</label>
										<label class="am-radio-inline">
											<input type="radio" name="radio10" value="female" data-am-ucheck> 女
										</label>
										<label class="am-radio-inline">
											<input type="radio" name="radio10" value="secret" data-am-ucheck> 保密
										</label>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-birth" class="am-form-label">生日</label>
									<div class="am-form-content birth">
										<div class="birth-select">
											<select name="YYear" data-am-selected>
											</select>
											<em>年</em>
										</div>
										<div class="birth-select2">
											<select name="MMonth" data-am-selected>
											</select>
											<em>月</em></div>
										<div class="birth-select2">
											<select name="DDay" data-am-selected >
											</select>
											<em>日</em></div>
									</div>
							
								</div>
								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">电话</label>
									<div class="am-form-content">
										<input id="user-phone" placeholder="telephonenumber" type="tel" name="TTel"/>
										<button class="tishi">格式错误</button>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-email" class="am-form-label">电子邮件</label>
									<div class="am-form-content">
										<input id="user-email" placeholder="Email" type="email" name="EEmail">
										<button class="tishi">格式错误</button>
									</div>
								</div>
								<div class="info-btn">
									<button class="am-btn am-btn-danger" type="submit">保存修改</button>
								</div>

							</form>
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
						<a href="index.jsp">个人中心</a>
					</li>
					<li class="person">
						<a href="#">个人资料</a>
						<ul>
							<li class="active"> <a href="information.jsp">个人信息</a></li>
							<li> <a href="safety.jsp">安全设置</a></li>
							<li> <a href="address.jsp">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li><a href="order.jsp">订单管理</a></li>
							<li> <a href="change.jsp">退款售后</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li> <a href="coupon.jsp">优惠券 </a></li>
							<li> <a href="bonus.jsp">红包</a></li>
							<li> <a href="bill.jsp">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li> <a href="collection.jsp">收藏</a></li>
							<li> <a href="foot.jsp">足迹</a></li>
							<li> <a href="comment.jsp">评价</a></li>
							<li> <a href="news.jsp">消息</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>
</html>
<script type="text/javascript" >
/*先得到session数据   修改之前需要默认值*/

/*测试👇*/
//1
	$().click(function(){
		var myheadimg=$().val();var sex=$().val();
		var phonenum=$().val();
		var email=$().val();
	
	
	});
	//2
	function updateInfo(){
		var myid="a5e52c60-dadd-4cc6-a0ed-25ead2b60f14";
		$.ajax({
        		type:"post",
        		url:"http://localhost:8080/YouHuo/updatemyinfo",//servlet文件的名称
        		data:"myid=" + myid,
        		success:function(e){
        			var myinfo
           			var json = eval("("+e+")");
					//获取后端数据
					var level;
					var levelnum=json.userlevel;
					var vip="vip"+levelnum;
					console.log("会员等级："+json.userlevel);
         			$(".m-baseinfo").empty();
         			myinfo='<a href='+"information.jsp"+'><img src='+"../images/getAvatar.do.jpg"+'></a>'+
							'<em class='+"s-name"+'>'+json.username+'<span class="'+vip+'"></span></em>'+
							'<em class='+"s-name2"+'>&emsp;tel:<span>'+json.userphone+'</span></em>'+
							'<div class="'+'s-prestige am-btn am-round"'+'>&emsp;'+json.level+'福利</div>';
					$(".m-baseinfo").append(myinfo);
        		}
        	});
	}
		
        	
/*测试👆*/
/* $('#..').attr('checked',true)
		
		$(":radio")	所有 type="radio" 的 <input> 元素 */

/*已完成👇*/
	$("button.tishi").hide();
	$("#user-phone").mouseleave(function(){
		var telphone=$(this).val();
		checkPhone(telphone,$(this).siblings().eq(0));
	});
	
	$("#user-email").mouseleave(function(){
		var email=$(this).val();
		checkEmail(email,$(this).siblings().eq(0));
	});
	
	$(document).ready(function(){
		var date = new Date(); 
		var yearnow=date.getFullYear();
		var monthnow=date.getMonth()+1;
		var daynow =date.getDate();
		var dropList;
		for (var i=yearnow;i>=1945;i--) {
			 if(i==yearnow){
      			dropList=dropList+"<option value='"+i+"' selected>"+i+"</option>";
    		}else {
      			dropList=dropList+"<option value='"+i+"'>"+i+"</option>";
   			 }
		}
		$("#myinfo select[name=YYear]").html(dropList);//生成年份下拉列表
		 var monthly;
		for(var j=1;j<13;j++){
		  		if(j==monthnow){
		  			monthly=monthly+'<option value="'+j+'" selected>'+j+'</option>'
		  		}else{
		  			monthly=monthly+'<option value="'+j+'">'+j+'</option>'
		  		}
		 	}
		$('#myinfo select[name=MMonth]').html(monthly);//生成月份下拉列表
		var daily;
		for(var day=1;day<=31;day++){
			if (day==daynow) {
				daily=daily+'<option value="'+day+'" selected>'+day+'</option>';
			} else{
				daily=daily+'<option value="'+day+'">'+day+'</option>';
			}
		}
		$('#myinfo select[name=DDay]').html(daily);
		
		$('#myinfo select[name=YYear]').change(YearORMonthChange);
		$('#myinfo select[name=MMonth]').change(YearORMonthChange);
	});

	function YearORMonthChange(){
	    var currentDay;
	    var total;
	    var flag = $('#myinfo select[name=YYear]').val();
	    console.log("当前选择年份    "+flag);
	    var currentMonth=$('#myinfo select[name=MMonth]').val();
	    console.log("当前选择月份 ："+currentMonth);
	    switch (currentMonth){
	      case "1":
	      case "3":
	      case "5":
	      case "7":
	      case "8":
	      case "10":
	      case "12":total=31;break;
	      case "4":
	      case "6":
	      case "9":
	      case "11":total=30;break;
	      case "2":
	        //闰年 整除4但是不整除100 或者整除400
	        if( (flag%4==0 && flag%100!=0 ) || flag%400==0){
	          total=29;
	        }else {
	          total=28;
	        }
	      default :break
		}
	    for(day=1;day<=total;day++){
	      currentDay=currentDay+'<option value="'+day+'">'+day+'</option>'
	    }
	    $('#myinfo select[name=DDay]').html(currentDay);//生成日期下拉列表
	};
	
	function checkPhone(telphone,e){
    	if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(telphone))){
    		e.show();
   	 	}else{
   	 		e.hide();
   	 	}
	}
	function checkEmail(email,e){
	    var re =/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/
	    if(re.test(email)){
	        e.hide();
	    }else{
	        e.show();
	    }
	}
</script>