<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

<!-- 文件按钮样式 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/filecss.css">


<!--代码高亮  -->

<!-- CodeMirror核心 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/codemirror.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/codemirror.js"></script>

<!--主题  -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/seti.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/eclipse.css">

<!-- C语言风格 -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/clike.js"></script>

<!--全屏模式-->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/fullscreen.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/fullscreen.js"></script>

<!--括号匹配-->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/matchbrackets.js"></script>

<!--自动补全-->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/show-hint.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/show-hint.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/anyword-hint.js"></script>


<!-- 字体样式 -->
<style type="text/css">
	@font-face {
    font-family: 'ubu';
    src: url('<%=request.getContextPath()%>/fontfamily/ubuntumono-regular-webfont.woff2') format('woff2'),
    	url('<%=request.getContextPath()%>/fontfamily/UbuntuMono-Regular.ttf')  format('truetype'),
         url('<%=request.getContextPath()%>/fontfamily/ubuntumono-regular-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}



	@font-face {
    font-family: 'bit';
    src: url('<%=request.getContextPath()%>/fontfamily/bitter-regular-webfont.woff2') format('woff2'),
    	 url('<%=request.getContextPath()%>/fontfamily/Bitter-Regular.ttf')  format('truetype'),
         url('<%=request.getContextPath()%>/fontfamily/bitter-regular-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}
	@font-face {
    font-family: 'lob';
    src: url('<%=request.getContextPath()%>/fontfamily/lobster-regular-webfont.woff2') format('woff2'),
    	url('<%=request.getContextPath()%>/fontfamily/Lobster-Regular.ttf') format('truetype'),
         url('<%=request.getContextPath()%>/fontfamily/lobster-regular-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}
	
	@font-face {
    font-family: 'pac';
    src: url('<%=request.getContextPath()%>/fontfamily/pacifico-regular-webfont.woff2') format('woff2'),
    	url('<%=request.getContextPath()%>/fontfamily/Pacifico-Regular.ttf')  format('truetype'),
         url('<%=request.getContextPath()%>/fontfamily/pacifico-regular-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}
	



</style>



<script type="text/javascript">
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

<script type="text/javascript">
		$(document).ready(function(){
			
			$('#RunBtn').attr('type', 'button')
						.fadeTo(0, 0.7)
						.addClass('btn-default')
						.click(output);
			$("#in").change(function(){                 
		        
		        $('#input').toggle("normal", function(){  
		            $('#put').toggleClass('CheckedInLable');  
		            $('#put').toggleClass('uncheckedInLable');  
		        });  
		    });  
		});
		
		
	/* 	  $(document).ready(loadFile()); */
					
			/*
			//提交的参数，name和inch是和struts action中对应的接收变量
			var params = {
				code : CodeMirrorEditor.getValue(),
				input : $("#inputtext").val()
			};
			$.ajax({
				type : "POST",
				url : "print.action",
				data : params,
				dataType : "text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）
				beforeSend : function() {
					document.getElementById("RunBtn").innerHTML="Running";
				},
				success : function(json) {
					var obj = $.parseJSON(json); //使用这个方法解析json
					var state_value = obj.result; //result是和action中定义的result变量的get方法对应的
					document.getElementById("output").innerHTML=state_value;
					document.getElementById("RunBtn").innerHTML="Run";
				},
				error : function(json) {
					alert("json=" + json);
					return false;
				}
			});
			*/
	
		function deletefile(file){
			alert("del file "+file);
			
			var params = {
				fileName : file
			};
			$.ajax({
				type : "POST",
				url : "delfile",
				data : params,
				dataType : "text",
				success : function() {
					alert("del ok");
					loadFile();
				}
			})
			
			
		}
		function clickfile(file){
			alert(file);
			
			//document.getElementById("editFile").value=file;
			$('#editNow').text('当前编译的文件:'+file);
			$('#editFile').text(file);
			//$('#editFile').value(file);
			var params = {
					fileName:file
			};
			$.ajax({
				type : "POST",
				url :"openFile",
				data:params,
				dataType:"text",
				success:function(json){
					
					var obj = $.parseJSON(json);
					
					var code = obj.code;
					
					CodeMirrorEditor.setValue(code);
				},
				error : function(json) {
					alert("json=" + json);
					return false;
				}
			});
			
		}
		
		var flag = true;
		function output() {
			if(!flag) {
				return;
			}
			flag = false;
			$('#out').append(
				'<div class="container" style="margin-top:1%;">\
			 		<div class="row">\
				 		<div class="col-sm-12">\
					 		<div class="panel panel-success  output">\
							    <div class="panel-heading form-inline" style="background-color:#e5eecc;">\
							        <span class="panel-title no"></span><span class="panel-title">输出</span>\
							        <span class="glyphicon glyphicon-remove" onclick="popQues(this)" style="float:right"></span>\
							    </div>\
							    <div class="panel-body">\
							    	<textarea name="result" id="output" readOnly="true" class="form-control" style="height:200px;width:100%;border-color:#d6e9c6;background-color: #FFFFFF;"></textarea>\
							    </div>\
							</div>\
						<div>\
		         	</div>\
			 	</div>');

		}
		function popQues(thisItem) {
			flag = true;
			var thisQues = $(thisItem).parents('.output');
			thisQues.nextAll().each(function() {
				$(this).find('.no').text(parseInt($(this).find('.no').text(), 10) - 1);
			});
			thisQues.remove();
		}

		function loadFile(){
		
			var params = {};
			$.ajax({
				type : "POST",
				url : "loadfile",
				data : params,
				dataType : "text",
				success : function(json) {
					var obj = $.parseJSON(json);
					var files = obj.files;
					var filenames = obj.filenames;
					console.log(typeof(filenames));
					alert(filenames.length);
					
					$('#files').empty();
					
					for (var i = 0; i < filenames.length; i++) {
						var f = document.createElement('a');
						var del = document.createElement('button');
						/* f.setAttribute("id",filenames[i]); */
						
						f.setAttribute("class","filename");
						f.innerHTML = filenames[i];
						f.setAttribute("onclick","clickfile(this.innerText)");
						
						del.setAttribute("class","del");
						del.setAttribute("value",filenames[i]);
						del.innerHTML = "X";
						del.setAttribute("onclick","deletefile(this.value)");
						document.getElementById("files").appendChild(f);
						document.getElementById("files").appendChild(del);
						$("#files").append("<br>");
						/* $(f).click(function(){
							alert(this.value);
						}); */
					}
				}
			})
		}
		
		// belows are ajax functions
		$(function() {
			$("#RunBtn").click(function() {
				
				
				
				//提交的参数，name和inch是和struts action中对应的接收变量
				var params = {
					code : CodeMirrorEditor.getValue(),
					input : $("#inputtext").val()
				};
				$.ajax({
					type : "POST",
					url : "print.action",
					data : params,
					dataType : "text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）
					beforeSend : function() {
						document.getElementById("RunBtn").innerHTML="Running";
					},
					success : function(json) {
						var obj = $.parseJSON(json); //使用这个方法解析json
						var state_value = obj.result; //result是和action中定义的result变量的get方法对应的
						document.getElementById("output").innerHTML=state_value;
						document.getElementById("RunBtn").innerHTML="Run";
					},
					error : function(json) {
						alert("json=" + json);
						return false;
					}
				});
			});
		});
		
			
		
		
		$(function() {
			$("#addNewFile").click(function() {
				alert("!!!!");
				
				//提交的参数，name和inch是和struts action中对应的接收变量
				var params = {
					newName : $("#newFileName").val()
				};
				$.ajax({
					type : "POST",
					url : "createNewFile.action",
					data : params,
					dataType : "text", //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）
					success : function(json) {
						//load files
						
						loadFile();
						alert("ok");
					},
					error : function(json) {
						alert("error");
					}
				});
			});
		});
		
	</script>
</head>
<body>


	<div class="navbar  navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-left navbar-toggle collapsed "
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span>
					<!-- 三个带有.icon-bar 的 <span> 创建所谓的汉堡按钮 -->
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.php">Scorpion</a>
			</div>

			<div id="navbar" class="collapse navbar-collapse">
				<!-- 给导航栏添加响应式，包裹在带有.collapse、.navbar-collapse  -->
				<ul class="nav navbar-nav" id="myTab">
					<!--nav navbar-nav 导航栏添加链接-->
					<li class="active"><a href="#"> C++在线测试</a></li>
				</ul>
			</div>
		</div>
	</div>


	<div class="container">
		
		
	
	
		<div class="row"
			style="background-color: #e5eecc; margin-top: 10%; margin-left: 0px; margin-right: 0px;">
			<div class="panel panel-default" style="margin-bottom: 0;">
				<div class="panel-body"
					style="background-color: #e5eecc; border-color: #e5eecc;">

					<s:form action="print" method="post" theme="simple"
						autocomplete="off" role="form">
						<div class="row">
							
							<div class="col-sm-10">
								<div class="row-fluid">
									<label class="inline"><strong
										style="font-size: 16px; color: #617f10;"> C++:</strong></label>
									大小:<select onchange="changeFontSize()"  id="selfontsize" >
                  							<option value='14px' selected>小</option>
                  							<option value='24px'>中</option>
                  							<option value='34px'>大</option>
                  					</select>
                  					字体:<select onchange="changeFontFamily()"  id="selfontfamily"  >
                  							<option  value='ubu' selected>ubu</option>
                  							<option value='bit'>bit</option>
                  							<option value='lob'>lob</option>
                  							<option value='pac'>pac</option>
                  					</select>

									主题: <select onchange="selectTheme()" id="select">
										<option selected>seti</option>
										<option>eclipse</option>
									</select>
									
									 F11:全屏 <input type="hidden" id="bt" name="bt">	
									 
									<div id="editNow" style="float:right;">
									</div>
									
									
									<div id="setfont">
										<s:textarea theme="simple" id="code" name="code"></s:textarea>
									</div>
									
									
								</div>

							</div>
							
							<div class="col-sm-2">
								<h4>我的文件</h4>
								<input id="newFileName" style="width:80px;"/>
								
								<button id="addNewFile" type="button"
											>+</button>
								
							 	<div id="files"></div>
							</div>
							
						</div>
					</s:form>

				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 1%">
			<div class="col-md-2">
				<label id="in" for="in" class="CheckedInLable"> 隐藏输入：<input
					id="put" type="checkbox" />
				</label>
			</div>
			<div class="col-md-offset-10 col-md-2">
				<div class="btn-group" style="float: right;">
					<button onclick = "xxx()" type="button" class="btn btn-success btn-lg">save</button>
					<button id="RunBtn" type="button" class="btn btn-primary btn-lg">Run</button>
					
				</div>
				
										
				<script type="text/javascript">
					function xxx() {
						
						var params = {
							code : CodeMirrorEditor.getValue(),
							fileName : $('#editFile').text()
						};
						$.ajax({
							type : "POST",
							url : "savefile",
							data : params,
							dataType : "text",
							success : function(json) {
								alert("save ok");
							},
							error : function() {
								alert("save error");
							}
						});
					}									
				</script>
			</div>
		</div>

		<div class="row">
			<div id="input" class="col-md-8">
				<textarea rows="10" cols="100" id="inputtext" name="input"
					class="form-control"></textarea>
			</div>
		</div>
		<div class="row" id="out"></div>
	</div>

	
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" 
							aria-hidden="true">×
					</button>
					<h4 class="modal-title" id="myModalLabel">
						Welcome to Scorpion
					</h4>
				</div>
				<div class="modal-body">
					<!-- <form action="load.action" method="post">			
						<div class="form-group">
							<p>文件名</p>
							<input type="text" class="form-control" label="Choose dir" placeholder="choose dir if you want" name="dir">
						</div>
						<div class="form-group">
							<p>密码</p>
							<input type="password" class="form-control" label="pass word" placeholder="passwd for this dir" name="passwd">
						</div>
						<div class="form-group">
							<button type="button" class="btn btn-primary btn-block" type="submit">提交</button>
						</div>
					</form> -->
					<form action="load.action" method="post">
						<s:textfield name="dir" label="Choose dir" />
						<s:password name="passwd" label="pass word"/>
						<s:submit />
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(function () { $('#myModal').modal({
			keyboard: true
		});
	});
	</script>
	
	

	<script>
		var myTextarea = document.getElementById('code');
		var CodeMirrorEditor = CodeMirror.fromTextArea(myTextarea, {
			
			//光标大小
			cursorHeight: 1,
			
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
		
		//设置主题
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
	


	  //设置字体大小
	  var size = document.getElementById("selfontsize");
	  function changeFontSize(){
			document.getElementById("setfont").style.fontSize=size.value;
			CodeMirrorEditor.refresh();
		} 
	  //设置字体
	  var fontfamily = document.getElementById("selfontfamily");
	  
	  function changeFontFamily(){  
		document.getElementById("setfont").style.fontFamily=fontfamily.value;
		changeFontSize()
			  
	  }
	  
	
	  
	  window.onload = changeFontSize();
	  
	  window.onload = changeFontFamily();
	  
	 </script>
	 <!-- <div>
		<input id="newFileName" style="width:80px;"/>
		
		<button id="addNewFile" type="button"
					>+</button>
		<h4>我的文件</h4>
	 	<div id="files"></div>
	</div> -->
</body>
</html>
