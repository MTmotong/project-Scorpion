<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>测试</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link href="css/navbar.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tj").click(function() {

			//提交的参数，name和inch是和struts action中对应的接收变量
			var params = {
				code : $("#code").val(),
				input : $("#input").val()
			};
			$.ajax({
				type : "POST",
				url : "testAjax.action",
				data : params,
				dataType : "text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）
				success : function(json) {
					var obj = $.parseJSON(json); //使用这个方法解析json
					var state_value = obj.result; //result是和action中定义的result变量的get方法对应的
					document.getElementById("Div").innerHTML=state_value;
				},
				error : function(json) {
					alert("json=" + json);
					return false;
				}
			});
		});
	});
</script>
</head>
<body>
	<span>code：</span>
	<s:textarea rows="10" cols="100" id="code"></s:textarea>
	<!-- <input id="code" type="text"> -->
	<br />
	<span>input：</span>
	<input id="input" type="text">
	<br />
	<input type="button" value="提交" id="tj">


	<div id="Div">None</div>
</body>
</html>
