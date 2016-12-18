<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>

	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
	<link href="css/navbar.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/js/bootstrap.min.js"></script>
	
	
	
	<!--代码高亮  -->
	
	<!-- CodeMirror核心 -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/codemirror.css">  
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/codemirror.js" ></script>
	
	<!--主题  --> 
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/seti.css">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/eclipse.css">
	 
	<!-- C语言风格 -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/clike.js"></script>
	
	<!--全屏模式-->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/fullscreen.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/fullscreen.js"></script>
	
	<!--括号匹配-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/matchbrackets.js"></script>
	
	<!--自动补全-->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/show-hint.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/show-hint.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/anyword-hint.js"></script>
	
	
	
	
	
</head>
<body>
	<nav class="navbar  navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
		          <button type="button" class="navbar-left navbar-toggle collapsed " data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			            <span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span><!-- 三个带有.icon-bar 的 <span> 创建所谓的汉堡按钮 -->
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="index.php">Scorpion</a>
		    </div>
			
			<div id="navbar" class="collapse navbar-collapse"><!-- 给导航栏添加响应式，包裹在带有.collapse、.navbar-collapse  -->
		          <ul class="nav navbar-nav" id="myTab"><!--nav navbar-nav 导航栏添加链接-->
			            <li class="active"><a href="#"> C++在线测试</a></li>
			            <li><a href="compile.jsp"> Project</a></li>
						<li><a href="compile.jsp"> File</a></li>
		          </ul>
		    </div>
		</div>
	</nav>
  
 	<div class="container">
 		<div class="row" style="background-color: #e5eecc; margin-top:10%; margin-left:0px; margin-right:0px; ">
	 		<div class="panel panel-default" style="margin-bottom:0;">
	   			<div class="panel-body" style="background-color: #e5eecc;border-color: #e5eecc;">
	   		
	   				<s:form action="print" method="post" theme="simple" autocomplete="off" role="form">
	   					<div class="row" >
	                		<div class="col-sm-6" id="LeftPane">
			                    <div class="row-fluid">
	                  				<label class="inline" ><strong style="font-size: 16px;color:#617f10;"> C++代码:</strong></label>
	                  				
                  					字体大小:
                  					
                  					
                  					<input name="" type="button" onclick="changeFontSize('34px')" value="大"/> 
                  					<input name="" type="button" onclick="changeFontSize('24px')" value="中"/> 
									<input name="" type="button" onclick="changeFontSize('14px')" value="小"/>
									
                  					
 									
 									选择主题: <select onchange="selectTheme()" id="select">
 									 <option selected>seti</option>
 									 <option>eclipse</option>
 									 </select>
 									 F11:全屏
 									 
	                   				<s:submit theme="simple" class="pull-right inline" value="提交运行"></s:submit>
	                   				<input type="hidden" id="bt" name="bt">
	                   				<div id="setfont"> 
	                   					<s:textarea theme="simple" name="code" id="code" />
	                   				</div>
	                    		</div>
	                    		<!-- <textarea class="form-control" theme="simple" id="code" name="code" >
	                    			
								</textarea> -->
	                 	 	</div>
	                  		<div class="col-sm-6" id="RightPane">
			            		<label><strong style="font-size: 16px;color:#617f10;"> 输入：</strong></label>
	        		            <label class="pull-right"><a href="#" style="font-size: 16px;color:#617f10;"> 分享代码</a></label>
	                  			<s:textarea name="input" class="form-control" style="height:114px;"></s:textarea>
	                  			<label><strong style="font-size: 16px;color:#617f10;"> 输出：</strong></label>
	                  			<s:textarea name="result" class="form-control" style="height:310px;"></s:textarea>
	                	  	</div>
	                	</div>   
	   				</s:form>
	
	            </div>
	    	</div>
	 	</div>
 	</div>
 	
      	
	<script>
		var myTextarea = document.getElementById('code');
		var CodeMirrorEditor = CodeMirror.fromTextArea(myTextarea, {
			
			
			//高亮类型
		    mode: "text/x-c++src",
		    
		    //显示行号
		    lineNumbers: true,
		    
		    //主题
		    theme:"seti",
		    
		    
		    //括号匹配
		    matchBrackets:true,
		    
		    //智能提示+全屏显示
		    extraKeys:{
		    	"F11": function(cm) {
		          cm.setOption("fullScreen", !cm.getOption("fullScreen"));
	        },
	        "Esc": function(cm) {
	          if (cm.getOption("fullScreen")) cm.setOption("fullScreen", false);
	        },
	        "F12":"autocomplete"
	        }
		
		});
		//设置宽高
		CodeMirrorEditor.setSize('auto','450')
		
		
	  var input = document.getElementById("select");
	  function selectTheme() {
	    var theme = input.options[input.selectedIndex].textContent;
	    CodeMirrorEditor.setOption("theme", theme);
	    location.hash = "#" + theme;
	  }
	  var choice = (location.hash && location.hash.slice(1)) ||
	               (document.location.search &&
	                decodeURIComponent(document.location.search.slice(1)));
	  if (choice) {
	    input.value = choice;
	    CodeMirrorEditor.setOption("theme", choice);
	  }
	  CodeMirror.on(window, "hashchange", function() {
	    var theme = location.hash.slice(1);
	    if (theme) { 
	    input.value = theme; 
	    selectTheme(); }
	  });
	</script>
 
 	
 	<script>
		function changeFontSize(size){
			document.getElementById("setfont").style.fontSize=size;
			
		} 
	 </script>
</body>
</html>
