﻿﻿<div id="container">
    <form class="form-inline" action="" method="POST">

        <div style="margin-bottom: 70px">
            <label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
            <#--<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addSirPage?type=${map.type}')" value="新增">-->
            <input type="button" class="form-control" style="margin-left: 10px" onclick="updateRecord()" value="保存">
            <#--<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteRecord()"  value="删除">-->
        </div>

        <div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
			<div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">单位名称</div>
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">服务名称</div>
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">顾客姓名</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">手机号码</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">提交时间</div>
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">状态</div>
        </div>

	<#list sweepList as sweep>
        <div class="container-fluid">
            <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
				<input type="radio" name="radio" value='${sweep.id}'></input>
            </div>
            <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${sweep.name}</div>
            <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">${sweep.sername}</div>
            <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">${sweep.cusname}</div>
            <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${sweep.phone}</div>
            <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${sweep.inputTime?string("yyyy-MM-dd HH:mm:ss")}</div>
            <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
				<select id="status" style="font-size: small">
					<option selected></option>
					<option value="1">未开始</option>
					<option value="2">进行中</option>
					<option value="3">已完成</option>
				</select>
            </div>
        </div>
	</#list>

    </form>
</div>
<script type="text/javascript">

    function updateRecord(){
        var sweepID = $('input:radio:checked').val();

        if(sweepID == null){
            alert("请选择要修改的记录！");
            $.abort();
        }
        var json = JSON.stringify({"sweepID":sweepID,"status":$("#status").val()});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/updateSweep",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(sweepID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('sweepList');
            },
            error: function(result) {
                alert(result);
                console.log(result);
            }
        });
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