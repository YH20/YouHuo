//收获信息

$(window).load(function(){
	$(".addli li").hide();
	$(".addli li:eq(0)").show();
	$(".addli li:eq(1)").show();
	$(".addli li:eq(2)").show();
	$(".addli li:eq(3)").show();
	
	//页面加载出来就计算
//得到商品的属性 图片 标题   颜色 尺寸 单价 数量 小计 
//图片
//$(".simg").attr('src', '');
//标题
//$(".stite").attr("")
//颜色
//$(".scolor").html();
//尺寸
//$(".ssize").html();
// 单价
//$(".sprice").html()
// 数量
//$(".smum").html();
// 小计
//$(".smoneyall").html();

	
//应付金额--总商品金额+运费
//拿到运费
var fre=$(".fremoeny").html();

//ajaxna拿到购物车商品的价格+运费


//拿到总价格
var summoney=$(".paynum").html();

	
	
});

//显示更多的按钮
$(".show-address .myshowselect").click(function(){
	$(".addli li").show();
	$(this).css("color", "grey");
});

//删除地址
$(".handle-delete").click(function(){
	that=this;
	$(".myconfirm").click(function(){
		$(that).parent(".myinfo").parent(".li-inner").parent("li").remove();
		$(this).attr("data-dismiss","modal");
	});
//	if(confirm("您真的要删除该数据吗？")){
//		$(this).parent(".myinfo").parent(".li-inner").parent("li").remove();
//	}
	
});

$(".select-address").mouseenter(function(){
//$(this).siblings("li").find(".addr-set").html("设置默认");
});
$(".select-address").mouseleave(function(){
});
$(".addli li").mouseenter(function(){
	$(this).find(".handle-delete").show();
    $(this).find(".addr-set").show();
    $(this).find(".addr-alter").show();
    $(".select-address").find(".addr-set").hide();
    
});
$(".addli>li").mouseleave(function(){
	$(this).find(".handle-delete").hide();
	$(this).find(".addr-set").hide();
	$(".select-address").find(".addr-set").hide();
	$(this).find(".addr-alter").hide();
	$(".select-address").find(".addr-alter").show();
});
$(".addli>li").click(function(){
//	$(this).addClass("select-address").siblings("li").removeClass("select-address");
  $(".addli>li").find(".addr-alter").hide();
	$(".select-address").find(".addr-alter").show();
});

//点击修改
$(".addr-alter").click(function(){
//	姓名
   var name=$(this).parent(".li-inner").children(".myinfo").find(".myname").html();
// 省
   var province=$(this).parent(".li-inner").children(".myinfo-address").find(".myprovince").html();
   var city=$(this).parent(".li-inner").children(".myinfo-address").find(".mydistrict").html();
   var street=$(this).parent(".li-inner").children(".myinfo-address").find(".mystreet").html();
   var home=$(this).parent(".li-inner").children(".myinfo-address").find(".myhome").html();
   var telephone=$(this).parent(".li-inner").children(".myinfo-address").find(".mytelephone").html();
   $(".update-info .addrmyname-input .adrname").val(name);
   $(".update-info .addrmyphone .adrphone").val(telephone);
   $(".update-info .addrmyadr .adrarea").val(province+city+ street);
   $(".update-info .mydetailed .adrdetailed").val(home);
});

$(".addr-set").click(function(){
	$(this).parent(".li-inner").parent("li").addClass("select-address").siblings("li").removeClass("select-address");
  $(".addli>li").find(".addr-alter").hide();
	$(".select-address").find(".addr-alter").show();
});

//支付方式
$(".paymode>li").click(function(){
	$(this).css("border","2px solid gold").siblings("li").css("border","none");
	$(this).addClass("paydefault").siblings("li").removeClass("paydefault");
//	拿到支付方式
});

//商品服务
//返回购物车
$(".returncar").click(function(){
	 window.location.href ='shopcar.html';
});
//点击商品链接


//提交订单

$(".pay-btn").click(function(){
//	拿到各个商品
//修改支付状态

//商品留言mywrite
$(".mywrite").val();

	location.href="mypay.html";
});





//增加地址
//定义三个锁
var falgincreone=false;
var falgincretwo=false;
var falgincrethree=false;
$(".increasename").focus(function(){
	$(this).siblings("p").hide();
});
$(".increasename").blur(function(){
	var value=$(this).val();
	var reg=/^([\u4e00-\u9fa5]|[A-Za-z0-9])+$/g;
	if(value=="") {
		$(this).siblings(".increasenameerr-one").show();
		 falgincreone=false;
		return
	}else if(!reg.test(value)){
		$(this).siblings(".increasenameerr-two").show();
		 falgincreone=false;
		return
	}
	falgincreone=true;
	$(this).siblings(".increasesucces-one").show();
});
//电话
 $(".increasephone").focus(function(){
	$(this).siblings("p").hide();
});
$(".increasephone").blur(function(){
	var value=$(this).val();
	var reg=/^1(3|4|5|6|7|8|9)\d{9}$/;
	if(value=="") {
		$(this).siblings(".increasephoneerr-one").show();
		falgincretwo=false;
		return
	}else if(!reg.test(value)){
		$(this).siblings(".increasephoneerr-two").show();
		falgincretwo=false;
		return
	}
	falgincretwo=true;
	$(this).siblings(".increasesucces-two").show();
});

//区域地址


//详细地址
$(".incredetailed").focus(function(){
	$(this).siblings("p").hide();
});
$(".incredetailed").blur(function(){
	var value=$(this).val();
	if(value==""){
	  $(this).siblings(".incredetailederr-three").show();
	  falgincrethree=false;
	   return
	}
	falgincrethree=true;
	$(this).siblings(".increasesucces-three").show();
});
//提交保存
$(".savemyincrease").click(function(){
	if(!falgincreone){
		$(".increasename").focus();
		return
	}else if(!falgincretwo){
		$(".increasephone").focus();
		return
	}else if(!falgincrethree){
		$(".incredetailed").focus();
		return
	}
    $(".increasename").val();
    $(".increasephone").val();
    $(".incredetailed").val();
//  存入数据库
//显示页面
    
	
});




//修该地址
//姓名输入
//定义三个锁
var falgone=false;
var falgtwo=false;
var falgthree=false;
$(".adrname").focus(function(){
	$(this).siblings("p").hide();
});
$(".adrname").blur(function(){
	var value=$(this).val();
	var reg=/^([\u4e00-\u9fa5]|[A-Za-z0-9])+$/g;
	if(value=="") {
		$(this).siblings(".mynameerr-one").show();
		 falgone=false;
		return
	}else if(!reg.test(value)){
		$(this).siblings(".mynameerr-two").show();
		 falgone=false;
		return
	}
	falgone=true;
	$(this).siblings(".mysucces-one").show();
});
//电话
 
 $(".adrphone").focus(function(){
	$(this).siblings("p").hide();
});
$(".adrphone").blur(function(){
	var value=$(this).val();
	var reg=/^1(3|4|5|6|7|8|9)\d{9}$/;
	if(value=="") {
		$(this).siblings(".myphoneerr-one").show();
		falgtwo=false;
		return
	}else if(!reg.test(value)){
		$(this).siblings(".myphoneerr-two").show();
		falgtwo=false;
		return
	}
	falgtwo=true;
	$(this).siblings(".mysucces-two").show();
});
//详细地址
$(".adrdetailed").focus(function(){
	$(this).siblings("p").hide();
});
$(".adrdetailed").blur(function(){
	var value=$(this).val();
	if(value==""){
	  $(this).siblings(".detailederr-three").show();
	  falgthree=false;
	   return
	}
	falgthree=true;
	$(this).siblings(".mysucces-three").show();
});
//提交保存
$(".savemyaddr").click(function(){
	if(!falgone){
		$(".adrname").focus();
		return
	}else if(!falgtwo){
		$(".adrphone").focus();
		return
	}else if(!falgthree){
		$(".adrdetailed").focus();
		return
	}
	//得到值
//	$(".adrname").val();
	alert("修改成功")
});

