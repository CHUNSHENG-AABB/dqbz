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
    <#--<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>-->
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




            <div class="col-md-8 news-grid-left" style="width: 100%;">
                <h3>会员单位列表</h3>
                <ul>

                    <#list members as member>

                        <li>
                            <div class="news-grid-left1">
                                ${member.cover}
                                <#--<img src="${member.cover}" alt=" " class="img-responsive"/>-->
                            </div>
                            <div class="news-grid-right1">
                                <h4><a href="../memberDetail?id=${member.id}&page=home">${member.name}</a></h4>
                                <p>${member.introduction}</p>
                            </div>
                            <div class="clearfix"></div>
                        </li>

                    </#list>

                </ul>
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