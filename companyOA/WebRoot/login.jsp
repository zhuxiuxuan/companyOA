<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>欢迎来到河南五象游学办公OA</title>
  <meta name="description" content="">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="<%=basePath %>assets/img/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="<%=basePath %>assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="<%=basePath %>assets/css/amazeui.min.css" />
  <link rel="stylesheet" href="<%=basePath %>assets/css/admin.css">
  <link rel="stylesheet" href="<%=basePath %>assets/css/app.css">
</head>

<body data-type="login">

  <div class="am-g myapp-login">
	<div class="myapp-login-logo-block  tpl-login-max">
		<div class="myapp-login-logo-text">
			<div class="myapp-login-logo-text">
				<span> 河南五象游学办公OA</span> <i class="am-icon-skyatlas"></i>
				
			</div>
		</div>

		<div class="login-font">
			<span> 登录</span>
		</div>
		<div class="am-u-sm-10 login-am-center">
			<form class="am-form" action="<%=basePath %>staff/m75b2V.action" method="post">
				<fieldset>
					<div class="am-form-group">
						<input type="text" autocomplete="off" id="doc-ipt-email-1" placeholder="输入登录账户" name="staffName">
					</div>
					<div class="am-form-group">
						<input type="password" autocomplete="off" id="doc-ipt-pwd-1" placeholder="输入登录密码" name="staffPwd">
					</div>
					<p><button type="submit" class="am-btn am-btn-default">登录</button></p>
				</fieldset>
			</form>
		</div>
	</div>
</div>

  <script src="<%=basePath %>assets/js/jquery.min.js"></script>
  <script src="<%=basePath %>assets/js/amazeui.min.js"></script>
  <script src="<%=basePath %>assets/js/app.js"></script>
</body>

</html>
