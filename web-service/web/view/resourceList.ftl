﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addResourcePage?type=${map.type}')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateRecord()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteRecord()"  value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">所属单位</div>
            <div class="col-md-5" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">视频标题</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">修改时间</div>
		</div>

		<#list map.resourceList as resource>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value='${resource.id}'></input>
                </div>
                <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${resource.name}</div>
                <div class="col-md-5" style="border:1px solid black;font-size: 16px; text-align: center">${resource.title}</div>
                <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${resource.updateTime?string("yyyy-MM-dd HH:mm:ss")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateRecord(){
        var resourceID = $('input:radio:checked').val();
		if(resourceID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getResourceByID?resourceID='+resourceID);
	}

    function deleteRecord(){
        var resourceID = $('input:radio:checked').val();
        var json = JSON.stringify({"resourceID":resourceID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteResourceByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(resourceID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('../resourceList?type=${map.type}');
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