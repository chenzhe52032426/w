<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="dao.ActivityDAO"  %>
<%@ page import="dao.AdvertisementDAO"  %>
<%@ page import="entity.ActivityInfo"  %>
<%@ page import="entity.Advertisement"  %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>CET</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
     <link href="css/bootstrap.min.css" rel="stylesheet">
      <script src="js/html5shiv.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
	 <style>
        body {
            padding-top: 50px;
            padding-bottom: 40px;
            color: #5a5a5a;
        }
        /* 轮播广告 */
        .carousel {
            height: 500px;
            margin-bottom: 60px;
        }
        .carousel .item {
            height: 500px;
            background-color: #000;
        }
        .carousel .item img {
            width: 100%;
        }
        .carousel-caption {
            z-index: 10;
        }
        .carousel-caption p {
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.8;
        }
        /* 简介 */
        .summary {
            padding-right: 15px;
            padding-left: 15px;
        }
        .summary-container .col-md-4 {
            margin-bottom: 20px;
            text-align: center;
        }
        /* 特性 */

        .feature-divider {
            margin: 40px 0;
        }

        .feature {
            padding: 30px 0;
        }

        .feature-heading {
            font-size: 50px;
            color: #2a6496;
        }

        .feature-heading .text-muted {
            font-size: 28px;
        }

       .ThisWeekTrip{
		   text-align:center;
		   font-size:50px;
		   
		   }
	   .HolidayTrip{
		   text-align:center;
		   font-size:50px;
		   
		   }
    </style>
  </head>
  
  <body>
<!-- 顶部导航 -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="menu-nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"> CET </a>
        </div>
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#ad-carousel">Trips</a></li>
                <li><a href="http://localhost:8080/JspViewListDemo/JSP/Second-menu.jsp" >Second hand</a></li>
                <li><a href="#" data-toggle="modal" data-target="#about-modal">About us</a></li>           
            <li>  <a class="btn btn-lg active btn-danger" href="http://www.baidu.com/" target="_blank"
                          role="button" style="color:white ">Open another website</a> </li>
            </ul>
        </div>
    </div>
</div>


<!-- 广告轮播 -->
<div id="ad-carousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#ad-carousel" data-slide-to="1"></li>
        <li data-target="#ad-carousel" data-slide-to="2"></li>
        <li data-target="#ad-carousel" data-slide-to="3"></li>
        <li data-target="#ad-carousel" data-slide-to="4"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
         <%
	AdvertisementDAO adDAO = new AdvertisementDAO();
      Advertisement ad = new Advertisement();
        Advertisement ad2 = new Advertisement();
        Advertisement ad3 = new Advertisement();
        Advertisement ad4 = new Advertisement();
        Advertisement ad5 = new Advertisement();
      ad=adDAO.getItemsById(1);
      ad2=adDAO.getItemsById(2);
      ad3=adDAO.getItemsById(3);
      ad4=adDAO.getItemsById(4);
      ad5=adDAO.getItemsById(5);
	 %>
           <img  src="images/<%=ad.getPicture() %>" alt="1 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1><%=ad.getName()%></h1>

                    <p><%=ad.getFeature()%></p>

                    <p><a class="btn btn-lg btn-primary" href="<%=ad.getHref() %>"
                          role="button" target="_blank">Register</a></p>
                </div>
            </div>
        </div>
        
         
		           <div class="item">
		            <img src="images/<%=ad2.getPicture()%>" alt="2 slide">
		
		              <div class="container">
		                <div class="carousel-caption">
		                    <h1><%=ad2.getName()%></h1>
		
		                    <p><%=ad2.getFeature()%></p>
		
		                    <p><a class="btn btn-lg btn-primary" id="button" href="http://www.firefox.com.cn/download/" target="_blank"
		                          role="button">Register</a></p>
		                </div>
		             </div>
		     	   </div>
				      <div class="item">
				          <img src="images/<%=ad2.getPicture()%>" alt="3 slide">
				
				          <div class="container">
				               <div class="carousel-caption">
				                  <h1><%=ad3.getName()%></h1>
				
				                    <p><%=ad3.getFeature()%></p>
				
				                    <p><a class="btn btn-lg btn-primary" href="file:///D:/Dreamweaver/CETweb" target="_blank"
				                          role="button">Like</a></p>
				              </div>
				          </div>
				      </div>
			        <div class="item">
			            <img src="images/<%=ad4.getPicture()%>" alt="4 slide">
			
			            <div class="container">
			                <div class="carousel-caption">
			                    <h1><%=ad4.getName()%></h1>
			
			                    <p><%=ad4.getFeature()%></p>
			
			                    <p><a class="btn btn-lg btn-primary" href="http://www.opera.com/zh-cn" target="_blank"
			                          role="button">Like</a></p>
			                </div>
			            </div>
			        </div>
		        <div class="item">
		            <img src="images/<%=ad5.getPicture()%>" alt="5 slide">
		
		            <div class="container">
		                <div class="carousel-caption">
		                    <h1><%=ad5.getName()%></h1>
		
		                    <p><%=ad5.getFeature()%></p>
		
		                    <p><a class="btn btn-lg btn-primary" href="https://mp.weixin.qq.com/s?__biz=MzA3NTU1NjU2MA==&mid=2651328063&idx=1&sn=82c0ea1f663d44b4c351d17d38ef799a&scene=0&pass_ticket=LN6a%2FowVJqvGoJAs2NGYkH1jPybipQ9wvTfFxM3wAGYMQ4JAeXoo08ZgtUiH3ShA#rd" target="_blank"
		                          role="button">Register now</a></p>
		                </div>
		            </div>
		        </div>
    </div>
    <a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#ad-carousel" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>

<hr>
<div class="ThisWeekTrip">
<p>This week's trip</p>
</div>
<hr>
<!-- 主要内容 -->
<div class="container summary">

    <!-- 简介 -->
    <div class="row" id="summary-container">
    <%
	ActivityDAO activity = new ActivityDAO();
	ArrayList<ActivityInfo> list = activity.getAllItems();
		for(int i=list.size()-1;i>=0;i--){
  		 ActivityInfo activityinfo=list.get(i);
		
	 %>
        <div class="col-md-6">
            <img class="img-square" src="images/<%=activityinfo.getPicture()%>" alt="chrome">
            <h2><%=activityinfo.getName() %></h2>
            <p><%=activityinfo.getData() %>,<%=activityinfo.getPrice()%>RMB</p>
            <p><a class="btn btn-lg btn-primary" href="<%=activityinfo.getHref()%>" target="_blank" role="button"> View details</a></p>
        </div>
        <%
       		 }
          %>
    </div>

    <!-- 关于 -->
    <div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="modal-label"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
                    <h4 class="modal-title" id="modal-label">关于</h4>
                </div>
                <div class="modal-body">
                    <p>CET is an organization which offers amazing trips for people from all over the world to know about each other</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">了解了</button>
                </div>
            </div>
        </div>
    </div>


    <footer>
        <p class="pull-right"><a href="#top">Up to top</a></p>

        <p>&copy; 2014 CET </p>
    </footer>

</div>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $(function () {
        $('#ad-carousel').carousel();
        $('#menu-nav .navbar-collapse a').click(function (e) {
            var href = $(this).attr('href');
            var tabId = $(this).attr('data-tab');
            if ('#' !== href) {
                e.preventDefault();
                $(document).scrollTop($(href).offset().top - 70);
                if (tabId) {
                    $('#feature-tab a[href=#' + tabId + ']').tab('show');
                }
            }
        });
    });
</script>
</body>
</html>
