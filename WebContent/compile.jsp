<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>New interface</title>
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
	
</head>

<body>

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

	
</body>
</html>