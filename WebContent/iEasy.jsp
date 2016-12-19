<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="jquery,ui,easy,easyui,web">
	<meta name="description" content="easyui help you build your web page easily!">
	<title>Layout Test</title>

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/easyUI/themes/default/easyui.css" >
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/easyUI/themes/icon.css" >
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyUI/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyUI/jquery.easyui.min.js"></script>
  
  
  	<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- <script type="text/javascript">
		$(document).ready(function() {
			
		});

	</script>
	<style>
		.footer {
			width:100%;
			text-align:center;
			line-height:35px;
		}
		
		.top-bg {
			background-color:#e5eecc;
			height:80px;
		}
	</style> -->
	
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
        
        
    </style>  
</head>

<body class="easyui-layout">
	
	<div data-options="region:'north',border:false" style="height: 74px; background:white; padding: 10px">
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
	</div>
	<div data-options="region:'south',border:false" style="margin-top:10%;height: 23px;">
		<div class="footer">Scorpion</div>
	</div>
	<div data-options="region:'west',split:true" title="Project" style="width:170px;">
	
	</div>
	<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
	
	</div>
	
	
	

	
	<!-- 
	
	
	<div region="north" border="true" style="overflow:hidden; height:80px;">
		 <div class="top-bg"></div>
	</div>
	<div  region="south" border="true" style="overflow:hidden; height: 40px;">
		 <div class="footer">
		 	<a href="#">Scorpion</a>
		 </div>
	</div>
	<div region="west" split="true" title="Project" style="width:200px">
	
	</div>
	
	<div  id="mainPanle" region="center" style="overflow:hidden;">
	</div> -->
		
</body>
</html>