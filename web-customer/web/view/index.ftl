<html>
<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="keywords" content=""/>
	<script type="application/x-javascript"> addEventListener("load", function () {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	} </script>
	<!-- Custom Theme files -->
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<!-- js -->
	<script src="../js/jquery-1.11.1.min.js"></script>
	<!-- //js -->
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>


</head>

<body>

<div class="banner">
	<!-- header -->
<#include "header.ftl"/>


	<!--banner-Slider-->
	<div class="container">
		<script src="../js/responsiveslides.min.js"></script>
		<script>
			// You can also use "$(window).load(function() {"
			$(function () {
				// Slideshow 4
				$("#slider3").responsiveSlides({
					auto: true,
					pager: true,
					nav: true,
					speed: 500,
					namespace: "callbacks",
					before: function () {
						$('.events').append("<li>before event fired.</li>");
					},
					after: function () {
						$('.events').append("<li>after event fired.</li>");
					}
				});

			});

		</script>
		<div id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<img src="../images/lfgm_door.jpg">
					<!--<div class="banner-info-slider">-->
					<!--<ul>-->
					<!--<li><a href="">sports</a></li>-->
					<!--<li>30 Aug 2016</li>-->
					<!--</ul>-->
					<!--<h3>Portfolio of Agency</h3>-->
					<!--<p>Lorem ipsum dolor sit amet adipiscing elit.-->
					<!--<span>By <i>ullamcoman</i> and <i>Micheal smithjos.</i></span></p>-->
					<!--<div class="more">-->
					<!--<a href="" class="type-1">-->
					<!--<span> Read More </span>-->
					<!--<span> Read More </span>-->
					<!--</a>-->
					<!--</div>-->
					<!--</div>-->
				</li>
				<li>
					<img src="../images/2202.jpg">
				</li>
				<li>
					<img src="../images/2202.jpg">
				</li>
				<li>
					<img src="../images/2202.jpg">
				</li>
				<li>
					<img src="../images/2202.jpg">
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
	<div class="container">

		<div class="move-text">
			<div class="breaking_news">
				<h2>最新公告</h2>
			</div>
			<div class="marquee">
				<div class="marquee1"><a class="breaking" href="">大庆市殡葬协会网站即将上线</a></div>
				<div class="marquee2"><a class="breaking" href="">倡导感恩纪念，推行文明缅怀</a></div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			<script type="text/javascript" src="../js/jquery.marquee.js"></script>
			<script>
				$('.marquee').marquee({pauseOnHover: true});
				//@ sourceURL=pen.js
			</script>
		</div>
		<!-- video-grids -->
		<div class="video-grids">
			<div class="col-md-8 video-grids-left">
				<div class="video-grids-left1">
					<img src="../images/9.jpg" alt=" " class="img-responsive"/>
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
						<span> </span>
					</a>
					<div class="video-grid-pos">
						<h3><span>Bellevue</span> Towers in Dubai Downtown UAE</h3>
						<ul>
							<li>9:32 <label>|</label></li>
							<li><i>Adom Smith</i> <label>|</label></li>
							<li><span>Blogger</span></li>
						</ul>
					</div>

					<!-- pop-up-box -->
					<script type="text/javascript" src="../js/modernizr.custom.min.js"></script>
					<link href="../css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="../js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box -->
					<div id="small-dialog1" class="mfp-hide">
						<iframe src="" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen
						        allowfullscreen></iframe>
					</div>

					<!--<script>-->
					<!--$(document).ready(function() {-->
					<!--$('.popup-with-zoom-anim').magnificPopup({-->
					<!--type: 'inline',-->
					<!--fixedContentPos: false,-->
					<!--fixedBgPos: true,-->
					<!--overflowY: 'auto',-->
					<!--closeBtnInside: true,-->
					<!--preloader: false,-->
					<!--midClick: true,-->
					<!--removalDelay: 300,-->
					<!--mainClass: 'my-mfp-zoom-in'-->
					<!--});-->
					<!---->
					<!--});-->
					<!--</script>-->
				</div>
				<div class="video-grids-left2">
					<div class="course_demo1">
						<ul id="flexiselDemo1">
							<li>
								<div class="item">
									<img src="../images/10.jpg" alt=" " class="img-responsive"/>
									<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
										<i> </i>
									</a>
									<div id="small-dialog" class="mfp-hide">
										<iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen
										        mozallowfullscreen allowfullscreen></iframe>
									</div>
									<div class="floods-text">
										<h3>The fed and inequality
											<span>Blogger <label>|</label> <i>Adom Smith</i></span></h3>
										<p>5:56</p>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<img src="../images/11.jpg" alt=" " class="img-responsive"/>
									<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
										<i> </i>
									</a>
									<div id="small-dialog" class="mfp-hide">
										<iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen
										        mozallowfullscreen allowfullscreen></iframe>
									</div>
									<div class="floods-text">
										<h3>The fastest insect in the world
											<span>Blogger <label>|</label> <i>Adom Smith</i></span></h3>
										<p>5:56</p>
									</div>
								</div>
							</li>
							<li>
								<div class="item">
									<img src="../images/12.jpg" alt=" " class="img-responsive"/>
									<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
										<i> </i>
									</a>
									<div id="small-dialog" class="mfp-hide">
										<iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen
										        mozallowfullscreen allowfullscreen></iframe>
									</div>
									<div class="floods-text">
										<h3>Billionaires versus
											Millionaires<span>Blogger <label>|</label> <i>Adom Smith</i></span></h3>
										<p>5:56</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- pop-up-box -->
					<script type="text/javascript" src="../js/modernizr.custom.min.js"></script>
					<link href="../css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="../js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box -->
					<script>
						$(document).ready(function () {
							$('.popup-with-zoom-anim').magnificPopup({
								type: 'inline',
								fixedContentPos: false,
								fixedBgPos: true,
								overflowY: 'auto',
								closeBtnInside: true,
								preloader: false,
								midClick: true,
								removalDelay: 300,
								mainClass: 'my-mfp-zoom-in'
							});

						});
					</script>
					<!-- requried-jsfiles-for owl -->
					<script type="text/javascript">
						$(window).load(function () {
							$("#flexiselDemo1").flexisel({
								visibleItems: 3,
								animationSpeed: 1000,
								autoPlay: false,
								pauseOnHover: false,
								enableResponsiveBreakpoints: false,
								responsiveBreakpoints: {
									portrait: {
										changePoint: 480,
										visibleItems: 1
									},
									landscape: {
										changePoint: 640,
										visibleItems: 2
									},
									tablet: {
										changePoint: 768,
										visibleItems: 3
									}
								}
							});

						});
					</script>
					<script type="text/javascript" src="../js/jquery.flexisel.js"></script>
				</div>
			</div>
			<div class="col-md-4 video-grids-right">
				<div class="sap_tabs">
					<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item grid1" aria-controls="tab_item-0" role="tab"><span>进行中活动</span>
							</li>
							<li class="resp-tab-item grid2" aria-controls="tab_item-1" role="tab"><span>已结束活动</span>
							</li>
							<div class="clear"></div>
						</ul>
						<div class="resp-tabs-container">
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
								<div class="facts">
									<div class="tab_list">
										<img src="../images/10.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#">清明祭奠</a> <label>|</label></li>
											<li>2017年7月7日</li>
										</ul>
										<p><a href="#">清明祭扫，黄纸换鲜花</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/11.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="green">international</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/12.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="orange">general</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/10.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="orange1">business</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/12.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="orange2">world</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
								<div class="facts">
									<div class="tab_list">
										<img src="../images/12.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#">Blogger</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/11.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="orange1">business</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/10.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="orange2">world</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/12.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="green">international</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="facts">
									<div class="tab_list">
										<img src="../images/11.jpg" alt=" " class="img-responsive"/>
									</div>
									<div class="tab_list1">
										<ul>
											<li><a href="#" class="orange">general</a> <label>|</label></li>
											<li>30.03.2016</li>
										</ul>
										<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<script src="../js/easyResponsiveTabs.js" type="text/javascript"></script>
						<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
							});
						</script>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //video-grids -->

		<!-- //video-bottom-grids -->
		<!-- news-and-events -->
		<div class="news">
			<div class="news-grids">
				<div class="col-md-8 news-grid-left" style="background-color: #f9f9f9">
					<h3>新闻资讯</h3>
					<ul>
						<li>
							<div class="news-grid-left1">
								<img src="../images/16.jpg" alt=" " class="img-responsive"/>
							</div>
							<div class="news-grid-right1">
								<h4><a href="">Mexico's oil giant is in uncharted waters</a></h4>
								<h5>By <a href="#">Elizibeth Malkin</a> <label>|</label> <i>30.03.2016</i></h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="news-grid-left1">
								<img src="../images/17.jpg" alt=" " class="img-responsive"/>
							</div>
							<div class="news-grid-right1">
								<h4><a href="">second wave of votes to legalize marijuana</a></h4>
								<h5>By <a href="#">james smith</a> <label>|</label> <i>30.03.2016</i></h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="news-grid-left1">
								<img src="../images/13.jpg" alt=" " class="img-responsive"/>
							</div>
							<div class="news-grid-right1">
								<h4><a href="">Antares rocket, bound for space station, explodes</a></h4>
								<h5>By <a href="#">Michael Drew</a> <label>|</label> <i>30.03.2016</i></h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="news-grid-left1">
								<img src="../images/12.jpg" alt=" " class="img-responsive"/>
							</div>
							<div class="news-grid-right1">
								<h4><a href="">stronger family bonds, two years after hurricane sandy</a>
								</h4>
								<h5>By <a href="#">james smith</a> <label>|</label> <i>30.03.2016</i></h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="news-grid-left1">
								<img src="../images/15.jpg" alt=" " class="img-responsive"/>
							</div>
							<div class="news-grid-right1">
								<h4><a href="">royal crush giants and force game 7</a></h4>
								<h5>By <a href="#">Michael Drew</a> <label>|</label> <i>30.03.2016</i></h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua.</p>
							</div>
							<div class="clearfix"></div>
						</li>
					</ul>
				</div>
				<div class="col-md-4 news-grid-right">
					<div class="news-grid-rght1">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active" style="width: 350px"><a class="high" href="#home"
							                                                               aria-controls="home"
							                                                               role="tab" data-toggle="tab">网上祭祀</a>
							</li>
							<!--<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">edit location</a></li>-->
						</ul>

						<!-- Tab panes -->
						<div class="news-grid-rght3">
							<img src="../images/18.jpg" alt=" " class="img-responsive"/>
							<div class="story">
								<p>story of the week</p>
								<h3><a href="">US hails west Africa Ebola progress</a></h3>
							</div>
						</div>
					</div>
					<div class="news-grid-rght2" style="height: 450px">
						<p>请填写信息</p>
						<form>
							<select>
								<option value="1">龙凤公墓</option>
								<option value="2">其他公墓</option>
							</select>
							<select>
								<option value="1">献花</option>
								<option value="2">上香</option>
								<option value="3">送灯</option>
							</select>
							<input type="text" value="请填写姓名" onfocus="this.value = '';"
							       onblur="if (this.value == '') {this.value = '请填写姓名';}">
							<input type="text" value="请填写联系方式" onfocus="this.value = '';"
							       onblur="if (this.value == '') {this.value = '请填写联系方式';}">
							<input type="submit" style="float: right;margin-right:30px;" value="提交">
						</form>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //news-and-events -->
		<!-- video-bottom-grids -->
		<div class="video-bottom-grids" style="background-color: #f9f9f9">
			<div class="video-bottom-grids1">
				<div class="col-md-3 video-bottom-grid">
					<div class="video-bottom-grid1">
						<div class="video-bottom-grid1-before">
							<div class="news-grid-left news-grid-left2">
								<h3>关于协会</h3>
								<a href="../association">更多</a>
							</div>
						</div>
						<ul>
							<li><a href="#">vel illum qui dolorem eum fugiat quo voluptas.</a></li>
							<li><a href="#">Itaque earum rerum hic tenetur a sapiente delectus.</a></li>
							<li><a href="#"> Neque porro quisquam est, qui dolor sit amet.</a></li>
							<li><a href="#">But I must explain to you how all this mistaken.</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 video-bottom-grid">
					<div class="video-bottom-grid1">
						<div class="video-bottom-grid1-before">
							<div class="news-grid-left news-grid-left2">
								<h3>绿色殡葬</h3>
								<a href="../greenStyle">更多</a>
							</div>
						</div>
						<ul>
							<li><a href="#">vel illum qui dolorem eum fugiat quo voluptas.</a></li>
							<li><a href="#">Itaque earum rerum hic tenetur a sapiente delectus.</a></li>
							<li><a href="#"> Neque porro quisquam est, qui dolor sit amet.</a></li>
							<li><a href="#">But I must explain to you how all this mistaken.</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 video-bottom-grid">
					<div class="video-bottom-grid1">
						<div class="video-bottom-grid1-before">
							<div class="news-grid-left news-grid-left2">
								<h3>殡葬传统文化</h3>
								<a href="../traditionStyle">更多</a>
							</div>
						</div>
						<ul>
							<li><a href="#">vel illum qui dolorem eum fugiat quo voluptas.</a></li>
							<li><a href="#">Itaque earum rerum hic tenetur a sapiente delectus.</a></li>
							<li><a href="#"> Neque porro quisquam est, qui dolor sit amet.</a></li>
							<li><a href="#">But I must explain to you how all this mistaken.</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 video-bottom-grid">
					<div class="video-bottom-grid1">
						<div class="video-bottom-grid1-before">
							<div class="news-grid-left news-grid-left2">
								<h3>行业规范</h3>
								<a href="../professionStyle">更多</a>
							</div>
						</div>
						<ul>
							<li><a href="#">vel illum qui dolorem eum fugiat quo voluptas.</a></li>
							<li><a href="#">Itaque earum rerum hic tenetur a sapiente delectus.</a></li>
							<li><a href="#"> Neque porro quisquam est, qui dolor sit amet.</a></li>
							<li><a href="#">But I must explain to you how all this mistaken.</a></li>
						</ul>
					</div>
				</div>
				<!--<div class="col-md-3 video-bottom-grid">-->
				<!--<div class="video-bottom-grid1">-->
				<!--<div class="video-bottom-grid1-before before3">-->
				<!--<img src="../images/16.jpg" alt=" " class="img-responsive" />-->
				<!--<div class="video-bottom-grid1-pos">-->
				<!--<p>Lorem ipsum dolor sit amet adipiscing. </p>-->
				<!--</div>-->
				<!--</div>-->
				<!--<ul class="list2">-->
				<!--<li><a href="#">vel illum qui dolorem eum fugiat quo voluptas.</a></li>-->
				<!--<li><a href="#">Itaque earum rerum hic tenetur a sapiente delectus.</a></li>-->
				<!--<li><a href="#"> Neque porro quisquam est, qui dolor sit amet.</a></li>-->
				<!--<li><a href="#">But I must explain to you how all this mistaken.</a></li>-->
				<!--</ul>-->
				<!--<div class="read-more res2">-->
				<!--<a href="">Read more in Blogger</a>-->
				<!--</div>-->
				<!--</div>-->
				<!--</div>-->
				<div class="clearfix"></div>
			</div>

		</div>

		<div class="banner-bottom-grids">
			<div class="container col-md-12 news-grid-left" style="margin-top:20px;margin-bottom:20px;">
				<h3>会员单位</h3>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="banner-bottom-grids" style="margin-top: 20px">
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 banner-bottom-grid-left">
				<div class="br-bm-gd-lt">
					<div class="overlay">
						<div class="arrow-left"></div>
						<div class="rectangle"></div>
					</div>
					<div class="health-pos">
						<div class="health">
							<ul>
								<li>
									<a href="">产品列表</a>
									<a href="">收费标准</a>
								</li>
							</ul>
						</div>
						<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
						<div class="dummy">
							<p>这里是世俗喧嚣的终结，这里是理想的世外桃源，这里是人生理想的后花园，这就是作为逝者长眠之地、生者祭祀追源之所的大庆市龙凤公墓</p>
							<div class="health"
							     style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
								<a href="">大庆市龙凤公墓</a>
							</div>
						</div>
						<div class="com-heart">
							<ul>
								<li>
									<a href="#">龙凤公墓</a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="footer" style="text-align: center;margin-top: 25px">
		<p>技术提供者：大庆市殡葬协会</p>
	</div>
</div>
<!-- //banner-bottom -->

<!-- for bootstrap working -->
<script src="../js/bootstrap.js"></script>
<!-- //for bootstrap working -->

</body>
</html>