﻿﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addInformation')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateNews()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteNews()" id="deleteRecord" value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-5" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">资讯标题</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">发布时间</div>
		</div>

		<#list newsList as news>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value='${news.id}'></input>
                </div>
                <div class="col-md-5" style="border:1px solid black;font-size: 16px; text-align: center">${news.title}</div>
                <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${news.updateTime?string("yyyy-MM-dd HH:mm:ss")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateNews(){
        var newsID = $('input:radio:checked').val();
		if(newsID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getInformationByID?newsID='+newsID);
	}

    function deleteNews(){
        var newsID = $('input:radio:checked').val();
        var json = JSON.stringify({"newsID":newsID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteNewsByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(newsID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('informationList');
            },
            error: function(result) {
                alert(result);
                console.log(result);
            }
        });

    }
</script>

<script type="text/javascript">
    function loadPage(pageLink) {
        $("#page-inner").html(null);
        $("#page-inner").load(pageLink);
    }
</script>