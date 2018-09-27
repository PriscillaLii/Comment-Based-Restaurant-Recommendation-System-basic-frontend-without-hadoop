<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Material Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.8.3.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling----
	 <!------ Light Box ------>
    <link rel="stylesheet" href="css/swipebox.css">
    <script src="js/jquery.swipebox.min.js"></script> 
    <script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
    <!------ Eng Light Box ------>	
    
    <link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	<style>
body {margin:40px auto; text-align:center;}
p {font:14px/26px arial;}
input{border:0;padding:0}
.s_ipt_wr{width:418px;height:30px;display:inline-block;margin-right:10px;background:url(images/Search.gif) no-repeat;border:1px solid #104ebf;border-color:#104ebf #6bb0f0 #6bb0f0 #104ebf;vertical-align:top}
.s_ipt{width:405px;height:22px;font:16px/22px arial;margin:4px 0 0 7px;background:#fff;outline:none;-webkit-appearance:none}
.s_btn_wr{width:122px;height:34px;display:inline-block;background:url(images/Search.gif) no-repeat -260px -50px;*position:relative;z-index:0;vertical-align:top}
.s_btn{width:120px;height:32px;padding-top:2px\9;font-size:16px;background:#ddd url(images/Search.gif) 0 -50px;cursor:pointer;color:#FFF;}
.s_btn_h{background-position:-130px -50px;}
</style>	

</head>
<body>
<!-- header -->
		<div class="header" id="home">
			<div class="container">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png"></a>
					</div>
				</div>
                <div>
<s:form action="SearchRes.action" method="post">
<span class="s_ipt_wr">
<input id="kw" name="key" class="s_ipt" type="text" maxlength="100" autocomplete="off">
</span>
<span class="s_btn_wr">
<input id="su" class="s_btn" type="submit" onmouseout="this.className='s_btn'" onmousedown="this.className='s_btn s_btn_h'" value="BUPT一下" onfocus="blur()" >
</span>
</s:form>

</div>
			</div>
				<div class="content">
					<div class="services-section" id="services">
						<div class="container">
						<div class="cbp-spmenu-push">
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s2">
		<div class="logo1">
					<a href="index.html"><img src="images/logo1.png"></a>
					</div>
					<ul>
								<li><a href="index.html" class="scroll">搜索</a></li>
							   	<li><a href="#services" class="scroll">分工</a></li>
							   	<li><a href="#about" class="scroll">关于</a></li> 
							 	<li><a href="#portfolio" class="scroll">商铺</a></li>
							  	<li><a href="#testimonials" class="scroll">Testimonials</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					
		<div class="main">
				<section>
					<button id="showRight"><img src="images/nav.png"></button>
				</section>
		</div>
	</div>
	<script src="js/classie.js"></script>
		<script>
			var menuRight = document.getElementById( 'cbp-spmenu-s2' ),
				showRight = document.getElementById( 'showRight' ),
				body = document.body;

			showRight.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( menuRight, 'cbp-spmenu-open' );
				disableOther( 'showRight' );
			};

			function disableOther( button ) {
				if( button !== 'showRight' ) {
					classie.toggle( showRight, 'disabled' );
				}
			}
		</script>
			<div class="services-header">
							<h1>小组成员</h1>
							</div>
								<div class="services-grids">
									<div class="col-md-4 services-grid">
											<img src="images/icon1.png">
												<h3>李晨</h3>
													<p>Hadoop编程实践</p>
												</div>
												<div class="col-md-4 services-grid">
													<img src="images/icon2.png">
														<h3>丁晓都</h3>
															<p>MongoDB的学习和应用</p>
												</div>
												<div class="col-md-4 services-grid">
													<img src="images/icon3.png">
														<h3>熊鹰</h3>
														<p>shh架构及网页性能的优化</p>
												</div>
                                                <div class="col-md-4 services-grid">
													<img src="images/icon2.png">
														<h3>李昊然</h3>
															<p>前台界面的开发</p>
												</div>
                                                <div class="col-md-4 services-grid">
													<img src="images/icon2.png">
														<h3>李思贝</h3>
															<p>MongoDB的学习和应用</p>
												</div>
												<div class="clearfix"></div>
										</div>
									</div>
									</div>
										<div class="about-section" id="about">
											<div class="container">
													<div class="about-grids">
																<div class="col-md-6 left-grid">
																		<img src="images/com.png">
																	</div>
																	<div class="col-md-6 right-grid">
																	<s:form action="SearchUser.action" method="post">
    BUPT一下<input name="key" type="text"> 
	<input value="搜索用户" type="submit"><br>
	</s:form>
  <table border="1">
  	<caption>用户列表</caption>
<s:iterator value="#request.userlist" id="f" status="status" >
<s:if test="#status.index % 4 == 0">
<tr>
</s:if>
<td>
<a href="usercom.action?username=<s:property value="#f"/>"><s:property value="#f"/></a>
</td>
<s:if test="#status.index % 4 == 3 || #status.last">
</tr>
</s:if>
</s:iterator> 
</table>
																		<div class="buttons">
																					<a class="button1 hvr-shutter-in-vertical" href="#">get started</a>
																						<a class="button2 hvr-shutter-in-vertical" href="#">learn more</a>
																					</div>
																	</div>
															<div class="clearfix"></div>
														</div>
												</div>
										</div>
										<div class="portfolio-section" id="portfolio">
											<div class="container">
													<div class="portfolio-header">
														<h3>商铺</h3>
															<p>餐饮系统数据分析的来源</p>
															</div>
				<div id="portfoliolist">
				<s:iterator value="#request.Reslist" id="f">
					<div class="portfolio">
						<div class="portfolio-wrapper grid_box">		
							 <a href="picture/<s:property value='#f.name'/>.png" class="swipebox"  title="Image Title"> <img src="picture/<s:property value='#f.name'/>.png" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>
								<div class="portfolio-info">
								<h3><s:property value="#f.name"/></h3>
								<img src="images/leftarrow.png" onclick="javascript:location.href='Resdetail.action?ResId=<s:property value="#f.id"/>'">
									<div class="clearfix"></div>
						</div>

		                </div>
		                
					</div>	
								
				</s:iterator>
								
				</div>
 <!-- Script for gallery Here -->
				<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
					$(function () {
						
						var filterList = {
						
							init: function () {
							
								// MixItUp plugin
								// http://mixitup.io
								$('#portfoliolist').mixitup({
									targetSelector: '.portfolio',
									filterSelector: '.filter',
									effects: ['fade'],
									easing: 'snap',
									// call the hover effect
									onMixEnd: filterList.hoverEffect()
								});				
							
							},
							
							hoverEffect: function () {
							
								// Simple parallax effect
								$('#portfoliolist .portfolio').hover(
									function () {
										$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
										$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
									},
									function () {
										$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
										$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
									}		
								);				
							
							}
				
						};
						
						// Run the show!
						filterList.init();
						
						
					});	
					</script>
			<!-- Gallery Script Ends -->
			
		

			</div>
		</div>
				<div class="testimonials-section" id="testimonials">
						<div class="container">
							<div class="test-header">
								<h4>Hadoop&MongoDB</h4>
							</div>
							<div class="test-center">
							<p>当今社会，人们对自己的衣食住行越来越看中，尤其是吃方面。大众点评，美团网等餐饮信息网收到了广泛的关注。
我们通过爬虫获取这些餐厅的信息，以及用户对这些餐厅的评价，将其存入MONGODB，并通过HADOOP对这几十万条数据进行简单的挖掘处理，获取其中一些有用的信息。
包括获取一个餐馆的所有评论
统计评论中出现的单词各个词频，以及热词
获取一个用户的所有评论，统计其评论词频
对以上的信息进行实时检索。
根据评分以及高频词汇获得餐厅特征等等。
</p>
							</div>
						</div>	
					</div>
					<div class="contact-section">
						<div class="container">
								<div class="contact-grids">
										<div class="col-md-4 contact-grid">
												<h4>地址</h4>
													<p>北京邮电大学</p>
											</div>
											<div class="col-md-4 contact-grid1">
												<h4>Get In Touch</h4>
													</div>
													<div class="col-md-4 contact-grid2">
												<h4>联系方式</h4>
														<a href="#">E-mail:123456789@hotmail.com</a>
															<p>Phone: +12345678</p>
															
											<div class="clearfix"></div>
									</div>
									</div>
								</div>
							</div>
					</div>
					<div class="footer-section">
					<div class="container">
							<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a class="scroll" href="#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

				</div>				
				</div>


</body>
</html>