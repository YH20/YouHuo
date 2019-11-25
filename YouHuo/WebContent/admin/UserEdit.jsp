<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>用户信息修改</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>信息编辑</strong></div>
  <div class="body-content">
  	<input type="hidden" name="id" value="${u.id }">
    <form method="post" class="form-x" action="">
 
      <div class="form-group">
        <div class="label">
          <label>用户名：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="name" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>头像：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="slogo" class="input tips" style="width:25%; float:left;" value="" data-toggle="hover" data-place="right" data-image=""  />
         <!-- <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传" >-->
          <input type="file" class="button  margin-left" id="image1" value=""/>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>性别：</label>
        </div>
        <div class="field">
          <input type="radio" class="sex" name="sex" value="男" checked="checked"/>男
           <input type="radio" class="sex" name="sex" value="女" />女
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>生日：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="surl" value="" />
        </div>
      </div>
   
      <div class="form-group">
        <div class="label">
          <label>用户密保问题：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_phone" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户密保答案：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_phone" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户类型：</label>
        </div>
        <div class="field">
          <input type="radio" class="type" name="type" value="1" checked="checked"/>用户
           <input type="radio" class="type" name="type" value="999" />管理员
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_tel" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group" style="display:none;">
        <div class="label">
          <label>电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_400" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>Email：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_email" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建时间：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_time" value="" />
          <div class="tips"></div>
        </div>
      </div>  
    	<div class="form-group">
        <div class="label">
          <label>购物车ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="car_id" value="" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>