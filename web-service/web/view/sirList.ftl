﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addSirPage?type=${map.type}')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateRecord()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteRecord()"  value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-5" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">名称</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">修改时间</div>
		</div>

		<#list map.sirList as sir>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value='${sir.id}'></input>
                </div>
                <div class="col-md-5" style="border:1px solid black;font-size: 16px; text-align: center">${sir.name}</div>
                <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${sir.updateTime?string("yyyy-MM-dd HH:mm:ss")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateRecord(){
        var sirID = $('input:radio:checked').val();
		if(sirID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getSirByID?SirID='+sirID);
	}

    function deleteRecord(){
        var sirID = $('input:radio:checked').val();
        var json = JSON.stringify({"SirID":sirID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteSirByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(sirID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('sirList?type=${map.type}');
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