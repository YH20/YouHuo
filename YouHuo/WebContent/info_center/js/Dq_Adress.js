	var provinces=["请选择省份地址···","北京市","天津市","河北省","山西省","内蒙古自治区","辽宁省","吉林省","黑龙江省","上海市","江苏省","浙江省","安徽省","福建省","江西省","山东省","河南省","湖北省","湖南省","广东省","广西壮族自治区","海南省","重庆市","四川省","贵州省","云南省","西藏自治区","陕西省","甘肃省","青海省","宁夏回族自治区","新疆维吾尔自治区"];
	var provinceContent;
	for(var i=0;i < provinces.length;i++) {
		if (i==0) {
			provinceContent=provinceContent+"<option value=''>"+provinces[i]+"</option>";
		}else{
			provinceContent=provinceContent+"<option value='"+provinces[i]+"'>"+provinces[i]+"</option>";
		}
	}
	$("#yh_province").html(provinceContent);//插入省份下拉内容
	$("#yh_province").change(function(){/*当前节点的下一个兄弟节点  $(this).next()*/
		var myProvince=$("#yh_province").val();
		var selectcity="";
		$("#yh_city").children().empty();
		$("#yh_county").children().empty();
		getAddress($(this).next(),myProvince,selectcity);
	});
	$("#yh_city").change(cityChange);
	function cityChange(){
		var myProvince2=$("#yh_province").val();
		var selectcity2=$("#yh_city").val();
		$(this).next().children().empty();
		getAddress($(this).next(),myProvince2,selectcity2);
	};
	
	function getAddress(level,selectProvince,selectcity){
		var str;
		$.ajax({
			type : "post",
			url : "http://localhost:8080/YouHuo/dqaddress",
			data : "province=" + selectProvince+"&city=" + selectcity,
			success : function(result) {
				var parsedJson = JSON.parse(result);
				$(level).empty();
				$.each(parsedJson, function(i, addr) {
					str = '<option value='+addr+'>'+addr+'</option>';
					$(level).append(str);
				});
			}
		});
		
	}