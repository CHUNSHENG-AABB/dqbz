<!DOCTYPE HTML>
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
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
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
                <h3>关于协会</h3>
                <div class="banner-bottom-video-grid-left">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="/association"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>协会简介</a>
			                    </h4>
		                    </div>
	                    </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="/constitution"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>协会章程</a>
			                    </h4>
		                    </div>
	                    </div>
	                    <div class="panel panel-default">
		                    <div class="panel-heading" role="tab" id="headingTwo">
			                    <h4 class="panel-title">
				                    <a href="../members"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>组织机构</a>
			                    </h4>
		                    </div>
	                    </div>
                    </div>
                </div>
            </div>


            <div class="col-md-8 news-grid-left" style="width: 75%; padding-right: 0px; background-color: #f9f9f9">
                <h3>协会章程</h3>
                <div>
                    ${constitution.content}
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