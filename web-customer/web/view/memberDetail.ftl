<!DOCTYPE HTML>
<html>
<head>
    <title>News & Events</title>
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

    <script type="text/javascript">
        function loadPage(pageLink) {
            $("#content").html(null);
            $("#content").load(pageLink);
        }
    </script>

</head>

<body>
<!-- banner -->
<div class="banner1">
<#include "header.ftl"/>
</div>
<!-- //banner -->
<!-- news-and-events -->
<div class="news-and-events" style="padding-top: 0px;">
    <div class="container">

        <div class="upcoming-events-grids" style="margin-top: 0px;">


            <div class="col-md-4 upcoming-events-right" style="padding-left: 0px; width: 25%">
                <h3>${member.name}</h3>
                <div class="banner-bottom-video-grid-left">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="/memberDetail?id=${member.id}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>简介</a>
			                    </h4>
		                    </div>
	                    </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a href="#" onclick="loadPage('/product?memberId=${member.id}');"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>产品介绍及价格</a>
                                </h4>
                            </div>
                        </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="#" onclick="loadPage('/service?memberId=${member.id}');"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>服务及收费标准</a>
			                    </h4>
		                    </div>
	                    </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href=""><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>宣传展示</a>
			                    </h4>
		                    </div>
	                    </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="#" onclick="loadPage('/contact?memberId=${member.id}');"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>联系电话</a>
			                    </h4>
		                    </div>
	                    </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="#" onclick="loadPage('/notice?memberId=${member.id}')"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>通知公告</a>
			                    </h4>
		                    </div>
	                    </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="collapseFour">
			                    <h4 class="panel-title">
				                    <a href=""><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>网上祭祀</a>
			                    </h4>
		                    </div>
	                    </div>
                    </div>
                </div>
            </div>

            <div class="col-md-8 news-grid-left" style="width: 75%; padding-right: 0px; background-color: #f9f9f9">
                <h3></h3>
               <div id="content">
				   ${member.content}
			   </div>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!-- //news-and-events -->
<!-- footer -->

<!-- //footer -->
<!-- for bootstrap working -->
<script src="../js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>