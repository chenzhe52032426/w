<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.imooc.action.FileUploadAction"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UploadGoodsInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css" />
   <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
   <script type="text/javascript">
		$(function(){
			$(".thumbs a").click(function(){
				var largePath  = $(this).attr("href");
				var largeAlt = $(this).attr("title");
				$("#largeImg").attr({
					src : largePath,
					alt : largeAlt
				});
				return false;
			});
			
		});	
	</script>
  </head>
  
  <body>
    
<form action="upload.action" method="post" enctype="multipart/form-data">
  		上传文件1：<input type="file" name="upload"><br>
  		<input type="submit" value="提交"> 
  	</form>


<p>


 <form name="EditGoodsInfoForm" action="aaaaa.do"  method="post">
	<div class="GoodsInfo"  >
		Input the title: <input type="text" class="form-control" placeholder="Text inasdfput" name="title" >
		<br>
		Input the decribtion of the goods:
		<textarea class="form-control" rows="10" name="description"></textarea>
        
        <div class="btn-submit" align="center" >
             
        <h2>&nbsp; 文件上传	</h2>
        
          <input class="btn btn-default" type="submit" value="Submit">    
	    </div>
	</div>
    </form>
  
  </body>
</html>
