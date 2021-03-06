﻿﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addMemberPage')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateNews()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteNews()" value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-5" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">协会名称</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">修改时间</div>
		</div>

		<#list memberList as member>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value='${member.id}'></input>
                </div>
                <div class="col-md-5" style="border:1px solid black;font-size: 16px; text-align: center">${member.name}</div>
                <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${member.updateTime?string("yyyy-MM-dd HH:mm:ss")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateNews(){
        var memberID = $('input:radio:checked').val();
		if(memberID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getMemberByID?memberID='+memberID);
	}

    function deleteNews(){
        var memberID = $('input:radio:checked').val();
        var json = JSON.stringify({"memberID":memberID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteMemberByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(memberID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('memberList');
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