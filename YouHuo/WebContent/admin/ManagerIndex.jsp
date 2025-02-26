<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="img/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />优货后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="adv.html" ><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="userlist.html" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
    <li><a href="orderlist.html" target="right"><span class="icon-caret-right"></span>订单管理</a></li>  
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>商品管理</a></li>  
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>分类管理</a></li>
    <li><a href="message.html" target="right"><span class="icon-caret-right"></span>留言管理</a></li>
         
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="indexInfo.html" target="right" class="icon-home"> 首页</a></li>
 
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="indexInfo.html" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">

</div>
</body>
</html>