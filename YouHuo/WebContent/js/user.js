setTimeout(function() {
	$('.load').css('display', 'none')
}, 300);

//   ----------用户登录，注册，忘记密码--------------

//注册----------------------------
//定义四个锁
var regf = false;
var regf1 = false;
var regf2 = false;
var regf3 = false;
var regf4=false;
// 存账号和密码
var userName = null;
var pwd = null;
//页面打开产生随机验证码
$('#register-random').val(randommessage());
//注册
//初始为锁上
$('.register-btn').attr('disabled', true);

$(".imgadd").click(function(){
	$(".select-file").show();
});
//更换头像
function show(obj){
//	创建一个读取文件流
	var fr=new FileReader();
	var f=obj.files[0];
	fr.readAsDataURL(f);
	
	fr.onload=function(e){
		var content=e.target.result;
		$(".imgphoto").attr("src",content);
		$("#content").val(content);
	}
	
}

//用户获得焦点验证
$('.input-group .form-user').focus(function() {
	//	获得焦点
	$(".select-file").hide();
});
$('.input-group .form-user').blur(function() {
	//	失去焦点
//	验证用户是否存在
});
$('.input-group .form-user').keydown(function() {
	//	获得焦点清楚其他提示
	$(this).siblings('.userError').hide();
	$(this).siblings('.userError1').hide();
	$(this).siblings('.userError2').hide();
	$(this).siblings('.userError3').hide();
	$(this).css('border', '1px solid skyblue');
	$(this).siblings('span').css('border', '1px solid #ccc');
	$(this).siblings('.correct').hide();
});
$('.input-group .form-user').keyup(function() {
	var users = $(this).val();
	userName = users;
	//	判断纯数字
	var reg = /\D/g;
	//  判断2-12位
	//  var uleng=leng(users);
	//  判断只能填入中英数下划线
	//  var flag=decide(users);
	if(users == '') {
		$(this).siblings('.userError').show();
		$(this).css('border', '1px solid red');
		$(this).siblings('span').css('border', '1px solid red');
		regf = false;
		return
	} else if(leng(users) < 2 || leng(users) > 12) {
		$(this).siblings('.userError1').show();
		$(this).css('border', '1px solid red');
		$(this).siblings('span').css('border', '1px solid red');
		regf = false;
		return
	} else if(!reg.test(users)) {
		$(this).siblings('.userError2').show();
		$(this).css('border', '1px solid red');
		$(this).siblings('span').css('border', '1px solid red');
		regf = false;
		return
	} else if(decide(users)) {
		$(this).siblings('.userError2').show();
		$(this).css('border', '1px solid red');
		$(this).siblings('span').css('border', '1px solid red');
		regf = false;
		return
	}
	regf = true;
	$(this).siblings('.correct').show();
	$(this).css('border', '1px solid #ccc');

	//	验证用户存在
	lock1();
});

//输入密码
//$('.input-group .form-pass').keydown(function() {
//	//	获得焦点清楚其他提示
//	$(this).siblings('.passError').hide();
//	$(this).siblings('.passError1').hide();
//	$(this).siblings('.passError2').hide();
//	$(this).siblings('.passError3').hide();
//	$(this).css('border', '1px solid skyblue');
//	$(this).siblings('span').css('border', '1px solid #ccc');
//	$(this).siblings('.correct').hide();
//});
//按下行为
$('.input-group .form-pass').keydown(function() {
	ippassevent(this);
});
//按开行为
$('.input-group .form-pass').keyup(function() {
	var pass = $(this).val();
	ippassevent1(pass, this);
});
//焦点行为
$('.input-group .form-pass').focus(function() {
	$(".select-file").hide();
	ippassevent(this);
});
//失焦行为
$('.input-group .form-pass').blur(function() {
	var pass = $(this).val();
	ippassevent1(pass, this);
});

//封装输入密码判断1
function ippassevent(that) {
	$(that).siblings('.passError').hide();
	$(that).siblings('.passError1').hide();
	$(that).siblings('.passError2').hide();
	$(that).siblings('.passError3').hide();
	$(that).css('border', '1px solid skyblue');
	$(that).siblings('span').css('border', '1px solid #ccc');
	$(that).siblings('.correct').hide();
};
//封装输入密码判断2
function ippassevent1(pass, that) {
	pwd = pass;
	//	判断空格
	var reg = /\s/g;
	if(pass == '') {
		$(that).siblings('.passError').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		regf1 = false;
		return
	} else if(pass.length < 6 || pass.length > 30) {
		$(that).siblings('.passError1').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		regf1 = false;
		return
	} else if(reg.test(pass)) {
		$(that).siblings('.passError2').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		regf1 = false;
		return
	}
	regf1 = true;
	$(that).css('border', '1px solid #ccc');
	$(that).siblings('.correct').show();
	lock1();
};

//再输入密码
$('.input-group .form-pass1').keydown(function() {
	passevent(this);
});
$('.input-group .form-pass1').keyup(function() {
	var pass1 = $(this).val();
	passevent1(pass1, this);
});

$('.input-group .form-pass1').focus(function() {
	$(".select-file").hide();
	passevent(this);
});
$('.input-group .form-pass1').blur(function() {
	var pass1 = $(this).val();
	passevent1(pass1, this);

});

function passevent(that) {
	//	获得焦点清楚其他提示
	$('.input-group .form-pass').siblings('p').hide();
	$('.input-group .form-pass').css('border', '1px solid #ccc');
	$('.input-group .form-pass').siblings('span').css('border', '1px solid #ccc');
	$(that).siblings('.pass1Error').hide();
	$(that).siblings('.pass1Error1').hide();
	$(that).css('border', '1px solid skyblue');
	$(that).siblings('span').css('border', '1px solid #ccc');
	$(that).siblings('.correct').hide();

}

function passevent1(pass1, that) {
	//	获得焦点清楚其他提示
	//   获得新的密码
	if(pass1 == '') {
		$(that).siblings('.pass1Error').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		regf2 = false;
		return
	} else if(pwd != pass1) {
		$(that).siblings('.pass1Error1').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		$('.input-group .form-pass').siblings('.passError3').show();
		$('.input-group .form-pass').css('border', '1px solid red');
		$('.input-group .form-pass').siblings('span').css('border', '1px solid red');
		regf2 = false;
		return
	}
	regf2 = true;
	$(that).css('border', '1px solid #ccc');
	$(that).siblings('.correct').show();
}

//密保问题
$(".reg-input-answer").focus(function(){
	$(".select-file").hide();
	$('.rgister-pose').css('border', '1px solid #ccc').siblings('span').css('border', '1px solid #ccc');
	$(".reg-poseError").hide();
	$(".reg-answerError1").css("color","green");
	$(".reg-answerError1").show().siblings('p').hide();
	var value=$(".rgister-pose").val();
	if(value=="请设置密保问题"){
		$(".reg-poseError").show();
		$('.rgister-pose').css('border', '1px solid red').siblings('span').css('border', '1px solid red');
		regf4=false;
		return
	}
	
});
$(".reg-input-answer").blur(function(){
	var value=$(this).val();
	var reg=/^([\u4e00-\u9fa5]|[A-Za-z0-9])+$/g
	if(value.length==0){
		$('.reg-answerError').show().siblings('p').hide();
		regf4=false;
		return
	}else if(!reg.test(value)){
		$('.reg-answerError1').css("color","red").show();
		$(this).css('border', '1px solid red').siblings('span').css('border', '1px solid red');
		regf4=false;
		return
	}
	regf4=true;
	$(this).css('border', '1px solid #ccc').siblings('span').css('border', '1px solid #ccc');
	$(this).siblings('p').hide();
	lock1();
});



//验证码
$('.input-group .form-messge').focus(function(){
	$(".select-file").hide();
});

$('.input-group .form-messge').keydown(function() {
	$(this).siblings('mesError').hide();
	$(this).siblings('mes1Error').hide();
	$(this).css('border', '1px solid skyblue');
	$(this).siblings('span').css('border', '1px solid #ccc');
	$(this).siblings('a').css('border', '1px solid #ccc');
});
//点击按钮产生随机验证码
$('#register-random').click(function() {
	$(this).val(randommessage());
	$('.input-group .form-messge').css('border', '1px solid #ccc')
	$('.input-group .form-messge').siblings('mesError').hide();
	$('.input-group .form-messge').siblings('span').css('border', '1px solid #ccc');
	$('.input-group .form-messge').siblings('a').css('border', '1px solid #ccc');
});

//验证码按下
$('.input-group .form-messge').keyup(function() {
	$('.input-group .mes1Error').hide();
	$('.input-group .mesError').hide();
	var info1 = $('.input-group .form-messge').val();
	if(info1 == '') {
		$(this).css('border', '1px solid red');
		$('.input-group .mesError').show();
		$(this).siblings('span').css('border', '1px solid red');
		$(this).siblings('a').css('border', '1px solid red');
		regf3 = false;
		return
	}
	//	判断验证码输入正确
	regf3 = true;
	$(this).css('border', '1px solid #ccc');
	lock1();
});

//注册成功跳转页页面时间等内容
var time = 6;
var timeA;
var n = 0;

//点击按钮
$('.register-btn').click(function() {
//	每点击一次用户名提示隐藏
	$('.input-group .userError3').hide();
	$('.form-user').css('border', '1px solid #ccc');
	lock1();
	var randommess = $('#register-random').val();
	var info1 = $('.input-group .form-messge').val();
//	随机验证码验证成功可以去获取数据
	if(disrandom(info1, randommess)) {
		//	注册成功与失败返回验证
		$.post('http://www.wjian.top/shop/api_user.php', {
			status: 'register',
			username: userName,
			password: pwd,
		}, function(re) {
			console.log(JSON.parse(re));
			//		注册返回失败
			if(JSON.parse(re).code!= 0) {
				$('.input-group .userError3').show();
				$('.form-user').focus();
				$('.form-user').select();
				$('.form-user').css('border', '1px solid red');
				//	每点击一次随机验证码重新调用
                $('#register-random').val(randommessage());
				return;
			}
			//		注册成功写一个窗框
			//		注册成功
			$('.conta-skip').show();
			timeA = setInterval(function() {
				time--;
				if(time == 0) {
//					跳转
					window.location.href = 'index-login.html';
					stop();
				}
				$('.load-conta>h3').html(time + 's');
				play();
			}, 1000);
		});
	} else{//随机验证码验证失败
		$('.input-group .form-messge').siblings('span').css('border', '1px solid red');
		$('.input-group .form-messge').siblings('a').css('border', '1px solid red');
		$('.input-group .form-messge').css('border', '1px solid red');
		$('.input-group .mes1Error').show();
	}
});

//注册成功弹出窗口内容
function stop() {
	clearInterval(timeA);
}

//封装序号
function play() {
	n++;
	if(n > $('.load-number>span').size() - 1) {
		n = 0;
	}
	$('.load-number span').eq(n).addClass('current').siblings('span').removeClass('current');
}
$('.conta-skip .hclose').click(function() {
	$('.conta-skip').hide();
});

function lock1() {
	if(regf && regf1 && regf2 && regf3&&regf4) {
		$('.register-btn').attr('disabled', false);
	} else {
		$('.register-btn').attr('disabled', true);
	}
}

//用户登录-------------------------------------------------------------
//账户
//定义三个锁
var flog = false;
var flog1 = false;
var flog2 = false;
var loguser = null;
var logpwd = null;
//首先禁用按钮,按钮点击不了
$('.login-btn').attr('disabled', true);
//获得焦点找到记住账号的

//$('.form-login .login-user').focus(function(){
//	$(this).siblings('.logError').hide();
//	$(this).css('border','1px solid dodgerblue');
//}); 
//$('.form-login .login-user').blur(function(){
//	var user=$(this).val();
//	if (user=='') {
//		$(this).siblings('.logError').show();
//		$(this).css('border','1px solid red');
//		return
//	}
//	$(this).css('border','1px solid #ccc');
////	记住找账号
//});
//键盘事件按下
$('.form-login .loginput .login-user').keydown(function() {
	$(this).siblings('.clueuser').hide();
	logevent(this);
});
$('.form-login .loginput  .login-user').keyup(function() {
	var user = $(this).val();
	logevent1(user, this);
});

//失去焦点
$('.form-login .loginput .login-user').focus(function() {
	$(this).siblings('.clueuser').show().siblings('p').hide();
	$(this).siblings('.clear').show();
	logevent(this);
});
$('.form-login .loginput .login-user').blur(function() {
	$(this).siblings('.clueuser').hide();
	var user = $(this).val();
	logevent1(user, this);
});

//点击清除按钮，输入框清空
$('.loginput .clear').click(function() {
	$(this).siblings('.login-user').val('');
	$(this).siblings('.login-user').focus();
});

function logevent(that) {
	$(that).siblings('.logError').hide();
	$(that).css('border', '1px solid dodgerblue');
};

function logevent1(user, that) {
	loguser = user;
	//判断纯数字
	var reg = /\D/g;
	//  判断2-12位
	//  var uleng=leng(users);
	//  判断只能填入中英数下划线
	//  var flag=decide(users);
	if(user == '') {
		$(that).siblings('.clear').hide();
		$(that).siblings('#loge').show();
		$(that).css('border', '1px solid red');
		flog = false;
		return
	} else if(leng(user) < 2 || leng(user) > 12) {
		$(that).siblings('.clear').hide();
		$(that).css('border', '1px solid red');
		flog = false;
		return
	} else if(!reg.test(user)) {
		$(that).siblings('.clear').hide();
		$(that).css('border', '1px solid red');
		flog = false;
		return
	} else if(decide(user)) {
		$(that).siblings('.clear').hide();
		$(that).css('border', '1px solid red');
		flog = false;
		return
	}
	$(that).css('border', '1px solid #ccc');
	//	记住找账号逻辑，判断账号存在的逻辑
	//  设置标记为真
	flog = true;
	lock();
};

$('.form-login .login-pass').keydown(function() {
	$(this).siblings('.cluepass').hide();
	logpassevent(this);
	
});
$('.form-login .login-pass').keyup(function() {
	var pass = $(this).val();
	logpassevent1(pass, this);
});

$('.form-login .login-pass').focus(function() {
	$(this).siblings('.cluepass').show().siblings('p').hide();
	$(this).siblings('.clear1').show();
	logpassevent(this);
});
$('.form-login .login-pass').blur(function() {
	$(this).siblings('.cluepass').hide();
	var pass = $(this).val();
	logpassevent1(pass, this);
});
//登录封装验证方法
function logpassevent(that) {
	$(that).siblings('.logpassError').hide();
	$(that).css('border', '1px solid dodgerblue');
};
//登录封装验证方法
function logpassevent1(pass, that) {
	logpwd = pass;
	if(pass == '') {
		$(that).siblings('.clear1').hide();
		$(that).siblings('#passe').show();
		$(that).css('border', '1px solid red');
		flog1 = false;
		return
	} else if(pass.length < 6 || pass.length > 30) {
		$(that).siblings('.clear1').hide();
		$(that).css('border', '1px solid red');
		flog1 = false;
		return
	}
	flog1 = true;
	lock();
	$(that).css('border', '1px solid #ccc');
};

//用户清空按钮
$('.logpass .clear1').click(function() {
	$('.logpass>input').val('');
	$('.logpass>input').focus();
});

//登录按钮
$('.login-btn').click(function() {
//	点击之前先把标记清楚
    $('#passe1').hide();
    $('#loge1').hide();
	lock();
	$.post('http://www.wjian.top/shop/api_user.php', {
		status: 'login',
		username: loguser,
		password: logpwd,
	}, function(re) {
		var obj=JSON.parse(re);
		console.log(obj);
//		用户不存在
        if (obj.code==2002) {
        	$('.form-login .login-user').css('border','1px solid red');
        	$('.form-login .login-user').focus();
        	$('.form-login .login-user').select();
        	$('.clueuser').hide();
        	$('#loge1').show();
        	return
        }else if(obj.code==1001){//		密码错误
        	$('.form-login .login-pass').css('border','1px solid red');
        	$('.form-login .login-pass').focus();
        	$('.form-login .login-pass').select();
        	$('.cluepass').hide();
        	$('#passe1').show();
        	return
        }

//		登录成功返回主页面
       window.location.href ='index.html?name='+obj.data.username+'&token='+obj.data.token;
       localStorage.setItem('username', obj.data.username);
       localStorage.setItem('token', obj.data.token);
	});
});



//定义一个锁
function lock() {
	if(flog && flog1) {
		$('.login-btn').attr('disabled', false);;
	} else {
		$('.login-btn').attr('disabled', true);
	}
};

//页面打开产生随机验证码
$('#find-random').val(randommessage());
//点击按钮获得随机验证码
$('#find-random').click(function(){
	
   $(this).val(randommessage());
});

//找回密码-------------------
$('.form-find .find-userone .find-user').focus(function() {
	$(this).siblings('p').hide();
	$(this).css('border', '1px solid dodgerblue');
});
$('.form-find .find-userone .find-user').blur(function() {
	var user = $(this).val();
	if(user == '') {
		$(this).siblings('.findError').show();
		$(this).css('border', '1px solid red');
		return
	}
	$(this).css('border', '1px solid #ccc');
});

$('.input-group .find-messge').focus(function() {
	$('.input-group .find-messge').siblings('.findError1').hide();
	$('.input-group .find-messge').siblings('.findError2').hide();
	$(this).css('border', '1px solid dodgerblue');
	$(this).siblings('span').css('border', '1px solid #ccc');
	$(this).siblings('a').css('border', '1px solid #ccc');
});
//密保验证
$(".find-answer").focus(function(){

	$(".reg-poseError").hide();
	$(".reg-answerError1").css("color","green");
	$(".reg-answerError1").show().siblings('p').hide();
	var value=$(".rgister-pose").val();
	if(value=="请设置密保问题"){
		$(".reg-poseError").show();
		$('.rgister-pose').css('border', '1px solid red').siblings('span').css('border', '1px solid red');
		return
	}
});
$(".find-answer").blur(function(){
	var value=$(this).val();
	if(value.length==0){
		$('.find-answerError').show().siblings('p').hide();
		$(this).css('border', '1px solid red').siblings('span').css('border', '1px solid red');
		return
	}
	$(this).css('border', '1px solid #ccc').siblings('span').css('border', '1px solid #ccc');
	$(this).siblings('p').hide();
});



//验证码-------------------
$('.input-group .find-messge').blur(function() {
	var info = $(this).val();
	if(info == '') {
		$(this).css('border', '1px solid red');
		$('.input-group .find-messge').siblings('.findError1').show();
		$('.input-group .find-messge').siblings('span').css('border', '1px solid red');
		$('.input-group .find-messge').siblings('a').css('border', '1px solid red');
		return
	}
	$(this).css('border', '1px solid #ccc');
	
});
//点击下一步
$('.form-find .find-btn').click(function() {
	var user = $('.form-find .find-userone .find-user').val();
	var info = $('.input-group .find-messge').val();
	if(user == '') {
		$('.form-find .find-userone').siblings('.findError').show();
		$('.form-find .find-user').css('border', '1px solid red');
		return
	} else if(info == '') {
		$('.input-group .find-messge').siblings('.findError1').show();
		$('.input-group .find-messge').css('border', '1px solid red');
		$('.input-group .find-messge').siblings('span').css('border', '1px solid red');
		$('.input-group .find-messge').siblings('a').css('border', '1px solid red');
		return
	} else if(!disrandom($('.find-messge').val(), $('#find-random').val())) {
		$('.input-group .find-messge').css('border', '1px solid red');
		$('.input-group .find-messge').siblings('span').css('border', '1px solid red');
		$('.input-group .find-messge').siblings('a').css('border', '1px solid red');
		$('.findError2').show();
		return;
	}else{//所有的都验证成功去获取去获取数据
		//------待开发
//	  判断用户是否存在进入下一步
//	  $.post('http://www.wjian.top/shop/api_user.php',{
//	  	     status:'login',
//	  	     username:userName,
//	  	     password:pwd,
//	  },function(re)){
//	  	console.log(JSON.parse(re));
//	  }
//		
//	}
	//	 自动切换随机验证码
	$('#find-random').val(randommessage());
//	下一步验证成功就就如修改密码
    alert('此功能未开发！');
   }
});
//点击返回
//$('.retruelog').click(function(){
//	window.location.href = 'index-login.html';
//});

//重置密码

//定义两个锁
 var reset1flag=false;
 var reset2flag=false;
 var resetpass;

//按下行为
$('.reset-question .input-group .reset-pass').keydown(function() {
	resetpassevent(this);
});
//按开行为
$('reset-question .input-group .reset-pass').keyup(function() {
     var pass = $(this).val();
	 resetpassevent1(pass, this);
});
//焦点行为
$('.reset-question .input-group .reset-pass').focus(function() {
	resetpassevent(this);
});
//失焦行为
$('.reset-question .input-group .reset-pass').blur(function() {
	var pass = $(this).val();
	resetpassevent1(pass, this);
});

//封装输入密码1判断1
function resetpassevent(that) {
	$(that).siblings('.resetError').hide();
    $(that).siblings('.resetError1').hide();
	$(that).siblings('.resetError2').hide();
	$(that).siblings('.resetError3').hide();
	$(that).css('border', '1px solid skyblue');
	$(that).siblings('span').css('border', '1px solid #ccc');
};
//封装输入密码1判断2
function resetpassevent1(pass, that) {
	resetpass = pass;
	//	判断空格
	var reg = /\s/g;
	if(pass == '') {
		$(that).siblings('.resetError').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		reset1flag = false;
		return
	} else if(pass.length < 6 || pass.length > 30) {
		$(that).siblings('.resetError1').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		reset1flag = false;
		return
	} else if(reg.test(pass)) {
		$(that).siblings('.resetError2').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		reset1flag = false;
		return
	}
	reset1flag = true;
	$(that).css('border', '1px solid #ccc');
	//$(that).siblings('.correct').show();
};





//再输入密码
$('.reset-question .input-group .reset-pass1').keydown(function() {
	resetpasstwo(this);
});
$('.reset-question .input-group .reset-pass1').keyup(function() {
   

});

$('.reset-question .input-group .reset-pass1').focus(function() {
	resetpasstwo(this);
});
$('.reset-question .input-group .reset-pass1').blur(function() {
	var pass1 = $(this).val();
	resetpasstwo1(pass1, this);

});

function resetpasstwo(that) {
	//	获得焦点清楚其他提示
//	$('.reset-question .input-group .reset-pass').css('border', '1px solid #ccc');
//	$('.reset-question .input-group .reset-pass').siblings('span').css('border', '1px solid #ccc');
	$(that).siblings('.reset1Error').hide();
	$(that).siblings('.reset1Error1').hide();
	$(that).css('border', '1px solid skyblue');
	$(that).siblings('span').css('border', '1px solid #ccc');
	//$(that).siblings('.correct').hide();

}

function resetpasstwo1(pass1, that) {
	//	获得焦点清楚其他提示
	//   获得新的密码
	if(pass1 == '') {
		$(that).siblings('.reset1Error').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		reset2flag = false;
		return
	} else if(resetpass != pass1) {
		$(that).siblings('.reset1Error1').show();
		$(that).css('border', '1px solid red');
		$(that).siblings('span').css('border', '1px solid red');
		$('.input-group .reset-pass').siblings('.resetError3').show().siblings('p').hide();
		$('.input-group .reset-pass').css('border', '1px solid red');
		$('.input-group .reset-pass').siblings('span').css('border', '1px solid red');
		regf2 = false;
		return
	}
	reset2flag = true;
	$(that).css('border', '1px solid #ccc');
	//$(that).siblings('.correct').show();
}

$('.reset-btn').click(function(){
//	如果两个锁为true去数据重置密码
	if(reset1flag&&reset2flag){
		
	}
})










//封装产生验证码的随机数
function randommessage() {
	// 创建数组
	var chars = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

	// 取出数组个数
	var len = chars.length - 1;

	// / 生成随机整数
	var a = (Math.random() * len).toFixed();
	var b = (Math.random() * len).toFixed();
	var c = (Math.random() * len).toFixed();
	var d = (Math.random() * len).toFixed();

	// 取出数组中的值
	var A = chars[a];
	var B = chars[b];
	var C = chars[c];
	var D = chars[d];
	var str = A + " " + B + " " + C + " " + D;
	return str;
};
//封装传两个参数验证判断
function disrandom(inputtxt, btntxt) {
	var strs = "";
	// 循环添加空格
	for(var i = 0; i < inputtxt.length; i++) {
		strs += inputtxt[i] + ' ';
	}
	// 判断验证
	if(strs.trim().toLowerCase() === btntxt.trim().toLowerCase()) {
		return true;
	} else {
		return false;
	}
};

//统计字符的个数方法
function leng(x) {
	var num = 0;
	var reg = /[0-9a-zA-Z_]/;
	var regone = /[\u4e00-\u9fa5]/;
	for(var i = 0; i < x.length; i++) {
		if(reg.test(x[i])) {
			num++;
		};
		if(regone.test(x[i])) {
			num += 2;
		};
	};
	return num;
};
//判断非字符判断
function decide(s) {
	var flag = false;
	var reg = /[^(0-9|a-z|A-Z|_|\u4e00-\u9fa5)]/g;
	if(reg.test(s)) {
		flag = true;
	}
	return flag;
};