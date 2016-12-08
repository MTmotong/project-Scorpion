<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<fieldset>
		<legend>code</legend>
		<p>${cold.content }</p>		
	</fieldset>
	
	
	<fieldset>
		<legend>compile Msg</legend>
		<p>${cold.compileMsg }</p>
	</fieldset>

	
	<fieldset>
		<legend>code status</legend>
		<p>${cold.codeStatus }</p>
	</fieldset>
	

	<fieldset>
		<legend>output</legend>
		<p>${cold.output }</p>
	</fieldset>




</body>
</html>