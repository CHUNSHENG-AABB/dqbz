<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="保存">
		</div>

		<div>
			<label>视频标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px">
		</div>

        <div style="margin-top: 20px">
            <label>所属单位：</label>
            <select id="memberID" class="form-control">
			<#list map.memberList as member>
                <option value='${member.id}'>${member.name}</option>
			</#list>
            </select>
        </div>

		<div style="margin-top: 20px">
			<label>视频连接：</label>
            <input type="text" id="videoUrl" class="form-control" style="width: 600px">
		</div>

	</form>
</div>
<script type="text/javascript">

	function addRecord() {
		var title = $("#title").val();
		var json = JSON.stringify({"title":title,"memberID":$("#memberID").val(),"videoUrl":$("#videoUrl").val(),"type":'${map.type}',"content":""});
		$.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/addResource",
            data: json,
            dataType:'json',
            beforeSend: function () {

            },
        	success: function (result) {
            	alert(result['key']);
                loadPage('../resourceList?type=${map.type}');
        	},
        	error: function (result) {
				alert(result);
				console.log(result);
			}

		});
    }
</script>