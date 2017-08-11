﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addActivityPage')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateActivity()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteActivity()" value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-5" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">动态标题</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">开始时间</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">结束时间</div>
		</div>

		<#list ActivityList as Activity>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value='${Activity.id}'></input>
                </div>
                <div class="col-md-5" style="border:1px solid black;font-size: 16px; text-align: center">${Activity.title}</div>
                <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${Activity.inputTime?string("yyyy-MM-dd HH:mm")}</div>
                <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${Activity.updateTime?string("yyyy-MM-dd HH:mm")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateActivity(){
        var ActivityID = $('input:radio:checked').val();
		if(ActivityID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getActivityByID?ActivityID='+ActivityID);
	}

    function deleteActivity(){
        var ActivityID = $('input:radio:checked').val();
        var json = JSON.stringify({"ActivityID":ActivityID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteActivityByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(ActivityID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('ActivityList');
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