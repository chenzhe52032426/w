<i><%@page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@page import="com.imooc.dao.GoddessDao"%>
<%@page import="com.imooc.model.Goddess"%>
<%@page import="dao.ItemsDAO"%>
<%@page import="entity.Items"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>CET starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>  
  <body>  
  <table class="table table-hover">
  
  <a  href="http://localhost:8080/JspViewListDemo/JSP/UploadGoodsInfo.jsp" target="_blank"
                          role="button">Upload your own goods</a>
  <%
 	GoddessDao g= new GoddessDao();
    ItemsDAO d=new ItemsDAO();
    ArrayList<Items> list= d.getAllItems(); 
    for(int i=list.size()-1;i>-1;i--){
   	  Items items=list.get(i);  
 %>     
          <td class="active" width="80"> 
          <img src="images/<%=items.getPicture() %>" width="80" height="80" padding:left="">         
          </td>        
          <td class="active">
           <a href="JSP/Second-menu-details.jsp?id=<%= items.getId()%>"> <p><%=items.getName() %></p></a>
            <p><%=items.getCity() %></p>
          </td>
          <tr></tr>
   <%
   }
    %>
   </table>
    <br>
  </body>
</html>
</i>