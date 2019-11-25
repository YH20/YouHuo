//购物车js
//请求数据
function goodlist(page,callback){
	$.get('http://www.wjian.top/shop/api_goods.php',{
		'pagesize':4,
		'page':page,
	},function(result){
		var obj = JSON.parse(result);
		console.log(obj);
		if(obj.code!=0){
			console.log("请求数据失败");
			return;
		}
		//调用回调函数
		callback(obj);
	});
};

goodlist(1,function(obj){
	var goodsList = obj.data;
//	console.log(goodsList);
	for(var i = 0;i<goodsList.length;i++){
		str=`<tr>
          <td class="left">
            <input type="checkbox" class="check"/>
            <img src="${goodsList[i].goods_thumb}"/>
          </td>
          <td class="desc"><span>${goodsList[i].goods_desc}</span></td>
          <td class="goods-amout">
          	<span class="reduce">-</span>
            <span class="count">1</span>
            <span class="add">+</span>
          </td>
          <td class="price"><span>${goodsList[i].price}</span></td>
          <td class="subtotal"><span>${goodsList[i].price}</span></td>
          <td class="delete"><a href="javascript:;" class="del">
          	删除
          </a>
          </td>
        </tr>
      `;
      //将每一件商品组装到表格里面
      $('table').append(str);
	};
	//加载完数据，才能调用所有事件
	clickAll();
});


//所有的点击事件
function clickAll(){
	
	//点击加减数量变   小计变  总价变
  	//点击全选        总价变
  	//点击单选        总价变
  	//点击删除        当前元素tr删除
	
	$('table').click(function(event){
//		console.log(event);
		//点击加号
		if(event.target.className=='add'){
			console.log('进入了加号')
			var spanDom = event.target.previousElementSibling;
			var spanDomVal = parseInt(event.target.previousElementSibling.innerHTML);
//			console.log(spanDom);
//			console.log(spanDomVal);
			spanDomVal++;
			if(spanDomVal>10){spanDomVal=10;}
			
			spanDom.innerHTML = spanDomVal;
			//小计
			console.log(event.target);
			subtotal(event.target,spanDomVal);
			//总金额
			sumAll();
		}
		//点击减号
		if(event.target.className=='reduce'){
			console.log('进入了减号')
			var spanDom = event.target.nextElementSibling;
			var spanDomVal = parseInt(event.target.nextElementSibling.innerHTML);
			spanDomVal--;
			if(spanDomVal<1){spanDomVal=1;}
			spanDom.innerHTML = spanDomVal;
			//小计
			subtotal(event.target,spanDomVal);
			//总金额
			sumAll();
		}
		//点击全选按钮
		if(event.target.className=='checkAll'){
			console.log('进入了全选按钮');
			if(event.target.checked==true){
				$('.check').each(function(){
					//选中所有的
					$(this).prop('checked',true);//防止点击一次之后，后面都失效
					$(this).attr('myclass','active');
					console.log('true'+$(this).attr('checked'));
				});
			}else{
				console.log($('.check'));
				$('.check').each(function(){
					//选中所有的
					$(this).prop('checked',false);
					$(this).attr('myclass','');
					console.log('false'+$(this).attr('checked'));
				});
			}
			//计算总价
			sumAll();
		}
		//点击复选框
		if(event.target.className=='check'){
			console.log('进入了复选框')
			if(event.target.checked==true){
				event.target.setAttribute('myclass','active');
			}else{
				event.target.setAttribute('myclass','');
			}
			//求总价格
			sumAll();
		}
		//点击了删除按钮
		if(event.target.className=='del'){
			console.log('进入了删除')
			if(confirm('您确定要删除吗？')){
				var table = event.target.parentNode.parentNode.parentNode;
				var tr = event.target.parentNode.parentNode;
				table.removeChild(tr);
			}
			//调用总价
			sumAll();
		}
	});
	
	//小计
	function subtotal(that,count){
		//单价
		var price = parseFloat($(that).parent().siblings('.price').children().html());
//		var price = parseFloat("12.13");
		
		console.log(typeof price);
		//拿到小计元素
		var trSubtotal = $(that).parent().siblings('.subtotal').children();
		//设置小计元素的值
		var reg = /(\.[\d]|\.[\d]{2})$/;
		trSubtotal.html(reg.test(price) ? accMul(price,count):(accMul(price,count)+'.00'));
	}
	
	//计算总价格
	function sumAll(){
		console.log('进入计算总价');
		var sum = 0;
//		var sum = 0.34;
		$('[myclass="active"]').each(function(){
//			console.log(this);
//			var subtotal = parseFloat($(this).parent().siblings('.subtotal').html());
			var subtotal = parseFloat($(this).parent().siblings('.subtotal').children().html());
//			console.log('小计'+subtotal);
			sum=accAdd(sum,subtotal);
		});
//		console.log(sum);
		var reg = /(\.[\d]|\.[\d]{2})$/;
		sum = reg.test(sum)?sum:sum+'.00';
		$('.sum-all').html('总价：'+sum+'元');
	}
	
	
	//以下为调用别人的方法
	
	/**
	 ** 乘法函数，用来得到精确的乘法结果
	 ** 说明：javascript的乘法结果会有误差，在两个浮点数相乘的时候会比较明显。这个函数返回较为精确的乘法结果。
	 ** 调用：accMul(arg1,arg2)
	 ** 返回值：arg1乘以 arg2的精确结果
	 **/
	function accMul(arg1, arg2) {
		var m = 0,
			s1 = arg1.toString(),
			s2 = arg2.toString();
		try {
			m += s1.split(".")[1].length;
		} catch(e) {}
		try {
			m += s2.split(".")[1].length;
		} catch(e) {}
		return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m);
	}
	
	// 给Number类型增加一个mul方法，调用起来更加方便。
	Number.prototype.mul = function(arg) {
		return accMul(arg, this);
	};
	
	/**
	 ** 加法函数，用来得到精确的加法结果
	 ** 说明：javascript的加法结果会有误差，在两个浮点数相加的时候会比较明显。这个函数返回较为精确的加法结果。
	 ** 调用：accAdd(arg1,arg2)
	 ** 返回值：arg1加上arg2的精确结果
	 **/
	function accAdd(arg1, arg2) {
		var r1, r2, m, c;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch(e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch(e) {
			r2 = 0;
		}
		c = Math.abs(r1 - r2);
		m = Math.pow(10, Math.max(r1, r2));
		if(c > 0) {
			var cm = Math.pow(10, c);
			if(r1 > r2) {
				arg1 = Number(arg1.toString().replace(".", ""));
				arg2 = Number(arg2.toString().replace(".", "")) * cm;
			} else {
				arg1 = Number(arg1.toString().replace(".", "")) * cm;
				arg2 = Number(arg2.toString().replace(".", ""));
			}
		} else {
			arg1 = Number(arg1.toString().replace(".", ""));
			arg2 = Number(arg2.toString().replace(".", ""));
		}
		return(arg1 + arg2) / m;
	}
	//给Number类型增加一个add方法，调用起来更加方便。
	Number.prototype.add = function(arg) {
		return accAdd(arg, this);
	};
}
