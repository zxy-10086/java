<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style/login.css" />
</head>
<body>
	<form id="form1" name="form1" action="login.do" method="post">
		<div id="login_frame">

			<p id="image_logo">
				<img src="images/login/mainlogo.png">
			</p>
			<p>
				<label class="label_input">用户名</label><input id="userName"
					name="userName" type="text" class="text_field" value="${userName }" />
			</p>
			<p>
				<label class="label_input">密码</label><input id="passWord"
					class="text_field" name="passWord" type="password" class="txt"
					value="${passWord }"
					onkeydown="if(event.keyCode==13)form1.submit()" />
			</p>

			<div id="login_control">
				<input type="button" id="btn_login" value="登录"
					onclick="javascript:document.getElementById('form1').submit()" />
				<a id="register" href="register.jsp">没有账号?点击去注册!</a> 
				<a id="forget_pwd" href="forget_pwd.jsp">忘记密码？</a>
			</div>

			<div>
				<span id="span"><font color="red">${error }</font></span>
			</div>
		</div>
	</form>
</body>
</html>