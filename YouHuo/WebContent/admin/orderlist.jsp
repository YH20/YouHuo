<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">订单编号</th>
        <th width="10%">用户ID</th>
        <th>收货地址</th>
        <th>订单金额</th>
        <th>状态</th>
        <th>购买数量</th>
        <th width="10%">创建时间</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">
        <tr>
          <td style="text-align:left; padding-left:20px;">
           1</td>
          <td>1</td>
          <td width="10%">湖南省长沙市</td>
          <td>300.0</td>
          <td><font color="#00CC99">已发货</font></td>
          <td>3</td>
          <td>2016-07-01</td>
          <td><div class="button-group"> <a class="button border-main" href="proEdit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
   		 <tr>
          <td style="text-align:left; padding-left:20px;">
           1</td>
        <td>1</td>
          <td width="10%">湖南省长沙市</td>
          <td>雨衣</td>
          <td><font color="#00CC99">已发货</font></td>
         <td>3</td>
          <td>2019-11-24</td>
          <td><div class="button-group"> <a class="button border-main" href="ordEdit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
         <tr>
          <td style="text-align:left; padding-left:20px;">
           1</td>
         <td>1</td>
          <td width="10%">湖南省长沙市</td>
          <td>雨衣</td>
          <td><font color="#00CC99">已发货</font></td>
         <td>3</td>
          <td>2019-11-24</td>
          <td><div class="button-group"> <a class="button border-main" href="ordEdit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
         <tr>
          <td style="text-align:left; padding-left:20px;">
           1</td>
         <td>1</td>
          <td width="10%">湖南省长沙市</td>
          <td>雨衣</td>
          <td><font color="#00CC99">已发货</font></td>
          <td>3</td>
          <td>2019-11-24</td>
          <td><div class="button-group"> <a class="button border-main" href="ordEdit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
         <tr>
          <td style="text-align:left; padding-left:20px;">
           1</td>
        <td>1</td>
          <td width="10%">湖南省长沙市</td>
          <td>雨衣</td>
          <td><font color="#00CC99">已发货</font></td>
          <td>3</td>
          <td>2019-11-24</td>
          <td><div class="button-group"> <a class="button border-main" href="ordEdit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
         <tr>
          <td style="text-align:left; padding-left:20px;">
           1</td>
          <td>1</td>
          <td width="10%">湖南省长沙市</td>
          <td>雨衣</td>
          <td><font color="#00CC99">已发货</font></td>
         <td>3</td>
           <td>2019-11-24</td>
          <td><div class="button-group"> <a class="button border-main" href="ordEdit.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
   
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>