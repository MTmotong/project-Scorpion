<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/codemirror.css">  
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/eclipse.css"> 
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/seti.css">
	 
	<script type="text/javascript" src="codemirror.js" ></script>
	<script type="text/javascript" src="clike.js"></script>
	
	
</head>
<body>
	
	
	
		<textarea id="editor"></textarea>
		<script>
	var myTextarea = document.getElementById('editor');
	var CodeMirrorEditor = CodeMirror.fromTextArea(myTextarea, {
	    mode: "text/x-c++src",
	    lineNumbers: true,
	    theme:"seti"
	});
	</script>
	
	
	
	
</body>
</html>