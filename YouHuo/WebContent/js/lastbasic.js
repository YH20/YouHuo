//获得地址栏参数值?  cat_id=55&name=xiaoming
function getUrlVal(property){
	//地址栏
	var urlStr = window.location.search.substring(1);
	var re = new RegExp('(^|&)' + property + '=([^&]*)(&|$)');
	var result = urlStr.match(re);
	if(result == null) {
		return null
	};
	return result[2];
};
//点击返回顶部
goTop();
//返回顶部的方法封装
function goTop() {
	$(window).scroll(function() {
		if($(window).scrollTop() > 300) {
			$('.back-top-met').fadeIn();
		} else {
			$('.back-top-met').fadeOut();
		}
	});
	//点击返回顶部
	$('.back-top-met').click(function() {
		$('html,body').animate({
			'scrollTop': 0
		}, 1000);
	});
}

//查看登录状态
	checkLogin();
	//修改头部
	//首页打开，判断用户是否登录
	//清空本地存储
	function checkLogin(){
	  //获取localStorage  username  token
	  var userName = localStorage.getItem('username');
	  var token = localStorage.getItem('token');
//	  console.log(token);
	  //验证
	  if(token){
	  	$('#navbarLogin').hide();
		$('#welcome').show();
		$('#welcome').html('欢迎您:'+userName+'<span class="caret"></span>');
		  }else{
		    $('#navbarLogin, #navbarRegister').show();
		$('#welcome').hide();
		$('#navbarLogin').show();
		$('#welcome').html('');
		  };
	};
	
	//点击弹出个人中心菜单
	$('#welcome').click(function(){
		$('#userDropDown').show();
	});
	$(document).on('click',function(e){  
	  if( e.target !== $('#userDropDown') ){  
	    $('#userDropDown').hide();  
	  }  
	}); 
		//点击退出
	$('#userExit').click(function(){
		//清空本地存储
	    localStorage.removeItem('username');
	    localStorage.removeItem('token');
	    //调用交互方法
	    checkLogin();
	    $('#userDropDown').hide();
	});
	$('#userDropDown').mouseleave(function(){
		$('#userDropDown').hide();
	});