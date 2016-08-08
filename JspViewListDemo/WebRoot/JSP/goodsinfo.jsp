<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodsinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" rel="stylesheet" href="http://www.thebeijinger.com/sites/default/files/css/css_9iQU-jPfC8apWuiT9VoMchr-SiiTUqeeQ9-9POO-UTM.css" media="all" />
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body> 
    <jsp:useBean id="EditGoodsInfo"  class="entity.Goodsinfo"  scope="session">   
    </jsp:useBean>
  
<div class="field field-name-body field-type-text-with-summary field-label-hidden">
<div class="field-items">
<div class="field-item even" property="content:encoded">
	<p> <jsp:getProperty property="title" name="EditGoodsInfo"/></p>
	<br>
	<p> <jsp:getProperty property="description" name="EditGoodsInfo"/></p>
	<p><jsp:getProperty property="image" name="EditGoodsInfo"/></p>
</div>
 </div>
 </div>
 
<div class="field field-name-field-ad-images field-type-image field-label-hidden row node-images">
  <h3 class="field-label">Images</h3>
   <div class="field-items">
   <div class="field-item even col-sm-3 col-ms-3 col-xs-6" class="col-sm-3 col-ms-3 col-xs-6"><a href="images/<jsp:getProperty property="image" name="EditGoodsInfo"/> " title="" class="colorbox" data-colorbox-gallery="gallery-node-982897-2CjiNoT Feuk"><img typeof="foaf:Image" src="images/<jsp:getProperty property="image" name="EditGoodsInfo"/>" width="180" height="150" alt="" title="" /></a>
  </div>
<div class="field-item odd col-sm-3 col-ms-3 col-xs-6" class="col-sm-3 col-ms-3 col-xs-6"><a href="images/10.jpg" title="" class="colorbox" data-colorbox-gallery="gallery-node-982897-2CjiNoTFeuk"><img typeof="foaf:Image" src="images/10.jpg" width="180" height="150" alt="" title="" /></a></div>

  <div class="field-item odd col-sm-3 col-ms-3 col-xs-6" class="col-sm-3 col-ms-3 col-xs-6"><a href="images/10.jpg" title="" class="colorbox" data-colorbox-gallery="gallery-node-982897-2CjiNoTFeuk"><img typeof="foaf:Image" src="images/10.jpg" width="180" height="150" alt="" title="" /></a></div>

 <div class="field-item odd col-sm-3 col-ms-3 col-xs-6" class="col-sm-3 col-ms-3 col-xs-6"><a href="images/10.jpg" title="" class="colorbox" data-colorbox-gallery="gallery-node-982897-2CjiNoTFeuk"><img typeof="foaf:Image" src="images/10.jpg" width="180" height="150" alt="" title="" /></a></div>

</body>
</html>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  </body>
</html>
