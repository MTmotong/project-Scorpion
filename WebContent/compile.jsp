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
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	
	
	
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
	
	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">  
        
      	.dropdown-submenu {  
            position: relative;  
        }  
      
         .dropdown-submenu > .dropdown-menu {  
            top: 0;  
            left: 100%;  
            margin-top: -7px;  
             
        }  
        .dropdown-submenu:hover > .dropdown-menu {  
            display: block;  
        }  
        
        .dropdown-submenu > a:after {  
            display: block;  
            content: " ";  
            float: right;  
            width: 0;  
            height: 0;  
            border-color: transparent;  
            border-style: solid;  
            border-width: 5px 0 5px 5px;  
            border-left-color: #ccc;  
            margin-top: 5px;  
            margin-right: -10px;  
        }  
        
        body {
        	background-color: #e5eecc;
        }
    </style>  
	
	
	<script type="text/javascript">
		document.getElementById("showlinenum").disabled = "disabled";
		function addNumber() {
		    var t = document.getElementById("showlinenum"), s = t.value.split("\n"), len = s.length;
		    for (var i = 1; i <= len; i++) {
		        if ("" != s[i - 1]) {
		            s[i - 1] = i + "." + s[i - 1];
		        }
		    }
		    t.value = s.join("\n");
		}
	</script>
	
	
</head>
<body style="background:white;">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid"> 
			<div class="navbar-header">
				<a class="navbar-brand" href="iEasy.jsp">Scorpion</a>
			</div>
			<!-- left -->
			<p class="navbar-text navbar-left">C++编译器</p>
			
			<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
				<span class="sr-only">Toggle Navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Setting</a></li>
					<li><a href="#">Help</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							View <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li class="dropdown-submenu">
								<a href="#">General</a>
								<ul class="dropdown-menu">
									<li><a href="#">show line numbers in Output</a></li>
									<li><a href="#">Eclipse</a></li>
								</ul>
							</li>
							<li class="dropdown-submenu">
								<a href="#">Editor Theme</a>
								<ul class="dropdown-menu">
									<li><a href="#">seti</a></li>
									<li><a href="#">Eclipse</a></li>
								</ul>
							</li>
							<li class="dropdown-submenu">
								<a href="#">Font Size</a>
								<ul class="dropdown-menu">
									<li><a href="#">huge</a></li>
									<li><a href="#">middle</a></li>
									<li><a href="#">little</a></li>
								</ul>
							</li>
							<li class="divider"></li>
					        <li>
					            <a tabindex="-1" href="#">Show Invisible</a>
					        </li>
					        <li class="divider"></li>
					        <li >
					            <a tabindex="-1" href="#">Show Gutter</a>
					        </li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Edit <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">Undo</a></li>
							<li><a href="#">Redo</a></li>
							<li class="divider"></li>
					        <li><a href="#">Cut</a></li>
					        <li><a href="#">Copy</a></li>
					        <li><a href="#">Paste</a></li>
					        <li><a href="#">Delete</a></li>
					        <li class="divider"></li>
					        <li ><a href="#">Find</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							File <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">Create File</a></li>
							<li><a href="#">Save File</a></li>
					        <li><a href="#">Delete File</a></li>
					        <li class="divider"></li>
					        <li ><a href="#">New Directory</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Project <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">New Project</a></li>
							<li><a href="#">Rename Project</a></li>
							<li><a href="#">Save Project</a></li>
							<li class="divider"></li>
							<li class="dropdown-submenu">
								<a href="#">Share Code</a>
								<ul class="dropdown-menu">
									<li><a href="#">QQ</a></li>
									<li><a href="#">weixin</a></li>
								</ul>
							</li>
						</ul>
					</li>
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
	                  			<s:textarea id="showlinenum" name="result" class="form-control" style="height:310px;" readonly="readonly"></s:textarea>
	                  			<input value="添加序号" type="button" onClick="addNumber();">
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







