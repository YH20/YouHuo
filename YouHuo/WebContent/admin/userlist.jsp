<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>客户列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">	
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">用户名</th>
		<th width="10%">密码</th>
		<th width="10%">生日</th>
		<th width="10%">头像</th>
		<th width="5%">性别</th>
		<th width="10%">手机号码</th>
		<th width="10%">邮箱</th>
		<th width="5%">类型</th>
		<th width="5%">密保问题</th>
		<th width="10%">密保答案</th>
		<th width="5%">购物车id</th>
		<th width="10%">创建时间</th>
		<th width="15%">操作</th>
	</tr>
	
	<c:forEach items="${p.list }" var="u">
         <tr>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         	<td><p>123</p></td>
         
			<td>
				<a class="btn btn-success" href="passEdit.html">修改密码</a>
				<a class="btn btn-primary" href="UserEdit.html">修改信息</a>
				<a class="btn btn-danger" href="${pageContext.request.contextPath }/admin/user_delete?id=${u.id }">　删除　</a>
			</td>
       	</tr>
     </c:forEach>
         
     
     
</table>

</div>
</body>
</html>