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
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="css/navbar.css" rel="stylesheet" type="text/css" />
	
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="codemirror.js" ></script>
	<script type="text/javascript" src="clike.js"></script>
	
	<style type="text/css">
		.navbar .container{
			position: relative;
		}
		.btn-group {
		  	position: absolute;
		  	right: 0;
		  	top: 0;
		}
		@media (max-width: 767px){
		  	.btn-group{
		    	right: 80px;
		  }
		}
		.CodeMirror {
		    font-size:12px;
		    height:450px;
		 }
		 #textareaCode {
		    height: 450px;
		 }
		 #iframeResult {
		    border: 0!important;
		    min-width: 100px;
		    width: 100%;
		    height: 450px;
		    background-color: #fff;
		  }
		  @media screen and (max-width: 768px) {
		      #textareaCode {
		    	  height: 300px;
		      }
		      .CodeMirror {
		      	  font-size:12px;
		          height:300px;
		      }
		      #iframeResult {
		          height: 300px;
		      }
		      .form-inline {
		          padding: 6px 0 2px 0;
		      }
		  }
		  .ad {
		      text-align: center;
		  }
	</style>

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
			            <li><a href="#"> 关于</a></li>
						<li><a href="#"> 联系</a></li>
		          </ul>
		    </div>
		</div>
	</nav>
  
 	<div class="container">
 		<div class="row" style="background-color: #e5eecc; margin-top:10%; margin-left:0px; margin-right:0px; ">
	 		<div class="panel panel-default" style="margin-bottom:0;">
	   			<div class="panel-body" style="background-color: #e5eecc;border-color: #e5eecc;">
	   				<form action="print" method="post" autocomplete="off" role="form">
	   					<div class="row" >
	                		<div class="col-sm-6" id="LeftPane">
			                    <div class="row-fluid">
	                  				<label class="inline" ><strong style="font-size: 16px;color:#617f10;"> C++代码:</strong></label>
	                   				<input type="submit" class="pull-right inline" value="提交运行 &#187;" >
	                   				<input type="hidden" id="bt" name="bt"> 
	                   				<input type="hidden" name="code" id="code" />
	                    		</div>
	                    		<!-- <textarea class="form-control" theme="simple" id="code" name="code" >
	                    			
								</textarea> -->
	                 	 	</div>
	                  		<div class="col-sm-6" id="RightPane">
			            		<label><strong style="font-size: 16px;color:#617f10;"> 运行结果：</strong></label>
	        		            <label class="pull-right"><a href="#" style="font-size: 16px;color:#617f10;"> 分享代码</a></label>
	                  			<textarea class="form-control" style="height:451px;">
	                  			</textarea>
	                	  	</div>
	                	</div>   
	   				</form>
	
	            </div>
	    	</div>
	 	</div>
 	</div>
 	
      	
	<script>
		var myTextarea = document.getElementById('code');
		var CodeMirrorEditor = CodeMirror.fromTextArea(myTextarea, {
		    mode: "text/x-c++src",
		    lineNumbers: true,
		    theme:"seti"
		});
	</script>
 	
 <%-- 
	<s:form action="print" method="post">
		<s:textarea theme="simple" id="code" name="code"></s:textarea>
		<s:submit value="print"></s:submit>
	</s:form> --%>
	
	<%-- <div class="container">
		<div class="row">
			<div class="col-6-xs">
				<textarea rows="20%" cols="40%" autofocus>
					<h1>显示输出结果</h1>
				</textarea>
				<s:form action="print" method="post">
					<s:textarea theme="simple" id="code" name="code"></s:textarea>
					<s:submit value="print"></s:submit>
				</s:form>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-3">
				<textarea rows="20%" cols="40%" autofocus>
					<h1>显示输出结果</h1>
				</textarea>
				
			</div>
		</div>
	</div> --%>
	

</body>
</html>