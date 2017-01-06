<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose the dir</title>
</head>
<body>

	<s:form action="load.action" method="post">
		<s:textfield name="dir" label="Choose dir" />
		<s:password name="passwd" label="pass word"/>
		<s:submit />
	</s:form>

</body>
</html>