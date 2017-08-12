<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="保存">
		</div>

		<div>
			<label>视频标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px" value='${resource.title}'>
		</div>

        <div style="margin-top: 20px">
            <label>所属单位：</label>
            <input type="text" id="memberID" class="form-control" style="width: 200px" value='${resource.name}' readonly="true">
        </div>

		<div style="margin-top: 20px">
			<label>视频连接：</label>
            <input type="text" id="videoUrl" class="form-control" style="width: 600px" value='${resource.url}'>
		</div>

        <div style="margin-top: 20px">
            <embed src='${resource.url}' quality="high" width="480" height="400" align="left" allowScriptAccess="sameDomain" type="application/x-shockwave-flash"></embed>
        </div>

	</form>
</div>
<script type="text/javascript">

	function addRecord() {
		var title = $("#title").val();
		var json = JSON.stringify({"resourceID":'${resource.id}',"title":title,"videoUrl":$("#videoUrl").val(),"type":'${resource.type}',"content":""});
		$.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/updateResource",
            data: json,
            dataType:'json',
            beforeSend: function () {

            },
        	success: function (result) {
            	alert(result['key']);
                loadPage('../resourceList?type=${resource.type}');
        	},
        	error: function (result) {
				alert(result);
				console.log(result);
			}

		});
    }
</script>