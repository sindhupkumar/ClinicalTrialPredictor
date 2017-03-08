<!DOCTYPE HTML>
<html>
	<head>
		<title>Clinical Project</title>
		<link href="css1/bootstrap.css" rel='stylesheet' type='text/css' />
		<!--Visualization Part-->
		<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300,100,900|Open+Sans:400,300,700,600,800' rel='stylesheet' type='text/css'>
		<script src="radialTree/d3.min.js" charset="utf-8"></script>
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css1/style1.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		  <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script src="http://www.w3schools.com/lib/w3data.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!-- webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Karla:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css'>
		<!-- webfonts -->
	</head>
	<body>
		<!-- container -->
			<!-- header -->
			<div id="home" class="header">
				<div class="container">
				<!-- top-hedader -->
				<div class="top-header">
					<!-- logo -->
					<div class="logo">
						<a href="#"><img src="images1/logo2.png" title="Clinical Trial Predictor" /></a>
					</div>
					<!-- /logo -->
					<!--top-nav---->
					<div class="top-nav">
						<div class="nav-icon">
					    <a href="#" class="right_bt" id="activator"><span> </span> </a>
						</div>
						 <div class="box" id="box">
							 <div class="box_content">        					                         
								<div class="box_content_center">
								 	<div class="form_content">
								 		<a class="nav-logo" href="#"><img src="images1/logo2.png" title="Clinical Trial Predictor" /></a>
										<div class="menu_box_list">
											<ul>
												<li class="active"><a href="#home" class="scroll"><span>Home</span></a></li>
												<li><a href="#about" class="scroll"><span>AboutUs</span></a></li>
												<li><a href="#services" class="scroll"><span>Services</span></a></li>
												<li><a href="#feedback" class="scroll"><span>Feeds</span></a></li>
												<li><a href="#port" class="scroll"><span>Process</span></a></li>
												<li><a href="#result" class="scroll"><span>Result</span></a></li>
												<li><a href="#register" class="scroll"><span>Subscribe</span></a></li>
												<li><a href="#contact" class="scroll"><span>Contact</span></a></li>
												<div class="clear"> </div>
											</ul>
										</div>
										<a class="boxclose" id="boxclose"> <span> </span></a>
									</div>                                  
								</div> 	
							</div> 
						</div>       	  
					</div>
					<!---start-click-drop-down-menu----->
			        <!----start-dropdown--->
			         <script type="text/javascript">
						var $ = jQuery.noConflict();
							$(function() {
								$('#activator').click(function(){
									$('#box').animate({'top':'0px'},900);
								});
								$('#boxclose').click(function(){
								$('#box').animate({'top':'-1000px'},900);
								});
							});
							$(document).ready(function(){
							//Hide (Collapse) the toggle containers on load
							$(".toggle_container").hide(); 
							//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
							$(".trigger").click(function(){
								$(this).toggleClass("active").next().slideToggle("slow");
									return false; //Prevent the browser jump to the link anchor
							});						
						});
					</script>
					<!---//End-click-drop-down-menu----->
					<!--top-nav---->
					<div class="clearfix"> </div>
				</div>
				<!-- /top-hedader -->
				<!-- welcome-note -->
				<div class="welcome-note">
				<link href="css1/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
									    $(document).ready(function() {
									      $("#owl-demo").owlCarousel({
									        items : 1,
									        lazyLoad : false,
									        autoPlay : true,
									        navigation : false,
									        navigationText :  false,
									        pagination : true,
									      });
									    });
									  </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
							 <div id="owl-demo" class="owl-carousel">
					                <div class="item">
					                	<div class="note">
											<h1>Network-based <span>Computaional Models</span><p>For<span> Biomarker Discovery & Response Prediction</span></p></h1>
										</div>
					                </div>
					                 <div class="item">
					                	<div class="note">
											<h1>Network-based <span>Computaional Models</span><p>For<span> Biomarker Discovery & Response Prediction</span></p></h1>
										</div>
					                </div>
					                 <div class="item">
					                	<div class="note">
											<h1>Network-based <span>Computaional Models</span><p>For<span> Biomarker Discovery & Response Prediction</span></p></h1>
										</div>
					                </div>
				              </div>
						<!--//sreen-gallery-cursual---->	
				</div>
				<!-- welcome-note -->
				<!-- top-grids -->
				<div class="top-grids">
					<div class="col-md-3 top-grid text-center">
						<span class="icon4"></span>
						<h3>Prof.Wei Ding</h3>
					</div>
					<div class="col-md-3 top-grid text-center">
						<span class="icon4"></span>
						<h3>  Prof.Kourosh</h3>
					</div>
					<div class="col-md-3 top-grid text-center">
						<span class="icon4"> </span>
						<h3>Team Members</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
				<!-- top-grids -->
			</div>
			</div>
			<!-- /header -->
			<script>
				$(document).ready(function() {
					$("#owl-demo1").owlCarousel({
						items : 1,
						lazyLoad : false,
						autoPlay : true,
						navigation : false,
						navigationText :  false,
						pagination : true,
					});
				});
			</script>
			<!-- about -->
			<div id="about" class="about">
				<div class="col-md-6 about-left">
					<div id="owl-demo1" class="owl-carousel owl-carousel2">
					                <div class="item">
					                	<div class="about-left-grid">
											<h2>We are the <span>Industry Experts in Clinical Prediction</span></h2>
											<p>Understand and predict an individual's response to treatment in a clinical trial. Also Identify better treatments and cost effective medicine.In Predicting response by training classifiers on biologically relevant features and Assess the accuracy and generalizability of the models</p>
											<ul>
												<li><a class="a-btn-a" onclick="#register">Subscribe</a></li>
											</ul>
										</div>
					                </div>
					                  <div class="item">
					                	<div class="about-left-grid">
											<h2>Here is <span>Project Overview</span></h2>
											<p>The goal is to use baseline or early treatment gene expression data to predict the outcome (response to therapy)  at the end of the trial.Genetic, phenotypical, and environmental variation is much higher in a human trial population than currently modeled or measured in most animal studies.High variability can lead to failure of trained predictors in independent studies.</p>
											<ul>
												<li><a class="a-btn-a"  onclick="#register">Subscribe</a></li>
											</ul>
										</div>
					                </div>
					                  <div class="item">
					                	<div class="about-left-grid">
											<h2><span> Working Of the Model</span></h2>
											<p class="about-left-pic" style="height:195"><img src="images1/about-left-pic.png"/></p>
											<ul>
												<li><a class="a-btn-a" onclick="#register">Subscribe</a></li>
											</ul>
										</div>
					                </div>
					</div>
				</div>
				<div class="col-md-6 about-right">	
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- /about -->
			<!-- services -->
			<div id="services" class="services">
				<div class="container">
					<div class="service-head text-center">
						<h3>Our <span>Services</span></h3>
						<p>Currently We Offer</p>
					</div>
					<!-- services-grids -->
					<div class="services-grids">
						<div class="col-md-6 services-grid">
							<div class="services-grid-icon">
								<span class="s-icon1"> </span>
							</div>
							<div class="services-grid-info">
								<h4><a href="#port">Trial Prediction</a></h4> 
								<p>Understand and predict an individual's response to treatment in a clinical trial and also identify better treatments and cost effective medicine.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
							<div class="col-md-6 services-grid">
							<div class="services-grid-icon">
								<span class="s-icon2"> </span>
							</div>
							<div class="services-grid-info">
								<h4>Pathway Inference</h4>
								<p> we can infer the genetic regulatory pathways from gene-expression profiles quantitatively, which can confirm some doubted paths or seek some unknown paths in a regulatory pathway (Network)</p>
							</div>
							<div class="clearfix"> </div>
						</div>
							<div class="col-md-6 services-grid">
							<div class="services-grid-icon">
								<span class="s-icon4"> </span>
							</div>
							<div class="services-grid-info">
								<h4>RNA-Sequence Analysis</h4>
								<p>RNA-seq is the set of experimental procedure that generates cDNA sequences derived from the entire RNA molecules, followed by library construction and massively parallel deep sequencing. </p>
							</div>
							<div class="clearfix"> </div>
						</div>
							<div class="col-md-6 services-grid">
							<div class="services-grid-icon">
								<span class="s-icon3"> </span>
							</div>
							<div class="services-grid-info">
								<h4>Diagnostics</h4>
								<p>In Predicting response by training classifiers on biologically relevant features and Assess the accuracy and generalizability of the models</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!-- services-grids -->
				</div>
			</div>
			<!-- services -->
			<!-- Feedback -->
			<script>
				$(document).ready(function() {
					$("#owl-demo3").owlCarousel({
						items : 1,
						lazyLoad : false,
						autoPlay : true,
						navigation : false,
						navigationText :  true,
						pagination :true,
					});
				});
			</script>
			<div class="feedback" id="feedback">
				<div class="container">
					<div id="owl-demo3" class="owl-carousel owl-carousel1">
					     <div class="item">
					     	<div class="feedback-grid text-center">
								<p>"Quotes on Neural Networks"</p>
								<h4>Author Name,<span> ABC Group</span></h4>
							</div>
					     </div>
					     <div class="item">
					     	<div class="feedback-grid text-center">
								<p>"Feeds on Neural Network Prediction"</p>
								<h4>Author Name,<span> ABC Group</span></h4>
							</div>
					     </div>
					     <div class="item">
					     	<div class="feedback-grid text-center">
								<p>"Quotes on Neural Networks"</p>
								<h4>Author Name,<span> ABC Group</span></h4>
							</div>
					     </div>
					 </div>
				</div>
			</div>
			<!-- Feedback -->				
			<!-- portfolio -->
			<
			<div id="port" class="portfolio">
				<div class="container">
					<div class="portfolio-head text-center">
						<h2>Try Out The <p><span>Latest</span> And <span> Greatest</span> Predictor</p></h2>
						<p>You will have to upload your Trial file and begin the process either wait till the process is completed or Register with your email address to get the prediction in your Email.</p>
					</div>
					<!-- portfolio-grids -->
					<script>
					$(document).ready(function() {
					$('a.upload-window').click(function() {
    
					//Getting the variable's value from a link 
					var uploadBox = $(this).attr('href');

					//Fade in the Popup
					$(uploadBox).fadeIn(300);
    
					//Set the center alignment padding + border see css style
					var popMargTop = ($(uploadBox).height() + 24) / 2; 
					var popMargLeft = ($(uploadBox).width() + 24) / 2; 
    
					$(uploadBox).css({ 
					'margin-top' : -popMargTop,
					'margin-left' : -popMargLeft
					});
    
					// Add the mask to body
					$('body').append('<div id="mask"></div>');
					$('#mask').fadeIn(300);
    
					return false;
					});

					// When clicking on the button close or the mask layer the popup closed
					$('a.close, #mask').on('click', function() { 
						$('#mask , .upload-popup').fadeOut(300 , function(){
						$('#mask').remove();  
					}); 
						return false;
					});
				});
					</script>
					<div class="portfolio-grids">
						<div class="col-md-4 portfolio-grid">
							<div class="portfolio-grid-pic">
								<img src="images1/portfolio-pic1.png" title="name" />
								<div class="portfolio-grid-pic-caption" id="dynamicForm">
								  <a href="#upload-box" class="upload-window">SELECT & START</a>
								</div>
							</div>
							<div id="upload-box" class="upload-popup">
								<a href="#" class="close"><img src="images1/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
								<form method="post" class="upload" action="upload.do" enctype="multipart/form-data">
									<fieldset class="textbox">
									<!-- TODO Buttons and Name Of files -->
									<label class="username">
										<span>Choose Train File</span>
										<input placeholder="Train File" type="file" name="trainfile" size="50">
										<p> <select id="fileType">
  											<option value="pdf">pdf</option>
  											<option value="txt">txt</option>
  											<option value="csv">csv</option>
											</select>
										</p>
										<span>Choose Trial File</span>
										<input placeholder="Trial File" type="file" name="trialfile" size="50">
										<span>Choose Network End File</span>
										<input placeholder="Network File" type="file" name="networkfile" size="50">
										<span>Choose Network Relation File</span>
										<input placeholder="Network Relation File" type="file" name="networkRelationfile" size="50">	
									</label>
									<button class="submit button" type="submit">Upload</button>      
									</fieldset>
								</form>
							</div>
							<div class="portfolio-grid-info text-center">
								<h5>Upload File & Start Process</h5>
							</div>
							<br>
							<%if(request.getAttribute("message") != null)
							{%>
							<p style="color:red"><%=(String)request.getAttribute("message")%></p>
							<%}%>
						</div>
						
						<div class="col-md-4 portfolio-grid">
							<div class="portfolio-grid-pic">
								<div id="roc"> </div>
							</div>
						</div>
						<script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
						<script src="ROC/rocChart.js"></script>
						<script>
						var margin = {top: 30, right: 61, bottom: 70, left: 120}, 
						width = 600 - margin.left - margin.right,
						height = 400 - margin.top - margin.bottom;
						// fpr for "false positive rate"
						// tpr for "true positive rate"

						var rocChartOptions = {
								"margin": margin,
								"width": width,
								"height": height,
								"interpolationMode": "basis",
								"fpr": "X",
								"tprVariables": [
										{
											"name": "BPC",
											"label": "Method ONE"
										},
										{
											"name": "WNR",
											"label": "Method TWO"
										},
										{
											"name": "FSP",
											"label": "Method THREE",
										},
										{
											"name": "NPW",
											"label": "Method FOUR"
										}
									], 
								"animate": true,
								"smooth": true
						}

						d3.json("ROC/data.json", function(error, data) {
						rocChart("#roc", data, rocChartOptions)
					})
					</script>	
					<!-- portfolio-grids -->
				</div>
			</div>
			<!-- portfolio -->
			<!-- clients -->
			<script>
				$(document).ready(function() {
					$("#owl-demo2").owlCarousel({
						items : 5,
						lazyLoad : false,
						autoPlay : true,
						navigation : true,
						navigationText :  true,
						pagination : false,
					});
				});
			</script>
			<div class="clients" id="register">
				<div class="container">
					<h3>Register to recieve your trial results through Email</h3>
					<div class="client-email" id="emailform">
						<input type="text" id="emailform" placeholder="Email Address" />
						<button type="button" id="register">Register!</button>
					</div>
					<div id="owl-demo2" class="owl-carousel">	  	
				    </div>     	
				</div>
			</div>
			<!-- clients -->	
			<!-- suggestions -->
			<div id="contact" class="contact">
				<div class="container">
					<div class="contact-head text-center">
						<h3>Have any <span>suggestions!</span></h3>
						<p>Just send us a message</p>
					</div>
					<!-- contact-grids -->
					<div class="contact-grids">
						<div class="col-md-4 contact-left">
							<ul>
								<li><a class="facebook" href="#"><span> </span></a></li>
								<li><a class="twitter"  href="#"><span> </span></a></li>
								<li><a class="Instragram" href="#"><span> </span></a></li>
								<li><a class="dribbble" href="#"><span> </span></a></li>
							</ul>
						</div>
						<div class="col-md-8 contact-right">
							<form>
								<div class="text-boxs">
									<div class="text-box">
										<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
									</div>
									<div class="text-box">
										<input type="text" value="Last name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last name';}">
									</div>
									<div class="text-box">
										<input type="text" value="Your Email here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email here';}">
									</div>
									<div class="text-box">
										<input type="text" value="Project name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Project name';}">
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="subject">
									<textarea>Your Message.......</textarea>
									<input type="submit" value="" />
								</div>
							</form>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!-- contact-grids -->
				</div>
			</div>
			<!-- contact -->
			<!-- footer -->
			<div class="footer">
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
									<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
			<!-- footer -->
		<!-- /container -->
	</body>