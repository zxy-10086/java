<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style/register.css" />

<script
	src="${pageContext.request.contextPath}/bootstrap3/js/jquery-1.11.2.min.js">
	<script src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.min.js">
</script>

<script type="text/javascript">
	function saveUser() {
		var ids = "${id}";
		if (ids != "") {
			id = ids;
		} else {
			id = 0;
		}
		var userName = $('#userName').val();
		var passWord = $('#passWord').val();
		$.ajax({
			url : "${pageContext.request.contextPath}/register.do", //请求地址
			data : {
				"id" : id,
				"userName" : userName,
				"passWord" : passWord
			},//请求数据
			type : "post", //提交方式
			dataType : "json", //返回的数据格式：json/xml/html/script/jsonp/text
			success : function(date) { //成功的回调方法
				alert(date.msg);
				//alert(date.user.userName+"::::"+date.user.passWord+"::::"+date.msg);
				window.location.href = 'login.jsp';
			},
			error : function(error) { //失败的回调方法
				alert(error + "=====")
			}

		})

	}
</script>
</head>
<body>
	<div id="login_frame">

		<p id="image_logo">
			<img src="images/login/mainlogo.png">
		</p>
		<p>
			<label class="label_input">用户名</label><input id="userName"
				name="userName" type="text" class="text_field"
				value="${user.userName }" />
		</p>
		<p>
			<label class="label_input">密码</label><input id="passWord"
				class="text_field" name="passWord" type="text" class="txt"
				value="${user.passWord }" />
		</p>
		<div id="login_control">
			<input type="button" id="btn_register" value="注册"
				onClick="saveUser()" /> <input type="button" id="btn_back"
				value="取消" onclick="window.location.href='login.jsp'" />
		</div>
	</div>
</body>
</html>