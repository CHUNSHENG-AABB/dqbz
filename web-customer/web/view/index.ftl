<html>
<head>
	<title>大庆市殡葬协会</title>
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
					<img src="../images/door1.jpg">
				</li>
				<li>
					<img src="../images/door2.jpg">
				</li>
				<li>
					<img src="../images/door3.jpg">
				</li>
				<li>
					<img src="../images/door4.jpg">
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
            <div class="col-md-8 news-grid-left" style="background-color: #f9f9f9">
                <div class="news-grid-left news-grid-left2">
                    <h3>视频资料</h3>
                    <a href="#" style="font-size: 1em">更多</a>
                </div>
				<video src="http://www.w3school.com.cn/i/movie.ogg" controls="controls" id="mainVideo" style="width: 100%;"></video>
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
								<#list entity.activities_doing as activities_doing>
                                    <div class="facts">
                                        <div class="tab_list">
											${activities_doing.cover}
                                        </div>
                                        <div class="tab_list1">
                                            <ul>
                                                <li><a href="/activityDetail?id=${activities_doing.id}">${activities_doing.title}</a> <label></label></li>
                                                <li>开始时间：${activities_doing.beginTime?string('yyyy-MM-dd')}</li>
                                                <li>结束时间：${activities_doing.endTime?string('yyyy-MM-dd')}</li>
                                            </ul>
                                            <p><a href="#">${activities_doing.introduction}</a></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
								</#list>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<#list entity.activities_ended as activities_ended>
                                <div class="facts">
                                    <div class="tab_list">
										${activities_ended.cover}
                                    </div>
                                    <div class="tab_list1">
                                        <ul>
                                            <li><a href="/activityDetail?id=${activities_ended.id}">${activities_ended.title}</a> <label></label></li>
                                            <li>开始时间：${activities_ended.beginTime?string('yyyy-MM-dd')}</li>
                                            <li>结束时间：${activities_ended.endTime?string('yyyy-MM-dd')}</li>
                                        </ul>
                                        <p><a href="#">${activities_ended.introduction}</a></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
							</#list>
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
                    <div class="news-grid-left news-grid-left2">
                        <h3>新闻资讯</h3>
                        <a href="news" style="font-size: 1em">更多</a>
                    </div>
					<ul>
						<#list entity.news as new>
                            <li>
                                <div class="news-grid-right1" style="float: left;width: 700px;margin-top: 0.5em">
                                    <h4><a href="/newDetail?newId=${new.id}">${new.title}</a></h4>
									<div style="float: right">${new.inputTime?string('yyyy-MM-dd HH:mm:ss')}</div>
                                </div>
                                <div class="clearfix"></div>
                            </li>
						</#list>
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


		<div class="banner-bottom-grids">
			<div class="container col-md-12 news-grid-left" style="margin-top:20px;margin-bottom:20px;">
				<h3>会员单位</h3>
			</div>

			<#list entity.members as member>

				<div class="col-md-3 banner-bottom-grid-left" style="background:url(../images/gz.jpg) no-repeat 0px 0px;padding-left:0px;margin-top: 1em;">
					<div class="br-bm-gd-lt" style="width: 255px;">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li>
										<a href="../memberDetail?id=${member.id}&page=product">产品列表</a>
										<a href="../memberDetail?id=${member.id}&page=service">收费标准</a>
									</li>
								</ul>
							</div>
							<p style="text-align: center;font-style: inherit;color: white">&nbsp;</p>
							<div class="dummy">
								<p>${member.introduction}</p>
								<div class="health"
									 style="text-align: center;background-color: #5e5e5e;padding: 0.5em 0 0.5em 0;margin-top: 10px; ">
									<a href="../memberDetail?id=${member.id}&page=home">${member.name}</a>
								</div>
							</div>
							<div class="com-heart">
								<ul>
									<li>
										<a href="../memberDetail?id=${member.id}&page=home">${member.name}</a>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>

			</#list>


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