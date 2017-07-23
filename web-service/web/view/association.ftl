<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
	<!-- Bootstrap Styles-->
    <link href="../css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="../css/font-awesome.css" rel="stylesheet" />
     <!-- Morris Chart Styles-->
    <link href="../js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="../css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

	<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8" src="../ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body>
    <div id="container">
	    <form class="form-inline" action="" method="POST">
		    <div class="form-group">
                <label>协会名称：</label>
			    <input type="text" class="form-control" value="">
		    </div>
            <div>
	            <#include "ueditor.ftl"/>
            </div>
	    </form>
    </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="../js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="../js/jquery.metisMenu.js"></script>
     <!-- Morris Chart Js -->
     <script src="../js/morris/raphael-2.1.0.min.js"></script>
    <script src="../js/morris/morris.js"></script>
      <!-- Custom Js -->
    <script src="../js/custom-scripts.js"></script>
    
   
</body>
</html>
