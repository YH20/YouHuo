//首页js

//打开就要加载	
	
//	getShowGoodsList(5,1);
//
////请求数据的商品集合封装函数
//	function getShowGoodsList(nums,type){
//		$.ajax({
//			url:'http://localhost/YouHuo/showGoods',
//			data:{"nums":nums,"type":type},
//			dataType:'json',
//			type:'POST',
//			success:function(result) {
//				console.log(result.code);
//				if(result.code!=0){
//					return;
//				}
//				var list = new Array();
//				 	list = result.date;
//				console.log(list.length);
//				for (var i = 0; i < list.length; i++) {
//					console.log(list[i]);
//					var imgpath = list[i].goodsImgs.split("@YH@")[0];
//					alert(imgpath);
//					var str =  `
//						<li class="item col-lg-3 col-md-6 col-xs-6">
//							<div class="card">
//								<ul class="card-img">
//									<div class="new-list">
//										<li class="active" style="position:relative;left: 0px;top: 0px;z-index: 999;opacity: 1;">
//											<a href="product_infomation.jsp?goods_id=${obj.data[i].goods_id}" title="">
//												<img src="${imgpath}" />
//											</a>
//										</li>
//									</div>
//								</ul>
//								<h4 class="card-title m-b-0">
//								<a href="product_infomation.jsp?goods_id=${obj.data[i].goods_id}" title="${obj.data[i].goods_name}" class="block text-truncate" target="_self" tabindex="-1">
//								<span  style="">${obj.data[i].goods_name}</span>                      									</a>
//								<p class="description">${obj.data[i].goods_desc}</p>
//								<span class="btn btn-default btn-detail"><a href="product_infomation.jsp?goods_id=${obj.data[i].goods_id}"title="${obj.data[i].goods_name}" tabindex="-1">查看详情</a></span>
//								<p class="price m-b-0 m-t-5">￥${obj.data[i].price}元</p>
//						</div>
//					</li>
//					`;
//					//每遍历一次就添加一次
//					$('#selectionGoodsList').append(str);
//				}
//			},
//		});
//	}


setTimeout(function() {
		$('.load').css('display', 'none')
	}, 300)
	
//	banner
	//调用自动动轮播
	autoBannerChange('.banner-action li','.number span','.banner ul');
	//调用图片3D效果
	banner3D();
//	新品上市
	//小图手动轮播
	bannerChange('.card-img .new-list li', '.slick-points span', '.new-product-content');
	//调用新品上市多图片轮播
	newProduct();
	
	//新品上市多图片轮播
	function newProduct() {
		//四张图轮播
		var n = 0;
		var left;
		var right;
		var init = -1168;
		var flag = true;
		$('#prev').click(function() {
			//		console.log('点击上一张');
			//节流
			if(flag==false){return;}
			flag = false;
			left = init;
			left = left + 292;
//			console.log(left);
			$('.slick-list>.new-list').css('transform', 'translate3d(' + left + 'px, 0px, 0px)');
			$('.slick-list>.new-list').css('transition', 'transform 500ms ease 0s');
			init = left;
			if(left == -876) {
				setTimeout(function() {
					$('.slick-list>.new-list').css('transition', '');
					left = -2336;
					init = left;
					$('.slick-list>.new-list').css('transform', 'translate3d(' + left + 'px, 0px, 0px)');
					$('.slick-list>.new-list').css('transition', 'transform 0ms ease 0s');
					flag = true;
					return;
				}, 506);
			}
			setTimeout(function() {
				$('.slick-list>.new-list').css('transition', '');
				flag = true;
			}, 506);
		});
	
		$('#next').click(function() {
			//		console.log('点击下一张');
			//节流
			if(flag==false){return;}
			flag = false;
			
			right = init;
			right = right - 292;
			init = right;
//			console.log(right);
			$('.slick-list>.new-list').css('transform', 'translate3d(' + right + 'px, 0px, 0px)');
			$('.slick-list>.new-list').css('transition', 'transform 500ms ease 0s');
	
			if(right == -2628) {
				setTimeout(function() {
					$('.slick-list>.new-list').css('transition', '');
					right = -1168;
					init = right;
					$('.slick-list>.new-list').css('transform', 'translate3d(' + right + 'px, 0px, 0px)');
					$('.slick-list>.new-list').css('transition', 'transform 0ms ease 0s');
					flag = true;
					return;
				}, 506);
			}
			setTimeout(function() {
				$('.slick-list>.new-list').css('transition', '');
				flag = true;
			}, 506);
		});
	}
	//自动播放轮播图的封装方法
	function autoBannerChange(bannerLi,smallpoint,bannerUl){
		var liLength = $('.banner-action li').length;
	console.log(liLength);
	//信号量
	var n = 0;
	
	//小圆点点击事件
	$(smallpoint).each(function(i){
		
		$(this).click(function(){
			//桥接
			n = i;
			x = i;
			//其他隐藏
			$(bannerLi).eq(n).attr('class','active').siblings('li').attr('class','');
			//选中的出现
			$(bannerLi).eq(n).siblings('li').animate({'opacity':0},500)
			$(bannerLi).eq(n).animate({'opacity':1},500);
     		//调用小圆点移动方法
			smallPoint();
		});
	});
	
	var timer;
	timer = setInterval(nextImg,5000);
	$(bannerUl).mouseenter(function(){
		clearInterval(timer);
	});
	$(bannerUl).mouseleave(function(){
		timer = setInterval(nextImg,5000);
	});
	function nextImg(){
		//有一个li在运动中，就返回
			if($(bannerLi).eq(n+1).is(':animated')||$('.banner-action li').eq(n).is(':animated')){
				return;
			};
			$(bannerLi).eq(n).animate({'opacity':0},400);
			n++;
			if(n>liLength-1){n=0};
			
			$(bannerLi).eq(n).attr('class','active').siblings('li').attr('class','');
			
			$(bannerLi).eq(n).animate({'opacity':1},400);
			//设置小圆点状态
			smallPoint();
		}
	//设置小圆点状态
	function smallPoint(){
			$(smallpoint).eq(n).attr('class','current').siblings('span').attr('class','');
		}
	}
	//手动播放轮播图的封装方法
	function bannerChange(bannerLi,smallpoint,bannerUl){
		var liLength = $('.banner-action li').length;
	console.log(liLength);
	//信号量
	var n = 0;
	
	//小圆点点击事件
	$(smallpoint).each(function(i){
		
		$(this).click(function(){
			//桥接
			n = i;
			x = i;
			//其他隐藏
			$(bannerLi).eq(n).attr('class','active').siblings('li').attr('class','');
			//选中的出现
			$(bannerLi).eq(n).siblings('li').animate({'opacity':0},500)
			$(bannerLi).eq(n).animate({'opacity':1},500);
     		//调用小圆点移动方法
			smallPoint();
		});
	});
	//设置小圆点状态
	function smallPoint(){
			$(smallpoint).eq(n).attr('class','current').siblings('span').attr('class','');
		}
	}
	//图片3D效果的封装方法
	function banner3D(){
		var oBanner = $('.banner-footer');
		oBanner.mousemove(function(event){
//				console.log(event);
				//偏移角度最大值
				var	myDeg = 5.5;
				//鼠标在图片上的位置
				var pagex = event.pageX - oBanner.offset().left;
				var pagey = event.pageY - oBanner.offset().top;
		//		console.log(pagex+'=='+pagey);
				//图片的大小
				var imgHeight = event.target.clientHeight;
				var imgWidth = event.target.clientWidth;
				//图片高和宽的二分之一
				var half_imgHeight = imgHeight/2;
				var half_imgWidth  = imgWidth/2;
		//										鼠标在图片上的坐标x,y
				//如果把图片分为四个区域 				1/2width    1/2height
				//左上角     x为正     y为负         				小 			小
				//左下角     x为负	y为负	  			小			大
				//右上角	x为正          y为正				大			小
				//右下角    x为负          y为正				大			大
				if(pagey<half_imgHeight&&pagex<half_imgWidth){
					 //左上角
					 //算出百分比乘最大的偏转度
					  yDeg = - (half_imgWidth - pagex)/half_imgWidth * myDeg;
					  xDeg = (half_imgHeight - pagey)/half_imgHeight * myDeg;
				}else if(pagey>half_imgHeight&&pagex<half_imgWidth){
					  //左下角
					  yDeg = - (half_imgWidth - pagex)/half_imgWidth * myDeg;
					  xDeg = - (pagey - half_imgHeight)/half_imgHeight * myDeg;
				}else if(pagey<half_imgHeight&&pagex>half_imgWidth){
					  //右上角
					  yDeg = (pagex - half_imgWidth)/half_imgWidth * myDeg;
					  xDeg = (half_imgHeight - pagey)/half_imgHeight * myDeg;	
				}else{
					//右下角
					yDeg = (pagex - half_imgWidth)/half_imgWidth * myDeg;
					xDeg = - (pagey - half_imgHeight)/half_imgHeight * myDeg;
				}
				$('.banner-action li.active').css('box-shadow','rgba(0,0,0,0.25)0px 0px 15px');
				$('.banner-action li.active').css('transform','rotateX('+xDeg+'deg) rotateY('+yDeg+'deg)');
			});
			//移出banner恢复正常
			oBanner.mouseleave(function(){
				$('.banner-action li.active').css('transform','');
				$('.banner-action li.active').css('box-shadow','');
			});
	}